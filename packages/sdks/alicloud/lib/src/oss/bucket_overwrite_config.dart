import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_overwrite_config_args.dart';
import 'bucket_overwrite_config_rule.dart';
import 'bucket_overwrite_config_state.dart';

/// Provides a OSS Bucket Overwrite Config resource.
///
/// Bucket Overwrite Configuration.
///
/// For information about OSS Bucket Overwrite Config and how to use it, see [What is Bucket Overwrite Config](https://next.api.alibabacloud.com/document/Oss/2019-05-17/PutBucketOverwriteConfig).
///
/// > **NOTE:** Available since v1.271.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const defaultrdrM3m = new alicloud.oss.Bucket("defaultrdrM3m", {storageClass: "Standard"});
/// const _default = new alicloud.oss.BucketOverwriteConfig("default", {
///     bucket: defaultrdrM3m.id,
///     rules: [
///         {
///             id: "rule1",
///             action: "forbid",
///             prefix: "rule1-prefix/",
///             suffix: "rule1-suffix/",
///             principals: {
///                 principals: [
///                     "a",
///                     "b",
///                     "c",
///                 ],
///             },
///         },
///         {
///             id: "rule2",
///             action: "forbid",
///             prefix: "rule2-prefix/",
///             suffix: "rule2-suffix/",
///             principals: {
///                 principals: [
///                     "d",
///                     "e",
///                     "f",
///                 ],
///             },
///         },
///         {
///             id: "rule3",
///             action: "forbid",
///             prefix: "rule3-prefix/",
///             suffix: "rule3-suffix/",
///             principals: {
///                 principals: [
///                     "1",
///                     "2",
///                     "3",
///                 ],
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// defaultrdr_m3m = alicloud.oss.Bucket("defaultrdrM3m", storage_class="Standard")
/// default = alicloud.oss.BucketOverwriteConfig("default",
///     bucket=defaultrdr_m3m.id,
///     rules=[
///         {
///             "id": "rule1",
///             "action": "forbid",
///             "prefix": "rule1-prefix/",
///             "suffix": "rule1-suffix/",
///             "principals": {
///                 "principals": [
///                     "a",
///                     "b",
///                     "c",
///                 ],
///             },
///         },
///         {
///             "id": "rule2",
///             "action": "forbid",
///             "prefix": "rule2-prefix/",
///             "suffix": "rule2-suffix/",
///             "principals": {
///                 "principals": [
///                     "d",
///                     "e",
///                     "f",
///                 ],
///             },
///         },
///         {
///             "id": "rule3",
///             "action": "forbid",
///             "prefix": "rule3-prefix/",
///             "suffix": "rule3-suffix/",
///             "principals": {
///                 "principals": [
///                     "1",
///                     "2",
///                     "3",
///                 ],
///             },
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var defaultrdrM3m = new AliCloud.Oss.Bucket("defaultrdrM3m", new()
///     {
///         StorageClass = "Standard",
///     });
///
///     var @default = new AliCloud.Oss.BucketOverwriteConfig("default", new()
///     {
///         Bucket = defaultrdrM3m.Id,
///         Rules = new[]
///         {
///             new AliCloud.Oss.Inputs.BucketOverwriteConfigRuleArgs
///             {
///                 Id = "rule1",
///                 Action = "forbid",
///                 Prefix = "rule1-prefix/",
///                 Suffix = "rule1-suffix/",
///                 Principals = new AliCloud.Oss.Inputs.BucketOverwriteConfigRulePrincipalsArgs
///                 {
///                     Principals = new[]
///                     {
///                         "a",
///                         "b",
///                         "c",
///                     },
///                 },
///             },
///             new AliCloud.Oss.Inputs.BucketOverwriteConfigRuleArgs
///             {
///                 Id = "rule2",
///                 Action = "forbid",
///                 Prefix = "rule2-prefix/",
///                 Suffix = "rule2-suffix/",
///                 Principals = new AliCloud.Oss.Inputs.BucketOverwriteConfigRulePrincipalsArgs
///                 {
///                     Principals = new[]
///                     {
///                         "d",
///                         "e",
///                         "f",
///                     },
///                 },
///             },
///             new AliCloud.Oss.Inputs.BucketOverwriteConfigRuleArgs
///             {
///                 Id = "rule3",
///                 Action = "forbid",
///                 Prefix = "rule3-prefix/",
///                 Suffix = "rule3-suffix/",
///                 Principals = new AliCloud.Oss.Inputs.BucketOverwriteConfigRulePrincipalsArgs
///                 {
///                     Principals = new[]
///                     {
///                         "1",
///                         "2",
///                         "3",
///                     },
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		defaultrdrM3m, err := oss.NewBucket(ctx, "defaultrdrM3m", &oss.BucketArgs{
/// 			StorageClass: pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketOverwriteConfig(ctx, "default", &oss.BucketOverwriteConfigArgs{
/// 			Bucket: defaultrdrM3m.ID(),
/// 			Rules: oss.BucketOverwriteConfigRuleArray{
/// 				&oss.BucketOverwriteConfigRuleArgs{
/// 					Id:     pulumi.String("rule1"),
/// 					Action: pulumi.String("forbid"),
/// 					Prefix: pulumi.String("rule1-prefix/"),
/// 					Suffix: pulumi.String("rule1-suffix/"),
/// 					Principals: &oss.BucketOverwriteConfigRulePrincipalsArgs{
/// 						Principals: pulumi.StringArray{
/// 							pulumi.String("a"),
/// 							pulumi.String("b"),
/// 							pulumi.String("c"),
/// 						},
/// 					},
/// 				},
/// 				&oss.BucketOverwriteConfigRuleArgs{
/// 					Id:     pulumi.String("rule2"),
/// 					Action: pulumi.String("forbid"),
/// 					Prefix: pulumi.String("rule2-prefix/"),
/// 					Suffix: pulumi.String("rule2-suffix/"),
/// 					Principals: &oss.BucketOverwriteConfigRulePrincipalsArgs{
/// 						Principals: pulumi.StringArray{
/// 							pulumi.String("d"),
/// 							pulumi.String("e"),
/// 							pulumi.String("f"),
/// 						},
/// 					},
/// 				},
/// 				&oss.BucketOverwriteConfigRuleArgs{
/// 					Id:     pulumi.String("rule3"),
/// 					Action: pulumi.String("forbid"),
/// 					Prefix: pulumi.String("rule3-prefix/"),
/// 					Suffix: pulumi.String("rule3-suffix/"),
/// 					Principals: &oss.BucketOverwriteConfigRulePrincipalsArgs{
/// 						Principals: pulumi.StringArray{
/// 							pulumi.String("1"),
/// 							pulumi.String("2"),
/// 							pulumi.String("3"),
/// 						},
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
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.oss.BucketOverwriteConfig;
/// import com.pulumi.alicloud.oss.BucketOverwriteConfigArgs;
/// import com.pulumi.alicloud.oss.inputs.BucketOverwriteConfigRuleArgs;
/// import com.pulumi.alicloud.oss.inputs.BucketOverwriteConfigRulePrincipalsArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var defaultrdrM3m = new Bucket("defaultrdrM3m", BucketArgs.builder()
///             .storageClass("Standard")
///             .build());
///
///         var default_ = new BucketOverwriteConfig("default", BucketOverwriteConfigArgs.builder()
///             .bucket(defaultrdrM3m.id())
///             .rules(
///                 BucketOverwriteConfigRuleArgs.builder()
///                     .id("rule1")
///                     .action("forbid")
///                     .prefix("rule1-prefix/")
///                     .suffix("rule1-suffix/")
///                     .principals(BucketOverwriteConfigRulePrincipalsArgs.builder()
///                         .principals(
///                             "a",
///                             "b",
///                             "c")
///                         .build())
///                     .build(),
///                 BucketOverwriteConfigRuleArgs.builder()
///                     .id("rule2")
///                     .action("forbid")
///                     .prefix("rule2-prefix/")
///                     .suffix("rule2-suffix/")
///                     .principals(BucketOverwriteConfigRulePrincipalsArgs.builder()
///                         .principals(
///                             "d",
///                             "e",
///                             "f")
///                         .build())
///                     .build(),
///                 BucketOverwriteConfigRuleArgs.builder()
///                     .id("rule3")
///                     .action("forbid")
///                     .prefix("rule3-prefix/")
///                     .suffix("rule3-suffix/")
///                     .principals(BucketOverwriteConfigRulePrincipalsArgs.builder()
///                         .principals(
///                             "1",
///                             "2",
///                             "3")
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultrdrM3m:
///     type: alicloud:oss:Bucket
///     properties:
///       storageClass: Standard
///   default:
///     type: alicloud:oss:BucketOverwriteConfig
///     properties:
///       bucket: ${defaultrdrM3m.id}
///       rules:
///         - id: rule1
///           action: forbid
///           prefix: rule1-prefix/
///           suffix: rule1-suffix/
///           principals:
///             principals:
///               - a
///               - b
///               - c
///         - id: rule2
///           action: forbid
///           prefix: rule2-prefix/
///           suffix: rule2-suffix/
///           principals:
///             principals:
///               - d
///               - e
///               - f
///         - id: rule3
///           action: forbid
///           prefix: rule3-prefix/
///           suffix: rule3-suffix/
///           principals:
///             principals:
///               - '1'
///               - '2'
///               - '3'
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OSS Bucket Overwrite Config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketOverwriteConfig:BucketOverwriteConfig example <bucket>
/// ```
class BucketOverwriteConfig extends pulumi.CustomResource {
  /// The name of the bucket
  late final pulumi.Output<String> bucket;
  /// Forbid overwrite rule See `rule` below.
  late final pulumi.Output<List<BucketOverwriteConfigRule>?> rules;

  /// Creates a new [BucketOverwriteConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketOverwriteConfig]. {@macro pulumi_oss_bucket_overwrite_config_bucket_overwrite_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketOverwriteConfig(
    String name, {
    BucketOverwriteConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketOverwriteConfig:BucketOverwriteConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.rules = registerOutput<List<BucketOverwriteConfigRule>?>('rules');
  }

  /// Gets an existing [BucketOverwriteConfig] resource's state with the given [name] and [id].
  static BucketOverwriteConfig get(
    String name,
    pulumi.Input<String> id, {
    BucketOverwriteConfigState? state,
  }) {
    return BucketOverwriteConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketOverwriteConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketOverwriteConfig:BucketOverwriteConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.rules = registerOutput<List<BucketOverwriteConfigRule>?>('rules');
  }
}
