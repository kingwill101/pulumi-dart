import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_system_args.dart';
import 'v2_system_state.dart';

/// Resource for managing an AWS Resilience Hub V2 System.
///
/// A system represents a business application or platform that delivers value to your organization. Systems contain user journeys and services, and serve as the top-level container for organizing your resilience posture.
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
/// const example = new aws.resiliencehub.V2System("example", {name: "example-system"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resiliencehub.V2System("example", name="example-system")
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
/// 		_, err := resiliencehub.NewV2System(ctx, "example", &resiliencehub.V2SystemArgs{
/// 			Name: pulumi.String("example-system"),
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
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resiliencehub.V2System;
/// import com.pulumi.aws.resiliencehub.V2SystemArgs;
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:resiliencehub:V2System
///     properties:
///       name: example-system
/// ```
///
///
/// ### With Sharing Enabled
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.resiliencehub.V2System("example", {
///     name: "example-system",
///     description: "Production system grouping",
///     sharingEnabled: true,
///     tags: {
///         Environment: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resiliencehub.V2System("example",
///     name="example-system",
///     description="Production system grouping",
///     sharing_enabled=True,
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
///     var example = new Aws.ResilienceHub.V2System("example", new()
///     {
///         Name = "example-system",
///         Description = "Production system grouping",
///         SharingEnabled = true,
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
/// 		_, err := resiliencehub.NewV2System(ctx, "example", &resiliencehub.V2SystemArgs{
/// 			Name:           pulumi.String("example-system"),
/// 			Description:    pulumi.String("Production system grouping"),
/// 			SharingEnabled: pulumi.Bool(true),
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
/// resource "aws_resiliencehub_v2system" "example" {
///   name            = "example-system"
///   description     = "Production system grouping"
///   sharing_enabled = true
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
/// import com.pulumi.aws.resiliencehub.V2System;
/// import com.pulumi.aws.resiliencehub.V2SystemArgs;
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
///             .description("Production system grouping")
///             .sharingEnabled(true)
///             .tags(Map.of("Environment", "production"))
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
///       description: Production system grouping
///       sharingEnabled: true
///       tags:
///         Environment: production
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Resilience Hub V2 System.
///
///
/// Using `pulumi import`, import Resilience Hub V2 System using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:resiliencehub/v2System:V2System example arn:aws:resiliencehub:us-west-2:123456789012:system/example-system:abc123
/// ```
class V2System extends pulumi.CustomResource {
  /// ARN of the system.
  late final pulumi.Output<String> arn;
  /// Description of the system.
  late final pulumi.Output<String?> description;
  /// KMS key ARN.
  late final pulumi.Output<String?> kmsKeyId;
  /// Name of the system. Changing this value requires creating a new resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// AWS Organizations identifier for the system.
  late final pulumi.Output<String> organizationId;
  /// Organizational unit (OU) identifier for the system.
  late final pulumi.Output<String> ouId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Whether cross-account sharing is enabled for this system.
  late final pulumi.Output<bool> sharingEnabled;
  /// System ID for cross-account use without exposing account structure.
  late final pulumi.Output<String> systemId;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [V2System].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2System]. {@macro pulumi_resiliencehub_v2_system_v2_system_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2System(
    String name, {
    V2SystemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:resiliencehub/v2System:V2System',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    ouId = registerOutput<String>('ouId');
    region = registerOutput<String>('region');
    sharingEnabled = registerOutput<bool>('sharingEnabled');
    systemId = registerOutput<String>('systemId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [V2System] resource's state with the given [name] and [id].
  static V2System get(
    String name,
    pulumi.Input<String> id, {
    V2SystemState? state,
  }) {
    return V2System._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  V2System._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:resiliencehub/v2System:V2System',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    ouId = registerOutput<String>('ouId');
    region = registerOutput<String>('region');
    sharingEnabled = registerOutput<bool>('sharingEnabled');
    systemId = registerOutput<String>('systemId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
