import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_lb_policies_args.dart';
import 'service_lb_policies_auto_capacity_drain.dart';
import 'service_lb_policies_failover_config.dart';
import 'service_lb_policies_isolation_config.dart';

/// ServiceLbPolicy holds global load balancing and traffic distribution configuration that can be applied to a BackendService.
///
/// To get more information about ServiceLbPolicies, see:
///
/// * [API documentation](https://cloud.google.com/service-mesh/docs/reference/network-services/rest/v1/projects.locations.serviceLbPolicies)
///
/// ## Example Usage
///
/// ### Network Services Service Lb Policies Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.ServiceLbPolicies("default", {
///     name: "my-lb-policy",
///     location: "global",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.ServiceLbPolicies("default",
///     name="my-lb-policy",
///     location="global")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkServices.ServiceLbPolicies("default", new()
///     {
///         Name = "my-lb-policy",
///         Location = "global",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkservices.NewServiceLbPolicies(ctx, "default", &networkservices.ServiceLbPoliciesArgs{
/// 			Name:     pulumi.String("my-lb-policy"),
/// 			Location: pulumi.String("global"),
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
/// import com.pulumi.gcp.networkservices.ServiceLbPolicies;
/// import com.pulumi.gcp.networkservices.ServiceLbPoliciesArgs;
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
///         var default_ = new ServiceLbPolicies("default", ServiceLbPoliciesArgs.builder()
///             .name("my-lb-policy")
///             .location("global")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:ServiceLbPolicies
///     properties:
///       name: my-lb-policy
///       location: global
/// ```
///
/// ### Network Services Service Lb Policies Advanced
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.ServiceLbPolicies("default", {
///     name: "my-lb-policy",
///     location: "global",
///     description: "my description",
///     loadBalancingAlgorithm: "SPRAY_TO_REGION",
///     autoCapacityDrain: {
///         enable: true,
///     },
///     failoverConfig: {
///         failoverHealthThreshold: 70,
///     },
///     labels: {
///         foo: "bar",
///     },
/// });
/// const defaultBackendService = new gcp.compute.BackendService("default", {
///     name: "my-lb-backend",
///     description: "my description",
///     loadBalancingScheme: "INTERNAL_SELF_MANAGED",
///     protocol: "HTTP",
///     serviceLbPolicy: pulumi.interpolate`//networkservices.googleapis.com/${_default.id}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.ServiceLbPolicies("default",
///     name="my-lb-policy",
///     location="global",
///     description="my description",
///     load_balancing_algorithm="SPRAY_TO_REGION",
///     auto_capacity_drain={
///         "enable": True,
///     },
///     failover_config={
///         "failover_health_threshold": 70,
///     },
///     labels={
///         "foo": "bar",
///     })
/// default_backend_service = gcp.compute.BackendService("default",
///     name="my-lb-backend",
///     description="my description",
///     load_balancing_scheme="INTERNAL_SELF_MANAGED",
///     protocol="HTTP",
///     service_lb_policy=default.id.apply(lambda id: f"//networkservices.googleapis.com/{id}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkServices.ServiceLbPolicies("default", new()
///     {
///         Name = "my-lb-policy",
///         Location = "global",
///         Description = "my description",
///         LoadBalancingAlgorithm = "SPRAY_TO_REGION",
///         AutoCapacityDrain = new Gcp.NetworkServices.Inputs.ServiceLbPoliciesAutoCapacityDrainArgs
///         {
///             Enable = true,
///         },
///         FailoverConfig = new Gcp.NetworkServices.Inputs.ServiceLbPoliciesFailoverConfigArgs
///         {
///             FailoverHealthThreshold = 70,
///         },
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
///     var defaultBackendService = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "my-lb-backend",
///         Description = "my description",
///         LoadBalancingScheme = "INTERNAL_SELF_MANAGED",
///         Protocol = "HTTP",
///         ServiceLbPolicy = @default.Id.Apply(id => $"//networkservices.googleapis.com/{id}"),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := networkservices.NewServiceLbPolicies(ctx, "default", &networkservices.ServiceLbPoliciesArgs{
/// 			Name:                   pulumi.String("my-lb-policy"),
/// 			Location:               pulumi.String("global"),
/// 			Description:            pulumi.String("my description"),
/// 			LoadBalancingAlgorithm: pulumi.String("SPRAY_TO_REGION"),
/// 			AutoCapacityDrain: &networkservices.ServiceLbPoliciesAutoCapacityDrainArgs{
/// 				Enable: pulumi.Bool(true),
/// 			},
/// 			FailoverConfig: &networkservices.ServiceLbPoliciesFailoverConfigArgs{
/// 				FailoverHealthThreshold: pulumi.Int(70),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("my-lb-backend"),
/// 			Description:         pulumi.String("my description"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_SELF_MANAGED"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			ServiceLbPolicy: _default.ID().ApplyT(func(id string) (string, error) {
/// 				return fmt.Sprintf("//networkservices.googleapis.com/%v", id), nil
/// 			}).(pulumi.StringOutput),
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
/// import com.pulumi.gcp.networkservices.ServiceLbPolicies;
/// import com.pulumi.gcp.networkservices.ServiceLbPoliciesArgs;
/// import com.pulumi.gcp.networkservices.inputs.ServiceLbPoliciesAutoCapacityDrainArgs;
/// import com.pulumi.gcp.networkservices.inputs.ServiceLbPoliciesFailoverConfigArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
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
///         var default_ = new ServiceLbPolicies("default", ServiceLbPoliciesArgs.builder()
///             .name("my-lb-policy")
///             .location("global")
///             .description("my description")
///             .loadBalancingAlgorithm("SPRAY_TO_REGION")
///             .autoCapacityDrain(ServiceLbPoliciesAutoCapacityDrainArgs.builder()
///                 .enable(true)
///                 .build())
///             .failoverConfig(ServiceLbPoliciesFailoverConfigArgs.builder()
///                 .failoverHealthThreshold(70)
///                 .build())
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///         var defaultBackendService = new BackendService("defaultBackendService", BackendServiceArgs.builder()
///             .name("my-lb-backend")
///             .description("my description")
///             .loadBalancingScheme("INTERNAL_SELF_MANAGED")
///             .protocol("HTTP")
///             .serviceLbPolicy(default_.id().applyValue(_id -> String.format("//networkservices.googleapis.com/%s", _id)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:ServiceLbPolicies
///     properties:
///       name: my-lb-policy
///       location: global
///       description: my description
///       loadBalancingAlgorithm: SPRAY_TO_REGION
///       autoCapacityDrain:
///         enable: true
///       failoverConfig:
///         failoverHealthThreshold: 70
///       labels:
///         foo: bar
///   defaultBackendService:
///     type: gcp:compute:BackendService
///     name: default
///     properties:
///       name: my-lb-backend
///       description: my description
///       loadBalancingScheme: INTERNAL_SELF_MANAGED
///       protocol: HTTP
///       serviceLbPolicy: //networkservices.googleapis.com/${default.id}
/// ```
///
/// ### Network Services Service Lb Policies Beta
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.ServiceLbPolicies("default", {
///     name: "my-lb-policy",
///     location: "global",
///     description: "my description",
///     loadBalancingAlgorithm: "SPRAY_TO_REGION",
///     autoCapacityDrain: {
///         enable: true,
///     },
///     failoverConfig: {
///         failoverHealthThreshold: 70,
///     },
///     isolationConfig: {
///         isolationGranularity: "REGION",
///         isolationMode: "NEAREST",
///     },
///     labels: {
///         foo: "bar",
///     },
/// });
/// const defaultBackendService = new gcp.compute.BackendService("default", {
///     name: "my-lb-backend",
///     description: "my description",
///     loadBalancingScheme: "INTERNAL_SELF_MANAGED",
///     protocol: "HTTP",
///     serviceLbPolicy: pulumi.interpolate`//networkservices.googleapis.com/${_default.id}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.ServiceLbPolicies("default",
///     name="my-lb-policy",
///     location="global",
///     description="my description",
///     load_balancing_algorithm="SPRAY_TO_REGION",
///     auto_capacity_drain={
///         "enable": True,
///     },
///     failover_config={
///         "failover_health_threshold": 70,
///     },
///     isolation_config={
///         "isolation_granularity": "REGION",
///         "isolation_mode": "NEAREST",
///     },
///     labels={
///         "foo": "bar",
///     })
/// default_backend_service = gcp.compute.BackendService("default",
///     name="my-lb-backend",
///     description="my description",
///     load_balancing_scheme="INTERNAL_SELF_MANAGED",
///     protocol="HTTP",
///     service_lb_policy=default.id.apply(lambda id: f"//networkservices.googleapis.com/{id}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkServices.ServiceLbPolicies("default", new()
///     {
///         Name = "my-lb-policy",
///         Location = "global",
///         Description = "my description",
///         LoadBalancingAlgorithm = "SPRAY_TO_REGION",
///         AutoCapacityDrain = new Gcp.NetworkServices.Inputs.ServiceLbPoliciesAutoCapacityDrainArgs
///         {
///             Enable = true,
///         },
///         FailoverConfig = new Gcp.NetworkServices.Inputs.ServiceLbPoliciesFailoverConfigArgs
///         {
///             FailoverHealthThreshold = 70,
///         },
///         IsolationConfig = new Gcp.NetworkServices.Inputs.ServiceLbPoliciesIsolationConfigArgs
///         {
///             IsolationGranularity = "REGION",
///             IsolationMode = "NEAREST",
///         },
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
///     var defaultBackendService = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "my-lb-backend",
///         Description = "my description",
///         LoadBalancingScheme = "INTERNAL_SELF_MANAGED",
///         Protocol = "HTTP",
///         ServiceLbPolicy = @default.Id.Apply(id => $"//networkservices.googleapis.com/{id}"),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := networkservices.NewServiceLbPolicies(ctx, "default", &networkservices.ServiceLbPoliciesArgs{
/// 			Name:                   pulumi.String("my-lb-policy"),
/// 			Location:               pulumi.String("global"),
/// 			Description:            pulumi.String("my description"),
/// 			LoadBalancingAlgorithm: pulumi.String("SPRAY_TO_REGION"),
/// 			AutoCapacityDrain: &networkservices.ServiceLbPoliciesAutoCapacityDrainArgs{
/// 				Enable: pulumi.Bool(true),
/// 			},
/// 			FailoverConfig: &networkservices.ServiceLbPoliciesFailoverConfigArgs{
/// 				FailoverHealthThreshold: pulumi.Int(70),
/// 			},
/// 			IsolationConfig: &networkservices.ServiceLbPoliciesIsolationConfigArgs{
/// 				IsolationGranularity: pulumi.String("REGION"),
/// 				IsolationMode:        pulumi.String("NEAREST"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("my-lb-backend"),
/// 			Description:         pulumi.String("my description"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_SELF_MANAGED"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			ServiceLbPolicy: _default.ID().ApplyT(func(id string) (string, error) {
/// 				return fmt.Sprintf("//networkservices.googleapis.com/%v", id), nil
/// 			}).(pulumi.StringOutput),
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
/// import com.pulumi.gcp.networkservices.ServiceLbPolicies;
/// import com.pulumi.gcp.networkservices.ServiceLbPoliciesArgs;
/// import com.pulumi.gcp.networkservices.inputs.ServiceLbPoliciesAutoCapacityDrainArgs;
/// import com.pulumi.gcp.networkservices.inputs.ServiceLbPoliciesFailoverConfigArgs;
/// import com.pulumi.gcp.networkservices.inputs.ServiceLbPoliciesIsolationConfigArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
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
///         var default_ = new ServiceLbPolicies("default", ServiceLbPoliciesArgs.builder()
///             .name("my-lb-policy")
///             .location("global")
///             .description("my description")
///             .loadBalancingAlgorithm("SPRAY_TO_REGION")
///             .autoCapacityDrain(ServiceLbPoliciesAutoCapacityDrainArgs.builder()
///                 .enable(true)
///                 .build())
///             .failoverConfig(ServiceLbPoliciesFailoverConfigArgs.builder()
///                 .failoverHealthThreshold(70)
///                 .build())
///             .isolationConfig(ServiceLbPoliciesIsolationConfigArgs.builder()
///                 .isolationGranularity("REGION")
///                 .isolationMode("NEAREST")
///                 .build())
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///         var defaultBackendService = new BackendService("defaultBackendService", BackendServiceArgs.builder()
///             .name("my-lb-backend")
///             .description("my description")
///             .loadBalancingScheme("INTERNAL_SELF_MANAGED")
///             .protocol("HTTP")
///             .serviceLbPolicy(default_.id().applyValue(_id -> String.format("//networkservices.googleapis.com/%s", _id)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:ServiceLbPolicies
///     properties:
///       name: my-lb-policy
///       location: global
///       description: my description
///       loadBalancingAlgorithm: SPRAY_TO_REGION
///       autoCapacityDrain:
///         enable: true
///       failoverConfig:
///         failoverHealthThreshold: 70
///       isolationConfig:
///         isolationGranularity: REGION
///         isolationMode: NEAREST
///       labels:
///         foo: bar
///   defaultBackendService:
///     type: gcp:compute:BackendService
///     name: default
///     properties:
///       name: my-lb-backend
///       description: my description
///       loadBalancingScheme: INTERNAL_SELF_MANAGED
///       protocol: HTTP
///       serviceLbPolicy: //networkservices.googleapis.com/${default.id}
/// ```
///
///
/// ## Import
///
/// ServiceLbPolicies can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/serviceLbPolicies/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, ServiceLbPolicies can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/serviceLbPolicies:ServiceLbPolicies default projects/{{project}}/locations/{{location}}/serviceLbPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/serviceLbPolicies:ServiceLbPolicies default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/serviceLbPolicies:ServiceLbPolicies default {{location}}/{{name}}
/// ```
class ServiceLbPolicies extends pulumi.CustomResource {
  /// Option to specify if an unhealthy MIG/NEG should be considered for global load balancing and traffic routing.
  /// Structure is documented below.
  late final pulumi.Output<ServiceLbPoliciesAutoCapacityDrain?>
      autoCapacityDrain;

  /// Time the ServiceLbPolicy was created in UTC.
  late final pulumi.Output<String> createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Option to specify health based failover behavior. This is not related to Network load balancer FailoverPolicy.
  /// Structure is documented below.
  late final pulumi.Output<ServiceLbPoliciesFailoverConfig?> failoverConfig;

  /// Configuration to provide isolation support for the associated Backend Service.
  /// Structure is documented below.
  late final pulumi.Output<ServiceLbPoliciesIsolationConfig?> isolationConfig;

  /// Set of label tags associated with the ServiceLbPolicy resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The type of load balancing algorithm to be used. The default behavior is WATERFALL_BY_REGION.
  /// Possible values are: `SPRAY_TO_REGION`, `SPRAY_TO_WORLD`, `WATERFALL_BY_REGION`, `WATERFALL_BY_ZONE`.
  late final pulumi.Output<String?> loadBalancingAlgorithm;

  /// The location of the service lb policy.
  late final pulumi.Output<String> location;

  /// Name of the ServiceLbPolicy resource. It matches pattern `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Time the ServiceLbPolicy was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ServiceLbPolicies].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceLbPolicies]. {@macro pulumi_networkservices_service_lb_policies_service_lb_policies_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceLbPolicies(
    String name, {
    ServiceLbPoliciesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/serviceLbPolicies:ServiceLbPolicies',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoCapacityDrain =
        registerOutput<ServiceLbPoliciesAutoCapacityDrain?>(
            'autoCapacityDrain');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.failoverConfig =
        registerOutput<ServiceLbPoliciesFailoverConfig?>('failoverConfig');
    this.isolationConfig =
        registerOutput<ServiceLbPoliciesIsolationConfig?>('isolationConfig');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.loadBalancingAlgorithm =
        registerOutput<String?>('loadBalancingAlgorithm');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
