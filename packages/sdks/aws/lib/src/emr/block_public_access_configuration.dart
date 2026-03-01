import 'package:pulumi/pulumi.dart' as pulumi;
import 'block_public_access_configuration_args.dart';
import 'block_public_access_configuration_permitted_public_security_group_rule_range.dart';
import 'block_public_access_configuration_state.dart';

/// Resource for managing an AWS EMR block public access configuration. This region level security configuration restricts the launch of EMR clusters that have associated security groups permitting public access on unspecified ports. See the [EMR Block Public Access Configuration](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-block-public-access.html) documentation for further information.
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
/// const example = new aws.emr.BlockPublicAccessConfiguration("example", {blockPublicSecurityGroupRules: true});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.emr.BlockPublicAccessConfiguration("example", block_public_security_group_rules=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Emr.BlockPublicAccessConfiguration("example", new()
///     {
///         BlockPublicSecurityGroupRules = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := emr.NewBlockPublicAccessConfiguration(ctx, "example", &emr.BlockPublicAccessConfigurationArgs{
/// 			BlockPublicSecurityGroupRules: pulumi.Bool(true),
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
/// import com.pulumi.aws.emr.BlockPublicAccessConfiguration;
/// import com.pulumi.aws.emr.BlockPublicAccessConfigurationArgs;
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
///         var example = new BlockPublicAccessConfiguration("example", BlockPublicAccessConfigurationArgs.builder()
///             .blockPublicSecurityGroupRules(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:emr:BlockPublicAccessConfiguration
///     properties:
///       blockPublicSecurityGroupRules: true
/// ```
///
///
/// ### Default Configuration
///
/// By default, each AWS region is equipped with a block public access configuration that prevents EMR clusters from being launched if they have security group rules permitting public access on any port except for port 22. The default configuration can be managed using this resource.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.emr.BlockPublicAccessConfiguration("example", {
///     blockPublicSecurityGroupRules: true,
///     permittedPublicSecurityGroupRuleRanges: [{
///         minRange: 22,
///         maxRange: 22,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.emr.BlockPublicAccessConfiguration("example",
///     block_public_security_group_rules=True,
///     permitted_public_security_group_rule_ranges=[{
///         "min_range": 22,
///         "max_range": 22,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Emr.BlockPublicAccessConfiguration("example", new()
///     {
///         BlockPublicSecurityGroupRules = true,
///         PermittedPublicSecurityGroupRuleRanges = new[]
///         {
///             new Aws.Emr.Inputs.BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRangeArgs
///             {
///                 MinRange = 22,
///                 MaxRange = 22,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := emr.NewBlockPublicAccessConfiguration(ctx, "example", &emr.BlockPublicAccessConfigurationArgs{
/// 			BlockPublicSecurityGroupRules: pulumi.Bool(true),
/// 			PermittedPublicSecurityGroupRuleRanges: emr.BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRangeArray{
/// 				&emr.BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRangeArgs{
/// 					MinRange: pulumi.Int(22),
/// 					MaxRange: pulumi.Int(22),
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
/// import com.pulumi.aws.emr.BlockPublicAccessConfiguration;
/// import com.pulumi.aws.emr.BlockPublicAccessConfigurationArgs;
/// import com.pulumi.aws.emr.inputs.BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRangeArgs;
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
///         var example = new BlockPublicAccessConfiguration("example", BlockPublicAccessConfigurationArgs.builder()
///             .blockPublicSecurityGroupRules(true)
///             .permittedPublicSecurityGroupRuleRanges(BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRangeArgs.builder()
///                 .minRange(22)
///                 .maxRange(22)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:emr:BlockPublicAccessConfiguration
///     properties:
///       blockPublicSecurityGroupRules: true
///       permittedPublicSecurityGroupRuleRanges:
///         - minRange: 22
///           maxRange: 22
/// ```
///
///
/// > **NOTE:** If an `aws.emr.BlockPublicAccessConfiguration` resource is destroyed, the configuration will reset to this default configuration.
///
/// ### Multiple Permitted Public Security Group Rule Ranges
///
/// The resource permits specification of multiple `permitted_public_security_group_rule_range` blocks.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.emr.BlockPublicAccessConfiguration("example", {
///     blockPublicSecurityGroupRules: true,
///     permittedPublicSecurityGroupRuleRanges: [
///         {
///             minRange: 22,
///             maxRange: 22,
///         },
///         {
///             minRange: 100,
///             maxRange: 101,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.emr.BlockPublicAccessConfiguration("example",
///     block_public_security_group_rules=True,
///     permitted_public_security_group_rule_ranges=[
///         {
///             "min_range": 22,
///             "max_range": 22,
///         },
///         {
///             "min_range": 100,
///             "max_range": 101,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Emr.BlockPublicAccessConfiguration("example", new()
///     {
///         BlockPublicSecurityGroupRules = true,
///         PermittedPublicSecurityGroupRuleRanges = new[]
///         {
///             new Aws.Emr.Inputs.BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRangeArgs
///             {
///                 MinRange = 22,
///                 MaxRange = 22,
///             },
///             new Aws.Emr.Inputs.BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRangeArgs
///             {
///                 MinRange = 100,
///                 MaxRange = 101,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := emr.NewBlockPublicAccessConfiguration(ctx, "example", &emr.BlockPublicAccessConfigurationArgs{
/// 			BlockPublicSecurityGroupRules: pulumi.Bool(true),
/// 			PermittedPublicSecurityGroupRuleRanges: emr.BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRangeArray{
/// 				&emr.BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRangeArgs{
/// 					MinRange: pulumi.Int(22),
/// 					MaxRange: pulumi.Int(22),
/// 				},
/// 				&emr.BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRangeArgs{
/// 					MinRange: pulumi.Int(100),
/// 					MaxRange: pulumi.Int(101),
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
/// import com.pulumi.aws.emr.BlockPublicAccessConfiguration;
/// import com.pulumi.aws.emr.BlockPublicAccessConfigurationArgs;
/// import com.pulumi.aws.emr.inputs.BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRangeArgs;
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
///         var example = new BlockPublicAccessConfiguration("example", BlockPublicAccessConfigurationArgs.builder()
///             .blockPublicSecurityGroupRules(true)
///             .permittedPublicSecurityGroupRuleRanges(
///                 BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRangeArgs.builder()
///                     .minRange(22)
///                     .maxRange(22)
///                     .build(),
///                 BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRangeArgs.builder()
///                     .minRange(100)
///                     .maxRange(101)
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:emr:BlockPublicAccessConfiguration
///     properties:
///       blockPublicSecurityGroupRules: true
///       permittedPublicSecurityGroupRuleRanges:
///         - minRange: 22
///           maxRange: 22
///         - minRange: 100
///           maxRange: 101
/// ```
///
///
/// ### Disabling Block Public Access
///
/// To permit EMR clusters to be launched in the configured region regardless of associated security group rules, the Block Public Access feature can be disabled using this resource.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.emr.BlockPublicAccessConfiguration("example", {blockPublicSecurityGroupRules: false});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.emr.BlockPublicAccessConfiguration("example", block_public_security_group_rules=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Emr.BlockPublicAccessConfiguration("example", new()
///     {
///         BlockPublicSecurityGroupRules = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := emr.NewBlockPublicAccessConfiguration(ctx, "example", &emr.BlockPublicAccessConfigurationArgs{
/// 			BlockPublicSecurityGroupRules: pulumi.Bool(false),
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
/// import com.pulumi.aws.emr.BlockPublicAccessConfiguration;
/// import com.pulumi.aws.emr.BlockPublicAccessConfigurationArgs;
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
///         var example = new BlockPublicAccessConfiguration("example", BlockPublicAccessConfigurationArgs.builder()
///             .blockPublicSecurityGroupRules(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:emr:BlockPublicAccessConfiguration
///     properties:
///       blockPublicSecurityGroupRules: false
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import the current EMR Block Public Access Configuration. For example:
///
/// ```sh
/// $ pulumi import aws:emr/blockPublicAccessConfiguration:BlockPublicAccessConfiguration example current
/// ```
class BlockPublicAccessConfiguration extends pulumi.CustomResource {
  /// Enable or disable EMR Block Public Access.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<bool> blockPublicSecurityGroupRules;
  /// Configuration block for defining permitted public security group rule port ranges. Can be defined multiple times per resource. Only valid if `block_public_security_group_rules` is set to `true`.
  late final pulumi.Output<List<BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange>?> permittedPublicSecurityGroupRuleRanges;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [BlockPublicAccessConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BlockPublicAccessConfiguration]. {@macro pulumi_emr_block_public_access_configuration_block_public_access_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BlockPublicAccessConfiguration(
    String name, {
    BlockPublicAccessConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:emr/blockPublicAccessConfiguration:BlockPublicAccessConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.blockPublicSecurityGroupRules = registerOutput<bool>('blockPublicSecurityGroupRules');
    this.permittedPublicSecurityGroupRuleRanges = registerOutput<List<BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange>?>('permittedPublicSecurityGroupRuleRanges');
    this.region = registerOutput<String>('region');
  }

  /// Gets an existing [BlockPublicAccessConfiguration] resource's state with the given [name] and [id].
  static BlockPublicAccessConfiguration get(
    String name,
    pulumi.Input<String> id, {
    BlockPublicAccessConfigurationState? state,
  }) {
    return BlockPublicAccessConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BlockPublicAccessConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:emr/blockPublicAccessConfiguration:BlockPublicAccessConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.blockPublicSecurityGroupRules = registerOutput<bool>('blockPublicSecurityGroupRules');
    this.permittedPublicSecurityGroupRuleRanges = registerOutput<List<BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange>?>('permittedPublicSecurityGroupRuleRanges');
    this.region = registerOutput<String>('region');
  }
}
