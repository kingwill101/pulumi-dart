import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_website_args.dart';
import 'bucket_website_error_document.dart';
import 'bucket_website_index_document.dart';
import 'bucket_website_routing_rules.dart';
import 'bucket_website_state.dart';

/// Provides a OSS Bucket Website resource.
///
/// the static website configuration and mirror configuration of the bucket.
///
/// For information about OSS Bucket Website and how to use it, see [What is Bucket Website](https://www.alibabacloud.com/help/en/oss/developer-reference/putbucketwebsite).
///
/// &gt; **NOTE:** Available since v1.237.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Uuid("default", {});
/// const defaultnVj9x3 = new alicloud.oss.Bucket("defaultnVj9x3", {
///     bucket: `${name}-${_default.result}`,
///     storageClass: "Standard",
/// });
/// const defaultBucketWebsite = new alicloud.oss.BucketWebsite("default", {
///     indexDocument: {
///         suffix: "index.html",
///         supportSubDir: true,
///         type: "0",
///     },
///     errorDocument: {
///         key: "error.html",
///         httpStatus: 404,
///     },
///     bucket: defaultnVj9x3.bucket,
///     routingRules: {
///         routingRules: [{
///             ruleNumber: 1,
///             condition: {
///                 httpErrorCodeReturnedEquals: "404",
///             },
///             redirect: {
///                 protocol: "https",
///                 httpRedirectCode: "305",
///                 redirectType: "AliCDN",
///                 hostName: "www.alicdn-master.com",
///             },
///             luaConfig: {
///                 script: "example.lua",
///             },
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = random.index.Uuid("default")
/// defaultn_vj9x3 = alicloud.oss.Bucket("defaultnVj9x3",
///     bucket=f"{name}-{default['result']}",
///     storage_class="Standard")
/// default_bucket_website = alicloud.oss.BucketWebsite("default",
///     index_document={
///         "suffix": "index.html",
///         "support_sub_dir": True,
///         "type": "0",
///     },
///     error_document={
///         "key": "error.html",
///         "http_status": 404,
///     },
///     bucket=defaultn_vj9x3.bucket,
///     routing_rules={
///         "routing_rules": [{
///             "rule_number": 1,
///             "condition": {
///                 "http_error_code_returned_equals": "404",
///             },
///             "redirect": {
///                 "protocol": "https",
///                 "http_redirect_code": "305",
///                 "redirect_type": "AliCDN",
///                 "host_name": "www.alicdn-master.com",
///             },
///             "lua_config": {
///                 "script": "example.lua",
///             },
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new Random.Index.Uuid("default");
///
///     var defaultnVj9x3 = new AliCloud.Oss.Bucket("defaultnVj9x3", new()
///     {
///         BucketName = $"{name}-{@default.Result}",
///         StorageClass = "Standard",
///     });
///
///     var defaultBucketWebsite = new AliCloud.Oss.BucketWebsite("default", new()
///     {
///         IndexDocument = new AliCloud.Oss.Inputs.BucketWebsiteIndexDocumentArgs
///         {
///             Suffix = "index.html",
///             SupportSubDir = true,
///             Type = "0",
///         },
///         ErrorDocument = new AliCloud.Oss.Inputs.BucketWebsiteErrorDocumentArgs
///         {
///             Key = "error.html",
///             HttpStatus = 404,
///         },
///         Bucket = defaultnVj9x3.BucketName,
///         RoutingRules = new AliCloud.Oss.Inputs.BucketWebsiteRoutingRulesArgs
///         {
///             RoutingRules = new[]
///             {
///                 new AliCloud.Oss.Inputs.BucketWebsiteRoutingRulesRoutingRuleArgs
///                 {
///                     RuleNumber = 1,
///                     Condition = new AliCloud.Oss.Inputs.BucketWebsiteRoutingRulesRoutingRuleConditionArgs
///                     {
///                         HttpErrorCodeReturnedEquals = "404",
///                     },
///                     Redirect = new AliCloud.Oss.Inputs.BucketWebsiteRoutingRulesRoutingRuleRedirectArgs
///                     {
///                         Protocol = "https",
///                         HttpRedirectCode = "305",
///                         RedirectType = "AliCDN",
///                         HostName = "www.alicdn-master.com",
///                     },
///                     LuaConfig = new AliCloud.Oss.Inputs.BucketWebsiteRoutingRulesRoutingRuleLuaConfigArgs
///                     {
///                         Script = "example.lua",
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := random.NewUuid(ctx, "default", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultnVj9x3, err := oss.NewBucket(ctx, "defaultnVj9x3", &oss.BucketArgs{
/// 			Bucket:       pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			StorageClass: pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketWebsite(ctx, "default", &oss.BucketWebsiteArgs{
/// 			IndexDocument: &oss.BucketWebsiteIndexDocumentArgs{
/// 				Suffix:        pulumi.String("index.html"),
/// 				SupportSubDir: pulumi.Bool(true),
/// 				Type:          pulumi.String("0"),
/// 			},
/// 			ErrorDocument: &oss.BucketWebsiteErrorDocumentArgs{
/// 				Key:        pulumi.String("error.html"),
/// 				HttpStatus: pulumi.Int(404),
/// 			},
/// 			Bucket: defaultnVj9x3.Bucket,
/// 			RoutingRules: &oss.BucketWebsiteRoutingRulesArgs{
/// 				RoutingRules: oss.BucketWebsiteRoutingRulesRoutingRuleArray{
/// 					&oss.BucketWebsiteRoutingRulesRoutingRuleArgs{
/// 						RuleNumber: pulumi.Int(1),
/// 						Condition: &oss.BucketWebsiteRoutingRulesRoutingRuleConditionArgs{
/// 							HttpErrorCodeReturnedEquals: pulumi.String("404"),
/// 						},
/// 						Redirect: &oss.BucketWebsiteRoutingRulesRoutingRuleRedirectArgs{
/// 							Protocol:         pulumi.String("https"),
/// 							HttpRedirectCode: pulumi.String("305"),
/// 							RedirectType:     pulumi.String("AliCDN"),
/// 							HostName:         pulumi.String("www.alicdn-master.com"),
/// 						},
/// 						LuaConfig: &oss.BucketWebsiteRoutingRulesRoutingRuleLuaConfigArgs{
/// 							Script: pulumi.String("example.lua"),
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
/// import com.pulumi.random.Uuid;
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.oss.BucketWebsite;
/// import com.pulumi.alicloud.oss.BucketWebsiteArgs;
/// import com.pulumi.alicloud.oss.inputs.BucketWebsiteIndexDocumentArgs;
/// import com.pulumi.alicloud.oss.inputs.BucketWebsiteErrorDocumentArgs;
/// import com.pulumi.alicloud.oss.inputs.BucketWebsiteRoutingRulesArgs;
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
///         var default_ = new Uuid("default");
///
///         var defaultnVj9x3 = new Bucket("defaultnVj9x3", BucketArgs.builder()
///             .bucket(String.format("%s-%s", name,default_.result()))
///             .storageClass("Standard")
///             .build());
///
///         var defaultBucketWebsite = new BucketWebsite("defaultBucketWebsite", BucketWebsiteArgs.builder()
///             .indexDocument(BucketWebsiteIndexDocumentArgs.builder()
///                 .suffix("index.html")
///                 .supportSubDir(true)
///                 .type("0")
///                 .build())
///             .errorDocument(BucketWebsiteErrorDocumentArgs.builder()
///                 .key("error.html")
///                 .httpStatus(404)
///                 .build())
///             .bucket(defaultnVj9x3.bucket())
///             .routingRules(BucketWebsiteRoutingRulesArgs.builder()
///                 .routingRules(BucketWebsiteRoutingRulesRoutingRuleArgs.builder()
///                     .ruleNumber(1)
///                     .condition(BucketWebsiteRoutingRulesRoutingRuleConditionArgs.builder()
///                         .httpErrorCodeReturnedEquals("404")
///                         .build())
///                     .redirect(BucketWebsiteRoutingRulesRoutingRuleRedirectArgs.builder()
///                         .protocol("https")
///                         .httpRedirectCode("305")
///                         .redirectType("AliCDN")
///                         .hostName("www.alicdn-master.com")
///                         .build())
///                     .luaConfig(BucketWebsiteRoutingRulesRoutingRuleLuaConfigArgs.builder()
///                         .script("example.lua")
///                         .build())
///                     .build())
///                 .build())
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
///   default:
///     type: random:Uuid
///   defaultnVj9x3:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: ${name}-${default.result}
///       storageClass: Standard
///   defaultBucketWebsite:
///     type: alicloud:oss:BucketWebsite
///     name: default
///     properties:
///       indexDocument:
///         suffix: index.html
///         supportSubDir: 'true'
///         type: '0'
///       errorDocument:
///         key: error.html
///         httpStatus: '404'
///       bucket: ${defaultnVj9x3.bucket}
///       routingRules:
///         routingRules:
///           - ruleNumber: '1'
///             condition:
///               httpErrorCodeReturnedEquals: '404'
///             redirect:
///               protocol: https
///               httpRedirectCode: '305'
///               redirectType: AliCDN
///               hostName: www.alicdn-master.com
///             luaConfig:
///               script: example.lua
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OSS Bucket Website can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketWebsite:BucketWebsite example <id>
/// ```
class BucketWebsiteOss extends pulumi.CustomResource {
  /// The name of the bucket
  late final pulumi.Output<String> bucket;

  /// The container that holds the error page configuration information. See `error_document` below.
  late final pulumi.Output<BucketWebsiteErrorDocument?> errorDocument;

  /// Static Website Default Home Page Configuration See `index_document` below.
  late final pulumi.Output<BucketWebsiteIndexDocument?> indexDocument;

  /// The container that holds the jump rule or the mirroring back-to-origin rule. See `routing_rules` below.
  late final pulumi.Output<BucketWebsiteRoutingRules?> routingRules;

  /// Creates a new [BucketWebsiteOss].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketWebsiteOss]. {@macro pulumi_oss_bucket_website_bucket_website_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketWebsiteOss(
    String name, {
    BucketWebsiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:oss/bucketWebsite:BucketWebsite',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bucket = registerOutput<String>('bucket');
    errorDocument = registerOutput<BucketWebsiteErrorDocument?>(
      'errorDocument',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BucketWebsiteErrorDocument.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    indexDocument = registerOutput<BucketWebsiteIndexDocument?>(
      'indexDocument',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BucketWebsiteIndexDocument.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    routingRules = registerOutput<BucketWebsiteRoutingRules?>(
      'routingRules',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BucketWebsiteRoutingRules.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [BucketWebsiteOss] resource's state with the given [name] and [id].
  static BucketWebsiteOss get(
    String name,
    pulumi.Input<String> id, {
    BucketWebsiteState? state,
  }) {
    return BucketWebsiteOss._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketWebsiteOss._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:oss/bucketWebsite:BucketWebsite',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bucket = registerOutput<String>('bucket');
    errorDocument = registerOutput<BucketWebsiteErrorDocument?>(
      'errorDocument',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BucketWebsiteErrorDocument.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    indexDocument = registerOutput<BucketWebsiteIndexDocument?>(
      'indexDocument',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BucketWebsiteIndexDocument.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    routingRules = registerOutput<BucketWebsiteRoutingRules?>(
      'routingRules',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BucketWebsiteRoutingRules.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
