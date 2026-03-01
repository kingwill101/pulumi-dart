import 'package:pulumi/pulumi.dart' as pulumi;
import 'keyword_lib_args.dart';
import 'keyword_lib_state.dart';

/// Provides a Aligreen Keyword Lib resource.
///
/// Keyword library for text detection.
///
/// For information about Aligreen Keyword Lib and how to use it, see [What is Keyword Lib](https://next.api.alibabacloud.com/document/Green/2017-08-23/CreateKeywordLib).
///
/// > **NOTE:** Available since v1.228.0.
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
/// const name = config.get("name") || "terraform";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultMn8sVK = new alicloud.aligreen.BizType("defaultMn8sVK", {
///     bizTypeName: `${name}${_default.result}`,
///     citeTemplate: true,
///     industryInfo: "社交-注册信息-昵称",
/// });
/// const defaultKeywordLib = new alicloud.aligreen.KeywordLib("default", {
///     category: "BLACK",
///     resourceType: "TEXT",
///     libType: "textKeyword",
///     keywordLibName: name,
///     matchMode: "fuzzy",
///     language: "cn",
///     bizTypes: ["example_007"],
///     lang: "cn",
///     enable: true,
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
///     name = "terraform"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_mn8s_vk = alicloud.aligreen.BizType("defaultMn8sVK",
///     biz_type_name=f"{name}{default['result']}",
///     cite_template=True,
///     industry_info="社交-注册信息-昵称")
/// default_keyword_lib = alicloud.aligreen.KeywordLib("default",
///     category="BLACK",
///     resource_type="TEXT",
///     lib_type="textKeyword",
///     keyword_lib_name=name,
///     match_mode="fuzzy",
///     language="cn",
///     biz_types=["example_007"],
///     lang="cn",
///     enable=True)
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
///     var name = config.Get("name") ?? "terraform";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultMn8sVK = new AliCloud.Aligreen.BizType("defaultMn8sVK", new()
///     {
///         BizTypeName = $"{name}{@default.Result}",
///         CiteTemplate = true,
///         IndustryInfo = "社交-注册信息-昵称",
///     });
///
///     var defaultKeywordLib = new AliCloud.Aligreen.KeywordLib("default", new()
///     {
///         Category = "BLACK",
///         ResourceType = "TEXT",
///         LibType = "textKeyword",
///         KeywordLibName = name,
///         MatchMode = "fuzzy",
///         Language = "cn",
///         BizTypes = new[]
///         {
///             "example_007",
///         },
///         Lang = "cn",
///         Enable = true,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/aligreen"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = aligreen.NewBizType(ctx, "defaultMn8sVK", &aligreen.BizTypeArgs{
/// 			BizTypeName:  pulumi.Sprintf("%v%v", name, _default.Result),
/// 			CiteTemplate: pulumi.Bool(true),
/// 			IndustryInfo: pulumi.String("社交-注册信息-昵称"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = aligreen.NewKeywordLib(ctx, "default", &aligreen.KeywordLibArgs{
/// 			Category:       pulumi.String("BLACK"),
/// 			ResourceType:   pulumi.String("TEXT"),
/// 			LibType:        pulumi.String("textKeyword"),
/// 			KeywordLibName: pulumi.String(name),
/// 			MatchMode:      pulumi.String("fuzzy"),
/// 			Language:       pulumi.String("cn"),
/// 			BizTypes: pulumi.StringArray{
/// 				pulumi.String("example_007"),
/// 			},
/// 			Lang:   pulumi.String("cn"),
/// 			Enable: pulumi.Bool(true),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.aligreen.BizType;
/// import com.pulumi.alicloud.aligreen.BizTypeArgs;
/// import com.pulumi.alicloud.aligreen.KeywordLib;
/// import com.pulumi.alicloud.aligreen.KeywordLibArgs;
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
///         final var name = config.get("name").orElse("terraform");
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultMn8sVK = new BizType("defaultMn8sVK", BizTypeArgs.builder()
///             .bizTypeName(String.format("%s%s", name,default_.result()))
///             .citeTemplate(true)
///             .industryInfo("社交-注册信息-昵称")
///             .build());
///
///         var defaultKeywordLib = new KeywordLib("defaultKeywordLib", KeywordLibArgs.builder()
///             .category("BLACK")
///             .resourceType("TEXT")
///             .libType("textKeyword")
///             .keywordLibName(name)
///             .matchMode("fuzzy")
///             .language("cn")
///             .bizTypes("example_007")
///             .lang("cn")
///             .enable(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultMn8sVK:
///     type: alicloud:aligreen:BizType
///     properties:
///       bizTypeName: ${name}${default.result}
///       citeTemplate: true
///       industryInfo: 社交-注册信息-昵称
///   defaultKeywordLib:
///     type: alicloud:aligreen:KeywordLib
///     name: default
///     properties:
///       category: BLACK
///       resourceType: TEXT
///       libType: textKeyword
///       keywordLibName: ${name}
///       matchMode: fuzzy
///       language: cn
///       bizTypes:
///         - example_007
///       lang: cn
///       enable: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Aligreen Keyword Lib can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:aligreen/keywordLib:KeywordLib example <id>
/// ```
class KeywordLib extends pulumi.CustomResource {
  /// The business scenario. Example:["bizTypeA","bizTypeB"]
  late final pulumi.Output<List<String>?> bizTypes;
  /// The category of the text library. Valid values: BLACK: a blacklist. WHITE: a whitelist. REVIEW: a review list
  late final pulumi.Output<String> category;
  /// Specifies whether to enable text library.true: Enable the text library. This is the default value.false: Disable the text library.
  late final pulumi.Output<bool> enable;
  /// The name of the keyword library defined by the customer. It can contain no more than 20 characters in Chinese, English, and underscore (_).
  late final pulumi.Output<String> keywordLibName;
  /// Language.
  late final pulumi.Output<String?> lang;
  /// Language used by the text Library
  late final pulumi.Output<String> language;
  /// The category of the text library in each moderation scenario. Valid values: textKeyword: a text library against which terms in text are matched. similarText: a text library against which text patterns are matched. textKeyword: a text library against which terms extracted from images are matched. voiceText: a text library against which terms converted from audio are matched.
  late final pulumi.Output<String> libType;
  /// The matching method. Valid values:fuzzy: fuzzy match precise: exact match
  late final pulumi.Output<String> matchMode;
  /// The moderation scenario to which the text library applies. Valid values:TEXT: text anti-spam、IMAGE: ad violation detection、VOICE: audio anti-spam
  late final pulumi.Output<String> resourceType;

  /// Creates a new [KeywordLib].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeywordLib]. {@macro pulumi_aligreen_keyword_lib_keyword_lib_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeywordLib(
    String name, {
    KeywordLibArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:aligreen/keywordLib:KeywordLib',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bizTypes = registerOutput<List<String>?>('bizTypes');
    this.category = registerOutput<String>('category');
    this.enable = registerOutput<bool>('enable');
    this.keywordLibName = registerOutput<String>('keywordLibName');
    this.lang = registerOutput<String?>('lang');
    this.language = registerOutput<String>('language');
    this.libType = registerOutput<String>('libType');
    this.matchMode = registerOutput<String>('matchMode');
    this.resourceType = registerOutput<String>('resourceType');
  }

  /// Gets an existing [KeywordLib] resource's state with the given [name] and [id].
  static KeywordLib get(
    String name,
    pulumi.Input<String> id, {
    KeywordLibState? state,
  }) {
    return KeywordLib._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KeywordLib._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:aligreen/keywordLib:KeywordLib',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bizTypes = registerOutput<List<String>?>('bizTypes');
    this.category = registerOutput<String>('category');
    this.enable = registerOutput<bool>('enable');
    this.keywordLibName = registerOutput<String>('keywordLibName');
    this.lang = registerOutput<String?>('lang');
    this.language = registerOutput<String>('language');
    this.libType = registerOutput<String>('libType');
    this.matchMode = registerOutput<String>('matchMode');
    this.resourceType = registerOutput<String>('resourceType');
  }
}
