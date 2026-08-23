import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_args.dart';
import 'v2_policy_availability_slo.dart';
import 'v2_policy_data_recovery.dart';
import 'v2_policy_multi_az.dart';
import 'v2_policy_multi_region.dart';
import 'v2_policy_state.dart';

/// Resource for managing an AWS Resilience Hub V2 Policy.
///
/// A resilience policy defines your resilience expectations through modular, composable requirements. Rather than choosing a single rigid policy type, you construct policies by selecting the requirements that matter to your application: availability SLO, multi-AZ disaster recovery, multi-region disaster recovery, and data recovery objectives.
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
/// const example = new aws.resiliencehub.V2Policy("example", {
///     name: "example-policy",
///     availabilitySlo: {
///         target: 99.9,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resiliencehub.V2Policy("example",
///     name="example-policy",
///     availability_slo={
///         "target": 99.9,
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
///         Name = "example-policy",
///         AvailabilitySlo = new Aws.ResilienceHub.Inputs.V2PolicyAvailabilitySloArgs
///         {
///             Target = 99.9,
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
/// 		_, err := resiliencehub.NewV2Policy(ctx, "example", &resiliencehub.V2PolicyArgs{
/// 			Name: pulumi.String("example-policy"),
/// 			AvailabilitySlo: &resiliencehub.V2PolicyAvailabilitySloArgs{
/// 				Target: pulumi.Float64(99.9),
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
///   name = "example-policy"
///   availability_slo = {
///     target = 99.9
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
///             .name("example-policy")
///             .availabilitySlo(V2PolicyAvailabilitySloArgs.builder()
///                 .target(99.9)
///                 .build())
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
///       name: example-policy
///       availabilitySlo:
///         target: 99.9
/// ```
///
///
/// ### Multi-AZ with Data Recovery
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.resiliencehub.V2Policy("example", {
///     name: "example-policy",
///     description: "Policy with multi-AZ and data recovery targets",
///     availabilitySlo: {
///         target: 99.99,
///     },
///     dataRecovery: {
///         timeBetweenBackupsInMinutes: 60,
///     },
///     multiAz: {
///         disasterRecoveryApproach: "ACTIVE_ACTIVE",
///         rpoInMinutes: 5,
///         rtoInMinutes: 10,
///     },
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
///     name="example-policy",
///     description="Policy with multi-AZ and data recovery targets",
///     availability_slo={
///         "target": 99.99,
///     },
///     data_recovery={
///         "time_between_backups_in_minutes": 60,
///     },
///     multi_az={
///         "disaster_recovery_approach": "ACTIVE_ACTIVE",
///         "rpo_in_minutes": 5,
///         "rto_in_minutes": 10,
///     },
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
///         Name = "example-policy",
///         Description = "Policy with multi-AZ and data recovery targets",
///         AvailabilitySlo = new Aws.ResilienceHub.Inputs.V2PolicyAvailabilitySloArgs
///         {
///             Target = 99.99,
///         },
///         DataRecovery = new Aws.ResilienceHub.Inputs.V2PolicyDataRecoveryArgs
///         {
///             TimeBetweenBackupsInMinutes = 60,
///         },
///         MultiAz = new Aws.ResilienceHub.Inputs.V2PolicyMultiAzArgs
///         {
///             DisasterRecoveryApproach = "ACTIVE_ACTIVE",
///             RpoInMinutes = 5,
///             RtoInMinutes = 10,
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
/// 		_, err := resiliencehub.NewV2Policy(ctx, "example", &resiliencehub.V2PolicyArgs{
/// 			Name:        pulumi.String("example-policy"),
/// 			Description: pulumi.String("Policy with multi-AZ and data recovery targets"),
/// 			AvailabilitySlo: &resiliencehub.V2PolicyAvailabilitySloArgs{
/// 				Target: pulumi.Float64(99.99),
/// 			},
/// 			DataRecovery: &resiliencehub.V2PolicyDataRecoveryArgs{
/// 				TimeBetweenBackupsInMinutes: pulumi.Int(60),
/// 			},
/// 			MultiAz: &resiliencehub.V2PolicyMultiAzArgs{
/// 				DisasterRecoveryApproach: pulumi.String("ACTIVE_ACTIVE"),
/// 				RpoInMinutes:             pulumi.Int(5),
/// 				RtoInMinutes:             pulumi.Int(10),
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
///   name        = "example-policy"
///   description = "Policy with multi-AZ and data recovery targets"
///   availability_slo = {
///     target = 99.99
///   }
///   data_recovery = {
///     time_between_backups_in_minutes = 60
///   }
///   multi_az = {
///     disaster_recovery_approach = "ACTIVE_ACTIVE"
///     rpo_in_minutes             = 5
///     rto_in_minutes             = 10
///   }
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
/// import com.pulumi.aws.resiliencehub.inputs.V2PolicyDataRecoveryArgs;
/// import com.pulumi.aws.resiliencehub.inputs.V2PolicyMultiAzArgs;
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
///             .name("example-policy")
///             .description("Policy with multi-AZ and data recovery targets")
///             .availabilitySlo(V2PolicyAvailabilitySloArgs.builder()
///                 .target(99.99)
///                 .build())
///             .dataRecovery(V2PolicyDataRecoveryArgs.builder()
///                 .timeBetweenBackupsInMinutes(60)
///                 .build())
///             .multiAz(V2PolicyMultiAzArgs.builder()
///                 .disasterRecoveryApproach("ACTIVE_ACTIVE")
///                 .rpoInMinutes(5)
///                 .rtoInMinutes(10)
///                 .build())
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
///       name: example-policy
///       description: Policy with multi-AZ and data recovery targets
///       availabilitySlo:
///         target: 99.99
///       dataRecovery:
///         timeBetweenBackupsInMinutes: 60
///       multiAz:
///         disasterRecoveryApproach: ACTIVE_ACTIVE
///         rpoInMinutes: 5
///         rtoInMinutes: 10
///       tags:
///         Environment: production
/// ```
///
///
/// ### Multi-Region
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.resiliencehub.V2Policy("example", {
///     name: "example-multi-region-policy",
///     availabilitySlo: {
///         target: 99.95,
///     },
///     multiRegion: {
///         disasterRecoveryApproach: "ACTIVE_PASSIVE",
///         rpoInMinutes: 15,
///         rtoInMinutes: 30,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resiliencehub.V2Policy("example",
///     name="example-multi-region-policy",
///     availability_slo={
///         "target": 99.95,
///     },
///     multi_region={
///         "disaster_recovery_approach": "ACTIVE_PASSIVE",
///         "rpo_in_minutes": 15,
///         "rto_in_minutes": 30,
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
///         Name = "example-multi-region-policy",
///         AvailabilitySlo = new Aws.ResilienceHub.Inputs.V2PolicyAvailabilitySloArgs
///         {
///             Target = 99.95,
///         },
///         MultiRegion = new Aws.ResilienceHub.Inputs.V2PolicyMultiRegionArgs
///         {
///             DisasterRecoveryApproach = "ACTIVE_PASSIVE",
///             RpoInMinutes = 15,
///             RtoInMinutes = 30,
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
/// 		_, err := resiliencehub.NewV2Policy(ctx, "example", &resiliencehub.V2PolicyArgs{
/// 			Name: pulumi.String("example-multi-region-policy"),
/// 			AvailabilitySlo: &resiliencehub.V2PolicyAvailabilitySloArgs{
/// 				Target: pulumi.Float64(99.95),
/// 			},
/// 			MultiRegion: &resiliencehub.V2PolicyMultiRegionArgs{
/// 				DisasterRecoveryApproach: pulumi.String("ACTIVE_PASSIVE"),
/// 				RpoInMinutes:             pulumi.Int(15),
/// 				RtoInMinutes:             pulumi.Int(30),
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
///   name = "example-multi-region-policy"
///   availability_slo = {
///     target = 99.95
///   }
///   multi_region = {
///     disaster_recovery_approach = "ACTIVE_PASSIVE"
///     rpo_in_minutes             = 15
///     rto_in_minutes             = 30
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
/// import com.pulumi.aws.resiliencehub.inputs.V2PolicyMultiRegionArgs;
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
///             .name("example-multi-region-policy")
///             .availabilitySlo(V2PolicyAvailabilitySloArgs.builder()
///                 .target(99.95)
///                 .build())
///             .multiRegion(V2PolicyMultiRegionArgs.builder()
///                 .disasterRecoveryApproach("ACTIVE_PASSIVE")
///                 .rpoInMinutes(15)
///                 .rtoInMinutes(30)
///                 .build())
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
///       name: example-multi-region-policy
///       availabilitySlo:
///         target: 99.95
///       multiRegion:
///         disasterRecoveryApproach: ACTIVE_PASSIVE
///         rpoInMinutes: 15
///         rtoInMinutes: 30
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Resilience Hub V2 Policy.
///
///
/// Using `pulumi import`, import Resilience Hub V2 Policy using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:resiliencehub/v2Policy:V2Policy example arn:aws:resiliencehub:us-west-2:123456789012:policy/example-policy:abc123
/// ```
class V2Policy extends pulumi.CustomResource {
  /// ARN of the policy.
  late final pulumi.Output<String> arn;
  /// Availability SLO configuration. See `availabilitySlo` Block below.
  late final pulumi.Output<V2PolicyAvailabilitySlo?> availabilitySlo;
  /// Data recovery configuration. See `dataRecovery` Block below.
  late final pulumi.Output<V2PolicyDataRecovery?> dataRecovery;
  /// Description of the policy.
  late final pulumi.Output<String?> description;
  /// KMS key ARN.
  late final pulumi.Output<String?> kmsKeyId;
  /// Multi-AZ disaster recovery configuration. See `multiAz` Block below.
  late final pulumi.Output<V2PolicyMultiAz?> multiAz;
  /// Multi-region disaster recovery configuration. See `multiRegion` Block below.
  late final pulumi.Output<V2PolicyMultiRegion?> multiRegion;
  /// Name of the policy. Changing this value requires creating a new resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [V2Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2Policy]. {@macro pulumi_resiliencehub_v2_policy_v2_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2Policy(
    String name, {
    V2PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:resiliencehub/v2Policy:V2Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    availabilitySlo = registerOutput<V2PolicyAvailabilitySlo?>('availabilitySlo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2PolicyAvailabilitySlo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataRecovery = registerOutput<V2PolicyDataRecovery?>('dataRecovery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2PolicyDataRecovery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    multiAz = registerOutput<V2PolicyMultiAz?>('multiAz', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2PolicyMultiAz.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    multiRegion = registerOutput<V2PolicyMultiRegion?>('multiRegion', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2PolicyMultiRegion.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [V2Policy] resource's state with the given [name] and [id].
  static V2Policy get(
    String name,
    pulumi.Input<String> id, {
    V2PolicyState? state,
  }) {
    return V2Policy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  V2Policy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:resiliencehub/v2Policy:V2Policy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    availabilitySlo = registerOutput<V2PolicyAvailabilitySlo?>('availabilitySlo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2PolicyAvailabilitySlo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataRecovery = registerOutput<V2PolicyDataRecovery?>('dataRecovery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2PolicyDataRecovery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    multiAz = registerOutput<V2PolicyMultiAz?>('multiAz', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2PolicyMultiAz.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    multiRegion = registerOutput<V2PolicyMultiRegion?>('multiRegion', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2PolicyMultiRegion.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
