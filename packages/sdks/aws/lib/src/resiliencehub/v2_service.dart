import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_service_args.dart';
import 'v2_service_associated_system.dart';
import 'v2_service_permission_model.dart';
import 'v2_service_state.dart';

/// Resource for managing an AWS Resilience Hub V2 Service.
///
/// A service is the primary building block in Resilience Hub. It comprises AWS resources, code, and observability that together deliver a specific capability. Services can be associated with a resilience policy and a permission model for resource discovery.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.resiliencehub.V2Service("example", {
///     permissionModel: {
///         invokerRoleName: "AWSResilienceHubAssessmentRole",
///     },
///     name: "example-service",
///     regions: ["us-west-2"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resiliencehub.V2Service("example",
///     permission_model={
///         "invoker_role_name": "AWSResilienceHubAssessmentRole",
///     },
///     name="example-service",
///     regions=["us-west-2"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ResilienceHub.V2Service("example", new()
///     {
///         PermissionModel = new Aws.ResilienceHub.Inputs.V2ServicePermissionModelArgs
///         {
///             InvokerRoleName = "AWSResilienceHubAssessmentRole",
///         },
///         Name = "example-service",
///         Regions = new[]
///         {
///             "us-west-2",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/resiliencehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resiliencehub.NewV2Service(ctx, "example", &resiliencehub.V2ServiceArgs{
/// 			PermissionModel: &resiliencehub.V2ServicePermissionModelArgs{
/// 				InvokerRoleName: pulumi.String("AWSResilienceHubAssessmentRole"),
/// 			},
/// 			Name: pulumi.String("example-service"),
/// 			Regions: pulumi.StringArray{
/// 				pulumi.String("us-west-2"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_resiliencehub_v2service" "example" {
///   permission_model = {
///     invoker_role_name = "AWSResilienceHubAssessmentRole"
///   }
///   name    = "example-service"
///   regions = ["us-west-2"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resiliencehub.V2Service;
/// import com.pulumi.aws.resiliencehub.V2ServiceArgs;
/// import com.pulumi.aws.resiliencehub.inputs.V2ServicePermissionModelArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new V2Service("example", V2ServiceArgs.builder()
///             .permissionModel(V2ServicePermissionModelArgs.builder()
///                 .invokerRoleName("AWSResilienceHubAssessmentRole")
///                 .build())
///             .name("example-service")
///             .regions("us-west-2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:resiliencehub:V2Service
///     properties:
///       permissionModel:
///         invokerRoleName: AWSResilienceHubAssessmentRole
///       name: example-service
///       regions:
///         - us-west-2
/// ```
///
///
/// ### With Policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.resiliencehub.V2Policy("example", {
///     availabilitySlo: {
///         target: 99.9,
///     },
///     name: "example-policy",
/// });
/// const exampleV2Service = new aws.resiliencehub.V2Service("example", {
///     permissionModel: {
///         invokerRoleName: "AWSResilienceHubAssessmentRole",
///     },
///     name: "example-service",
///     description: "Production API service",
///     policyArn: example.arn,
///     regions: [
///         "us-west-2",
///         "us-east-1",
///     ],
///     tags: {
///         Environment: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resiliencehub.V2Policy("example",
///     availability_slo={
///         "target": 99.9,
///     },
///     name="example-policy")
/// example_v2_service = aws.resiliencehub.V2Service("example",
///     permission_model={
///         "invoker_role_name": "AWSResilienceHubAssessmentRole",
///     },
///     name="example-service",
///     description="Production API service",
///     policy_arn=example.arn,
///     regions=[
///         "us-west-2",
///         "us-east-1",
///     ],
///     tags={
///         "Environment": "production",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ResilienceHub.V2Policy("example", new()
///     {
///         AvailabilitySlo = new Aws.ResilienceHub.Inputs.V2PolicyAvailabilitySloArgs
///         {
///             Target = 99.9,
///         },
///         Name = "example-policy",
///     });
///
///     var exampleV2Service = new Aws.ResilienceHub.V2Service("example", new()
///     {
///         PermissionModel = new Aws.ResilienceHub.Inputs.V2ServicePermissionModelArgs
///         {
///             InvokerRoleName = "AWSResilienceHubAssessmentRole",
///         },
///         Name = "example-service",
///         Description = "Production API service",
///         PolicyArn = example.Arn,
///         Regions = new[]
///         {
///             "us-west-2",
///             "us-east-1",
///         },
///         Tags =
///         {
///             { "Environment", "production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/resiliencehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := resiliencehub.NewV2Policy(ctx, "example", &resiliencehub.V2PolicyArgs{
/// 			AvailabilitySlo: &resiliencehub.V2PolicyAvailabilitySloArgs{
/// 				Target: pulumi.Float64(99.9),
/// 			},
/// 			Name: pulumi.String("example-policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resiliencehub.NewV2Service(ctx, "example", &resiliencehub.V2ServiceArgs{
/// 			PermissionModel: &resiliencehub.V2ServicePermissionModelArgs{
/// 				InvokerRoleName: pulumi.String("AWSResilienceHubAssessmentRole"),
/// 			},
/// 			Name:        pulumi.String("example-service"),
/// 			Description: pulumi.String("Production API service"),
/// 			PolicyArn:   example.Arn,
/// 			Regions: pulumi.StringArray{
/// 				pulumi.String("us-west-2"),
/// 				pulumi.String("us-east-1"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_resiliencehub_v2policy" "example" {
///   availability_slo = {
///     target = 99.9
///   }
///   name = "example-policy"
/// }
/// resource "aws_resiliencehub_v2service" "example" {
///   permission_model = {
///     invoker_role_name = "AWSResilienceHubAssessmentRole"
///   }
///   name        = "example-service"
///   description = "Production API service"
///   policy_arn  = aws_resiliencehub_v2policy.example.arn
///   regions     = ["us-west-2", "us-east-1"]
///   tags = {
///     "Environment" = "production"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resiliencehub.V2Policy;
/// import com.pulumi.aws.resiliencehub.V2PolicyArgs;
/// import com.pulumi.aws.resiliencehub.inputs.V2PolicyAvailabilitySloArgs;
/// import com.pulumi.aws.resiliencehub.V2Service;
/// import com.pulumi.aws.resiliencehub.V2ServiceArgs;
/// import com.pulumi.aws.resiliencehub.inputs.V2ServicePermissionModelArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new V2Policy("example", V2PolicyArgs.builder()
///             .availabilitySlo(V2PolicyAvailabilitySloArgs.builder()
///                 .target(99.9)
///                 .build())
///             .name("example-policy")
///             .build());
///
///         var exampleV2Service = new V2Service("exampleV2Service", V2ServiceArgs.builder()
///             .permissionModel(V2ServicePermissionModelArgs.builder()
///                 .invokerRoleName("AWSResilienceHubAssessmentRole")
///                 .build())
///             .name("example-service")
///             .description("Production API service")
///             .policyArn(example.arn())
///             .regions(
///                 "us-west-2",
///                 "us-east-1")
///             .tags(Map.of("Environment", "production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:resiliencehub:V2Policy
///     properties:
///       availabilitySlo:
///         target: 99.9
///       name: example-policy
///   exampleV2Service:
///     type: aws:resiliencehub:V2Service
///     name: example
///     properties:
///       permissionModel:
///         invokerRoleName: AWSResilienceHubAssessmentRole
///       name: example-service
///       description: Production API service
///       policyArn: ${example.arn}
///       regions:
///         - us-west-2
///         - us-east-1
///       tags:
///         Environment: production
/// ```
///
///
/// ### With Associated Systems
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.resiliencehub.V2System("example", {name: "example-system"});
/// const exampleV2Service = new aws.resiliencehub.V2Service("example", {
///     permissionModel: {
///         invokerRoleName: "AWSResilienceHubAssessmentRole",
///     },
///     associatedSystems: [{
///         systemArn: example.arn,
///     }],
///     name: "example-service",
///     regions: ["us-west-2"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resiliencehub.V2System("example", name="example-system")
/// example_v2_service = aws.resiliencehub.V2Service("example",
///     permission_model={
///         "invoker_role_name": "AWSResilienceHubAssessmentRole",
///     },
///     associated_systems=[{
///         "system_arn": example.arn,
///     }],
///     name="example-service",
///     regions=["us-west-2"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ResilienceHub.V2System("example", new()
///     {
///         Name = "example-system",
///     });
///
///     var exampleV2Service = new Aws.ResilienceHub.V2Service("example", new()
///     {
///         PermissionModel = new Aws.ResilienceHub.Inputs.V2ServicePermissionModelArgs
///         {
///             InvokerRoleName = "AWSResilienceHubAssessmentRole",
///         },
///         AssociatedSystems = new[]
///         {
///             new Aws.ResilienceHub.Inputs.V2ServiceAssociatedSystemArgs
///             {
///                 SystemArn = example.Arn,
///             },
///         },
///         Name = "example-service",
///         Regions = new[]
///         {
///             "us-west-2",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/resiliencehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := resiliencehub.NewV2System(ctx, "example", &resiliencehub.V2SystemArgs{
/// 			Name: pulumi.String("example-system"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resiliencehub.NewV2Service(ctx, "example", &resiliencehub.V2ServiceArgs{
/// 			PermissionModel: &resiliencehub.V2ServicePermissionModelArgs{
/// 				InvokerRoleName: pulumi.String("AWSResilienceHubAssessmentRole"),
/// 			},
/// 			AssociatedSystems: resiliencehub.V2ServiceAssociatedSystemArray{
/// 				&resiliencehub.V2ServiceAssociatedSystemArgs{
/// 					SystemArn: example.Arn,
/// 				},
/// 			},
/// 			Name: pulumi.String("example-service"),
/// 			Regions: pulumi.StringArray{
/// 				pulumi.String("us-west-2"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_resiliencehub_v2system" "example" {
///   name = "example-system"
/// }
/// resource "aws_resiliencehub_v2service" "example" {
///   permission_model = {
///     invoker_role_name = "AWSResilienceHubAssessmentRole"
///   }
///   associated_systems {
///     system_arn = aws_resiliencehub_v2system.example.arn
///   }
///   name    = "example-service"
///   regions = ["us-west-2"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resiliencehub.V2System;
/// import com.pulumi.aws.resiliencehub.V2SystemArgs;
/// import com.pulumi.aws.resiliencehub.V2Service;
/// import com.pulumi.aws.resiliencehub.V2ServiceArgs;
/// import com.pulumi.aws.resiliencehub.inputs.V2ServicePermissionModelArgs;
/// import com.pulumi.aws.resiliencehub.inputs.V2ServiceAssociatedSystemArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new V2System("example", V2SystemArgs.builder()
///             .name("example-system")
///             .build());
///
///         var exampleV2Service = new V2Service("exampleV2Service", V2ServiceArgs.builder()
///             .permissionModel(V2ServicePermissionModelArgs.builder()
///                 .invokerRoleName("AWSResilienceHubAssessmentRole")
///                 .build())
///             .associatedSystems(V2ServiceAssociatedSystemArgs.builder()
///                 .systemArn(example.arn())
///                 .build())
///             .name("example-service")
///             .regions("us-west-2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:resiliencehub:V2System
///     properties:
///       name: example-system
///   exampleV2Service:
///     type: aws:resiliencehub:V2Service
///     name: example
///     properties:
///       permissionModel:
///         invokerRoleName: AWSResilienceHubAssessmentRole
///       associatedSystems:
///         - systemArn: ${example.arn}
///       name: example-service
///       regions:
///         - us-west-2
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the Resilience Hub V2 Service.
///
///
/// Using `pulumi import`, import Resilience Hub V2 Service using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:resiliencehub/v2Service:V2Service example arn:aws:resiliencehub:us-west-2:123456789012:service/example-service:abc123
/// ```
class V2Service extends pulumi.CustomResource {
  /// ARN of the service.
  late final pulumi.Output<String> arn;
  /// Systems to associate with the service. See `associatedSystem` Block below.
  late final pulumi.Output<List<V2ServiceAssociatedSystem>?> associatedSystems;
  /// Dependency discovery. Valid values: `ENABLED`, `DISABLED`.
  late final pulumi.Output<String> dependencyDiscovery;
  /// Description of the service.
  late final pulumi.Output<String?> description;
  /// KMS key ARN.
  late final pulumi.Output<String?> kmsKeyId;
  /// Name of the service. Changing this value requires creating a new resource.
  late final pulumi.Output<String> name;
  /// Permission model for resource discovery. See `permissionModel` Block below.
  late final pulumi.Output<V2ServicePermissionModel> permissionModel;
  /// ARN of the resilience policy to associate with this service.
  late final pulumi.Output<String?> policyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// List of AWS regions where the service operates.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>> regions;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [V2Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2Service]. {@macro pulumi_resiliencehub_v2_service_v2_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2Service(
    String name, {
    V2ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:resiliencehub/v2Service:V2Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    associatedSystems = registerOutput<List<V2ServiceAssociatedSystem>?>('associatedSystems', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2ServiceAssociatedSystem>(guardedValue, (value) => V2ServiceAssociatedSystem.fromMap((value as Map).cast<String, dynamic>())); });
    dependencyDiscovery = registerOutput<String>('dependencyDiscovery');
    description = registerOutput<String?>('description');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    permissionModel = registerOutput<V2ServicePermissionModel>('permissionModel', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2ServicePermissionModel.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    policyArn = registerOutput<String?>('policyArn');
    region = registerOutput<String>('region');
    regions = registerOutput<List<String>>('regions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [V2Service] resource's state with the given [name] and [id].
  static V2Service get(
    String name,
    pulumi.Input<String> id, {
    V2ServiceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return V2Service._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  V2Service._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:resiliencehub/v2Service:V2Service',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    associatedSystems = registerOutput<List<V2ServiceAssociatedSystem>?>('associatedSystems', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2ServiceAssociatedSystem>(guardedValue, (value) => V2ServiceAssociatedSystem.fromMap((value as Map).cast<String, dynamic>())); });
    dependencyDiscovery = registerOutput<String>('dependencyDiscovery');
    description = registerOutput<String?>('description');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    permissionModel = registerOutput<V2ServicePermissionModel>('permissionModel', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2ServicePermissionModel.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    policyArn = registerOutput<String?>('policyArn');
    region = registerOutput<String>('region');
    regions = registerOutput<List<String>>('regions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [V2Service] resource.
  V2Service.reference(String urn)
    : super(
        'aws:resiliencehub/v2Service:V2Service',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    associatedSystems = registerOutput<List<V2ServiceAssociatedSystem>?>('associatedSystems', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2ServiceAssociatedSystem>(guardedValue, (value) => V2ServiceAssociatedSystem.fromMap((value as Map).cast<String, dynamic>())); });
    dependencyDiscovery = registerOutput<String>('dependencyDiscovery');
    description = registerOutput<String?>('description');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    permissionModel = registerOutput<V2ServicePermissionModel>('permissionModel', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2ServicePermissionModel.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    policyArn = registerOutput<String?>('policyArn');
    region = registerOutput<String>('region');
    regions = registerOutput<List<String>>('regions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
