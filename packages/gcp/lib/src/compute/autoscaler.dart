import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaler_args.dart';
import 'autoscaler_autoscaling_policy.dart';

/// Represents an Autoscaler resource.
///
/// Autoscalers allow you to automatically scale virtual machine instances in
/// managed instance groups according to an autoscaling policy that you
/// define.
///
///
/// To get more information about Autoscaler, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/autoscalers)
/// * How-to Guides
/// * [Autoscaling Groups of Instances](https://cloud.google.com/compute/docs/autoscaler/)
///
/// ## Example Usage
///
/// ### Autoscaler Single Instance
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const debian9 = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// const defaultInstanceTemplate = new gcp.compute.InstanceTemplate("default", {
///     name: "my-instance-template",
///     machineType: "e2-medium",
///     canIpForward: false,
///     tags: [
///         "foo",
///         "bar",
///     ],
///     disks: [{
///         sourceImage: debian9.then(debian9 => debian9.id),
///     }],
///     networkInterfaces: [{
///         network: "default",
///     }],
///     metadata: {
///         foo: "bar",
///     },
///     serviceAccount: {
///         scopes: [
///             "userinfo-email",
///             "compute-ro",
///             "storage-ro",
///         ],
///     },
/// });
/// const defaultTargetPool = new gcp.compute.TargetPool("default", {name: "my-target-pool"});
/// const defaultInstanceGroupManager = new gcp.compute.InstanceGroupManager("default", {
///     name: "my-igm",
///     zone: "us-central1-f",
///     versions: [{
///         instanceTemplate: defaultInstanceTemplate.id,
///         name: "primary",
///     }],
///     targetPools: [defaultTargetPool.id],
///     baseInstanceName: "autoscaler-sample",
/// });
/// const _default = new gcp.compute.Autoscaler("default", {
///     name: "my-autoscaler",
///     zone: "us-central1-f",
///     target: defaultInstanceGroupManager.id,
///     autoscalingPolicy: {
///         maxReplicas: 5,
///         minReplicas: 1,
///         cooldownPeriod: 60,
///         metrics: [{
///             name: "pubsub.googleapis.com/subscription/num_undelivered_messages",
///             filter: "resource.type = pubsub_subscription AND resource.label.subscription_id = our-subscription",
///             singleInstanceAssignment: 65535,
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// debian9 = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// default_instance_template = gcp.compute.InstanceTemplate("default",
///     name="my-instance-template",
///     machine_type="e2-medium",
///     can_ip_forward=False,
///     tags=[
///         "foo",
///         "bar",
///     ],
///     disks=[{
///         "source_image": debian9.id,
///     }],
///     network_interfaces=[{
///         "network": "default",
///     }],
///     metadata={
///         "foo": "bar",
///     },
///     service_account={
///         "scopes": [
///             "userinfo-email",
///             "compute-ro",
///             "storage-ro",
///         ],
///     })
/// default_target_pool = gcp.compute.TargetPool("default", name="my-target-pool")
/// default_instance_group_manager = gcp.compute.InstanceGroupManager("default",
///     name="my-igm",
///     zone="us-central1-f",
///     versions=[{
///         "instance_template": default_instance_template.id,
///         "name": "primary",
///     }],
///     target_pools=[default_target_pool.id],
///     base_instance_name="autoscaler-sample")
/// default = gcp.compute.Autoscaler("default",
///     name="my-autoscaler",
///     zone="us-central1-f",
///     target=default_instance_group_manager.id,
///     autoscaling_policy={
///         "max_replicas": 5,
///         "min_replicas": 1,
///         "cooldown_period": 60,
///         "metrics": [{
///             "name": "pubsub.googleapis.com/subscription/num_undelivered_messages",
///             "filter": "resource.type = pubsub_subscription AND resource.label.subscription_id = our-subscription",
///             "single_instance_assignment": 65535,
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var debian9 = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
///     var defaultInstanceTemplate = new Gcp.Compute.InstanceTemplate("default", new()
///     {
///         Name = "my-instance-template",
///         MachineType = "e2-medium",
///         CanIpForward = false,
///         Tags = new[]
///         {
///             "foo",
///             "bar",
///         },
///         Disks = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
///             {
///                 SourceImage = debian9.Apply(getImageResult => getImageResult.Id),
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateNetworkInterfaceArgs
///             {
///                 Network = "default",
///             },
///         },
///         Metadata =
///         {
///             { "foo", "bar" },
///         },
///         ServiceAccount = new Gcp.Compute.Inputs.InstanceTemplateServiceAccountArgs
///         {
///             Scopes = new[]
///             {
///                 "userinfo-email",
///                 "compute-ro",
///                 "storage-ro",
///             },
///         },
///     });
///
///     var defaultTargetPool = new Gcp.Compute.TargetPool("default", new()
///     {
///         Name = "my-target-pool",
///     });
///
///     var defaultInstanceGroupManager = new Gcp.Compute.InstanceGroupManager("default", new()
///     {
///         Name = "my-igm",
///         Zone = "us-central1-f",
///         Versions = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceGroupManagerVersionArgs
///             {
///                 InstanceTemplate = defaultInstanceTemplate.Id,
///                 Name = "primary",
///             },
///         },
///         TargetPools = new[]
///         {
///             defaultTargetPool.Id,
///         },
///         BaseInstanceName = "autoscaler-sample",
///     });
///
///     var @default = new Gcp.Compute.Autoscaler("default", new()
///     {
///         Name = "my-autoscaler",
///         Zone = "us-central1-f",
///         Target = defaultInstanceGroupManager.Id,
///         AutoscalingPolicy = new Gcp.Compute.Inputs.AutoscalerAutoscalingPolicyArgs
///         {
///             MaxReplicas = 5,
///             MinReplicas = 1,
///             CooldownPeriod = 60,
///             Metrics = new[]
///             {
///                 new Gcp.Compute.Inputs.AutoscalerAutoscalingPolicyMetricArgs
///                 {
///                     Name = "pubsub.googleapis.com/subscription/num_undelivered_messages",
///                     Filter = "resource.type = pubsub_subscription AND resource.label.subscription_id = our-subscription",
///                     SingleInstanceAssignment = 65535,
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		debian9, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstanceTemplate, err := compute.NewInstanceTemplate(ctx, "default", &compute.InstanceTemplateArgs{
/// 			Name:         pulumi.String("my-instance-template"),
/// 			MachineType:  pulumi.String("e2-medium"),
/// 			CanIpForward: pulumi.Bool(false),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("foo"),
/// 				pulumi.String("bar"),
/// 			},
/// 			Disks: compute.InstanceTemplateDiskArray{
/// 				&compute.InstanceTemplateDiskArgs{
/// 					SourceImage: pulumi.String(debian9.Id),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.InstanceTemplateNetworkInterfaceArray{
/// 				&compute.InstanceTemplateNetworkInterfaceArgs{
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 			Metadata: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			ServiceAccount: &compute.InstanceTemplateServiceAccountArgs{
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("userinfo-email"),
/// 					pulumi.String("compute-ro"),
/// 					pulumi.String("storage-ro"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTargetPool, err := compute.NewTargetPool(ctx, "default", &compute.TargetPoolArgs{
/// 			Name: pulumi.String("my-target-pool"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstanceGroupManager, err := compute.NewInstanceGroupManager(ctx, "default", &compute.InstanceGroupManagerArgs{
/// 			Name: pulumi.String("my-igm"),
/// 			Zone: pulumi.String("us-central1-f"),
/// 			Versions: compute.InstanceGroupManagerVersionArray{
/// 				&compute.InstanceGroupManagerVersionArgs{
/// 					InstanceTemplate: defaultInstanceTemplate.ID(),
/// 					Name:             pulumi.String("primary"),
/// 				},
/// 			},
/// 			TargetPools: pulumi.StringArray{
/// 				defaultTargetPool.ID(),
/// 			},
/// 			BaseInstanceName: pulumi.String("autoscaler-sample"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewAutoscaler(ctx, "default", &compute.AutoscalerArgs{
/// 			Name:   pulumi.String("my-autoscaler"),
/// 			Zone:   pulumi.String("us-central1-f"),
/// 			Target: defaultInstanceGroupManager.ID(),
/// 			AutoscalingPolicy: &compute.AutoscalerAutoscalingPolicyArgs{
/// 				MaxReplicas:    pulumi.Int(5),
/// 				MinReplicas:    pulumi.Int(1),
/// 				CooldownPeriod: pulumi.Int(60),
/// 				Metrics: compute.AutoscalerAutoscalingPolicyMetricArray{
/// 					&compute.AutoscalerAutoscalingPolicyMetricArgs{
/// 						Name:                     pulumi.String("pubsub.googleapis.com/subscription/num_undelivered_messages"),
/// 						Filter:                   pulumi.String("resource.type = pubsub_subscription AND resource.label.subscription_id = our-subscription"),
/// 						SingleInstanceAssignment: pulumi.Float64(65535),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateServiceAccountArgs;
/// import com.pulumi.gcp.compute.TargetPool;
/// import com.pulumi.gcp.compute.TargetPoolArgs;
/// import com.pulumi.gcp.compute.InstanceGroupManager;
/// import com.pulumi.gcp.compute.InstanceGroupManagerArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceGroupManagerVersionArgs;
/// import com.pulumi.gcp.compute.Autoscaler;
/// import com.pulumi.gcp.compute.AutoscalerArgs;
/// import com.pulumi.gcp.compute.inputs.AutoscalerAutoscalingPolicyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var debian9 = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///         var defaultInstanceTemplate = new InstanceTemplate("defaultInstanceTemplate", InstanceTemplateArgs.builder()
///             .name("my-instance-template")
///             .machineType("e2-medium")
///             .canIpForward(false)
///             .tags(
///                 "foo",
///                 "bar")
///             .disks(InstanceTemplateDiskArgs.builder()
///                 .sourceImage(debian9.id())
///                 .build())
///             .networkInterfaces(InstanceTemplateNetworkInterfaceArgs.builder()
///                 .network("default")
///                 .build())
///             .metadata(Map.of("foo", "bar"))
///             .serviceAccount(InstanceTemplateServiceAccountArgs.builder()
///                 .scopes(
///                     "userinfo-email",
///                     "compute-ro",
///                     "storage-ro")
///                 .build())
///             .build());
///
///         var defaultTargetPool = new TargetPool("defaultTargetPool", TargetPoolArgs.builder()
///             .name("my-target-pool")
///             .build());
///
///         var defaultInstanceGroupManager = new InstanceGroupManager("defaultInstanceGroupManager", InstanceGroupManagerArgs.builder()
///             .name("my-igm")
///             .zone("us-central1-f")
///             .versions(InstanceGroupManagerVersionArgs.builder()
///                 .instanceTemplate(defaultInstanceTemplate.id())
///                 .name("primary")
///                 .build())
///             .targetPools(defaultTargetPool.id())
///             .baseInstanceName("autoscaler-sample")
///             .build());
///
///         var default_ = new Autoscaler("default", AutoscalerArgs.builder()
///             .name("my-autoscaler")
///             .zone("us-central1-f")
///             .target(defaultInstanceGroupManager.id())
///             .autoscalingPolicy(AutoscalerAutoscalingPolicyArgs.builder()
///                 .maxReplicas(5)
///                 .minReplicas(1)
///                 .cooldownPeriod(60)
///                 .metrics(AutoscalerAutoscalingPolicyMetricArgs.builder()
///                     .name("pubsub.googleapis.com/subscription/num_undelivered_messages")
///                     .filter("resource.type = pubsub_subscription AND resource.label.subscription_id = our-subscription")
///                     .singleInstanceAssignment(65535.0)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Autoscaler
///     properties:
///       name: my-autoscaler
///       zone: us-central1-f
///       target: ${defaultInstanceGroupManager.id}
///       autoscalingPolicy:
///         maxReplicas: 5
///         minReplicas: 1
///         cooldownPeriod: 60
///         metrics:
///           - name: pubsub.googleapis.com/subscription/num_undelivered_messages
///             filter: resource.type = pubsub_subscription AND resource.label.subscription_id = our-subscription
///             singleInstanceAssignment: 65535
///   defaultInstanceTemplate:
///     type: gcp:compute:InstanceTemplate
///     name: default
///     properties:
///       name: my-instance-template
///       machineType: e2-medium
///       canIpForward: false
///       tags:
///         - foo
///         - bar
///       disks:
///         - sourceImage: ${debian9.id}
///       networkInterfaces:
///         - network: default
///       metadata:
///         foo: bar
///       serviceAccount:
///         scopes:
///           - userinfo-email
///           - compute-ro
///           - storage-ro
///   defaultTargetPool:
///     type: gcp:compute:TargetPool
///     name: default
///     properties:
///       name: my-target-pool
///   defaultInstanceGroupManager:
///     type: gcp:compute:InstanceGroupManager
///     name: default
///     properties:
///       name: my-igm
///       zone: us-central1-f
///       versions:
///         - instanceTemplate: ${defaultInstanceTemplate.id}
///           name: primary
///       targetPools:
///         - ${defaultTargetPool.id}
///       baseInstanceName: autoscaler-sample
/// variables:
///   debian9:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-11
///         project: debian-cloud
/// ```
///
/// ### Autoscaler Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const debian9 = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// const foobarInstanceTemplate = new gcp.compute.InstanceTemplate("foobar", {
///     name: "my-instance-template",
///     machineType: "e2-medium",
///     canIpForward: false,
///     tags: [
///         "foo",
///         "bar",
///     ],
///     disks: [{
///         sourceImage: debian9.then(debian9 => debian9.id),
///     }],
///     networkInterfaces: [{
///         network: "default",
///     }],
///     metadata: {
///         foo: "bar",
///     },
///     serviceAccount: {
///         scopes: [
///             "userinfo-email",
///             "compute-ro",
///             "storage-ro",
///         ],
///     },
/// });
/// const foobarTargetPool = new gcp.compute.TargetPool("foobar", {name: "my-target-pool"});
/// const foobarInstanceGroupManager = new gcp.compute.InstanceGroupManager("foobar", {
///     name: "my-igm",
///     zone: "us-central1-f",
///     versions: [{
///         instanceTemplate: foobarInstanceTemplate.id,
///         name: "primary",
///     }],
///     targetPools: [foobarTargetPool.id],
///     baseInstanceName: "foobar",
/// });
/// const foobar = new gcp.compute.Autoscaler("foobar", {
///     name: "my-autoscaler",
///     zone: "us-central1-f",
///     target: foobarInstanceGroupManager.id,
///     autoscalingPolicy: {
///         maxReplicas: 5,
///         minReplicas: 1,
///         cooldownPeriod: 60,
///         cpuUtilization: {
///             target: 0.5,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// debian9 = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// foobar_instance_template = gcp.compute.InstanceTemplate("foobar",
///     name="my-instance-template",
///     machine_type="e2-medium",
///     can_ip_forward=False,
///     tags=[
///         "foo",
///         "bar",
///     ],
///     disks=[{
///         "source_image": debian9.id,
///     }],
///     network_interfaces=[{
///         "network": "default",
///     }],
///     metadata={
///         "foo": "bar",
///     },
///     service_account={
///         "scopes": [
///             "userinfo-email",
///             "compute-ro",
///             "storage-ro",
///         ],
///     })
/// foobar_target_pool = gcp.compute.TargetPool("foobar", name="my-target-pool")
/// foobar_instance_group_manager = gcp.compute.InstanceGroupManager("foobar",
///     name="my-igm",
///     zone="us-central1-f",
///     versions=[{
///         "instance_template": foobar_instance_template.id,
///         "name": "primary",
///     }],
///     target_pools=[foobar_target_pool.id],
///     base_instance_name="foobar")
/// foobar = gcp.compute.Autoscaler("foobar",
///     name="my-autoscaler",
///     zone="us-central1-f",
///     target=foobar_instance_group_manager.id,
///     autoscaling_policy={
///         "max_replicas": 5,
///         "min_replicas": 1,
///         "cooldown_period": 60,
///         "cpu_utilization": {
///             "target": 0.5,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var debian9 = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
///     var foobarInstanceTemplate = new Gcp.Compute.InstanceTemplate("foobar", new()
///     {
///         Name = "my-instance-template",
///         MachineType = "e2-medium",
///         CanIpForward = false,
///         Tags = new[]
///         {
///             "foo",
///             "bar",
///         },
///         Disks = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
///             {
///                 SourceImage = debian9.Apply(getImageResult => getImageResult.Id),
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateNetworkInterfaceArgs
///             {
///                 Network = "default",
///             },
///         },
///         Metadata =
///         {
///             { "foo", "bar" },
///         },
///         ServiceAccount = new Gcp.Compute.Inputs.InstanceTemplateServiceAccountArgs
///         {
///             Scopes = new[]
///             {
///                 "userinfo-email",
///                 "compute-ro",
///                 "storage-ro",
///             },
///         },
///     });
///
///     var foobarTargetPool = new Gcp.Compute.TargetPool("foobar", new()
///     {
///         Name = "my-target-pool",
///     });
///
///     var foobarInstanceGroupManager = new Gcp.Compute.InstanceGroupManager("foobar", new()
///     {
///         Name = "my-igm",
///         Zone = "us-central1-f",
///         Versions = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceGroupManagerVersionArgs
///             {
///                 InstanceTemplate = foobarInstanceTemplate.Id,
///                 Name = "primary",
///             },
///         },
///         TargetPools = new[]
///         {
///             foobarTargetPool.Id,
///         },
///         BaseInstanceName = "foobar",
///     });
///
///     var foobar = new Gcp.Compute.Autoscaler("foobar", new()
///     {
///         Name = "my-autoscaler",
///         Zone = "us-central1-f",
///         Target = foobarInstanceGroupManager.Id,
///         AutoscalingPolicy = new Gcp.Compute.Inputs.AutoscalerAutoscalingPolicyArgs
///         {
///             MaxReplicas = 5,
///             MinReplicas = 1,
///             CooldownPeriod = 60,
///             CpuUtilization = new Gcp.Compute.Inputs.AutoscalerAutoscalingPolicyCpuUtilizationArgs
///             {
///                 Target = 0.5,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		debian9, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foobarInstanceTemplate, err := compute.NewInstanceTemplate(ctx, "foobar", &compute.InstanceTemplateArgs{
/// 			Name:         pulumi.String("my-instance-template"),
/// 			MachineType:  pulumi.String("e2-medium"),
/// 			CanIpForward: pulumi.Bool(false),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("foo"),
/// 				pulumi.String("bar"),
/// 			},
/// 			Disks: compute.InstanceTemplateDiskArray{
/// 				&compute.InstanceTemplateDiskArgs{
/// 					SourceImage: pulumi.String(debian9.Id),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.InstanceTemplateNetworkInterfaceArray{
/// 				&compute.InstanceTemplateNetworkInterfaceArgs{
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 			Metadata: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			ServiceAccount: &compute.InstanceTemplateServiceAccountArgs{
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("userinfo-email"),
/// 					pulumi.String("compute-ro"),
/// 					pulumi.String("storage-ro"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foobarTargetPool, err := compute.NewTargetPool(ctx, "foobar", &compute.TargetPoolArgs{
/// 			Name: pulumi.String("my-target-pool"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foobarInstanceGroupManager, err := compute.NewInstanceGroupManager(ctx, "foobar", &compute.InstanceGroupManagerArgs{
/// 			Name: pulumi.String("my-igm"),
/// 			Zone: pulumi.String("us-central1-f"),
/// 			Versions: compute.InstanceGroupManagerVersionArray{
/// 				&compute.InstanceGroupManagerVersionArgs{
/// 					InstanceTemplate: foobarInstanceTemplate.ID(),
/// 					Name:             pulumi.String("primary"),
/// 				},
/// 			},
/// 			TargetPools: pulumi.StringArray{
/// 				foobarTargetPool.ID(),
/// 			},
/// 			BaseInstanceName: pulumi.String("foobar"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewAutoscaler(ctx, "foobar", &compute.AutoscalerArgs{
/// 			Name:   pulumi.String("my-autoscaler"),
/// 			Zone:   pulumi.String("us-central1-f"),
/// 			Target: foobarInstanceGroupManager.ID(),
/// 			AutoscalingPolicy: &compute.AutoscalerAutoscalingPolicyArgs{
/// 				MaxReplicas:    pulumi.Int(5),
/// 				MinReplicas:    pulumi.Int(1),
/// 				CooldownPeriod: pulumi.Int(60),
/// 				CpuUtilization: &compute.AutoscalerAutoscalingPolicyCpuUtilizationArgs{
/// 					Target: pulumi.Float64(0.5),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateServiceAccountArgs;
/// import com.pulumi.gcp.compute.TargetPool;
/// import com.pulumi.gcp.compute.TargetPoolArgs;
/// import com.pulumi.gcp.compute.InstanceGroupManager;
/// import com.pulumi.gcp.compute.InstanceGroupManagerArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceGroupManagerVersionArgs;
/// import com.pulumi.gcp.compute.Autoscaler;
/// import com.pulumi.gcp.compute.AutoscalerArgs;
/// import com.pulumi.gcp.compute.inputs.AutoscalerAutoscalingPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.AutoscalerAutoscalingPolicyCpuUtilizationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var debian9 = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///         var foobarInstanceTemplate = new InstanceTemplate("foobarInstanceTemplate", InstanceTemplateArgs.builder()
///             .name("my-instance-template")
///             .machineType("e2-medium")
///             .canIpForward(false)
///             .tags(
///                 "foo",
///                 "bar")
///             .disks(InstanceTemplateDiskArgs.builder()
///                 .sourceImage(debian9.id())
///                 .build())
///             .networkInterfaces(InstanceTemplateNetworkInterfaceArgs.builder()
///                 .network("default")
///                 .build())
///             .metadata(Map.of("foo", "bar"))
///             .serviceAccount(InstanceTemplateServiceAccountArgs.builder()
///                 .scopes(
///                     "userinfo-email",
///                     "compute-ro",
///                     "storage-ro")
///                 .build())
///             .build());
///
///         var foobarTargetPool = new TargetPool("foobarTargetPool", TargetPoolArgs.builder()
///             .name("my-target-pool")
///             .build());
///
///         var foobarInstanceGroupManager = new InstanceGroupManager("foobarInstanceGroupManager", InstanceGroupManagerArgs.builder()
///             .name("my-igm")
///             .zone("us-central1-f")
///             .versions(InstanceGroupManagerVersionArgs.builder()
///                 .instanceTemplate(foobarInstanceTemplate.id())
///                 .name("primary")
///                 .build())
///             .targetPools(foobarTargetPool.id())
///             .baseInstanceName("foobar")
///             .build());
///
///         var foobar = new Autoscaler("foobar", AutoscalerArgs.builder()
///             .name("my-autoscaler")
///             .zone("us-central1-f")
///             .target(foobarInstanceGroupManager.id())
///             .autoscalingPolicy(AutoscalerAutoscalingPolicyArgs.builder()
///                 .maxReplicas(5)
///                 .minReplicas(1)
///                 .cooldownPeriod(60)
///                 .cpuUtilization(AutoscalerAutoscalingPolicyCpuUtilizationArgs.builder()
///                     .target(0.5)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: gcp:compute:Autoscaler
///     properties:
///       name: my-autoscaler
///       zone: us-central1-f
///       target: ${foobarInstanceGroupManager.id}
///       autoscalingPolicy:
///         maxReplicas: 5
///         minReplicas: 1
///         cooldownPeriod: 60
///         cpuUtilization:
///           target: 0.5
///   foobarInstanceTemplate:
///     type: gcp:compute:InstanceTemplate
///     name: foobar
///     properties:
///       name: my-instance-template
///       machineType: e2-medium
///       canIpForward: false
///       tags:
///         - foo
///         - bar
///       disks:
///         - sourceImage: ${debian9.id}
///       networkInterfaces:
///         - network: default
///       metadata:
///         foo: bar
///       serviceAccount:
///         scopes:
///           - userinfo-email
///           - compute-ro
///           - storage-ro
///   foobarTargetPool:
///     type: gcp:compute:TargetPool
///     name: foobar
///     properties:
///       name: my-target-pool
///   foobarInstanceGroupManager:
///     type: gcp:compute:InstanceGroupManager
///     name: foobar
///     properties:
///       name: my-igm
///       zone: us-central1-f
///       versions:
///         - instanceTemplate: ${foobarInstanceTemplate.id}
///           name: primary
///       targetPools:
///         - ${foobarTargetPool.id}
///       baseInstanceName: foobar
/// variables:
///   debian9:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-11
///         project: debian-cloud
/// ```
///
///
/// ## Import
///
/// Autoscaler can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/autoscalers/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Autoscaler can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/autoscaler:Autoscaler default projects/{{project}}/zones/{{zone}}/autoscalers/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/autoscaler:Autoscaler default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/autoscaler:Autoscaler default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/autoscaler:Autoscaler default {{name}}
/// ```
class Autoscaler extends pulumi.CustomResource {
  /// The configuration parameters for the autoscaling algorithm. You can
  /// define one or more of the policies for an autoscaler: cpuUtilization,
  /// customMetricUtilizations, and loadBalancingUtilization.
  /// If none of these are specified, the default will be to autoscale based
  /// on cpuUtilization to 0.6 or 60%.
  /// Structure is documented below.
  late final pulumi.Output<AutoscalerAutoscalingPolicy> autoscalingPolicy;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// Name of the resource. The name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// URL of the managed instance group that this autoscaler will scale.
  late final pulumi.Output<String> target;

  /// URL of the zone where the instance group resides.
  late final pulumi.Output<String> zone;

  /// Creates a new [Autoscaler].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Autoscaler]. {@macro pulumi_compute_autoscaler_autoscaler_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Autoscaler(
    String name, {
    AutoscalerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/autoscaler:Autoscaler',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.autoscalingPolicy = registerOutput<AutoscalerAutoscalingPolicy>(
      'autoscalingPolicy',
    );
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.target = registerOutput<String>('target');
    this.zone = registerOutput<String>('zone');
  }
}
