import 'package:pulumi/pulumi.dart' as pulumi;
import 'biz_type_args.dart';
import 'biz_type_state.dart';

/// Provides a Aligreen Biz Type resource.
///
///
///
/// For information about Aligreen Biz Type and how to use it, see [What is Biz Type](https://next.api.alibabacloud.com/document/Green/2017-08-23/CreateBizType).
///
/// &gt; **NOTE:** Available since v1.228.0.
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
/// const name = config.get("name") || "terraform_example";
/// const _default = new alicloud.aligreen.BizType("default", {
///     bizTypeName: name,
///     description: name,
///     citeTemplate: true,
///     industryInfo: "社交-注册信息-昵称",
///     bizTypeImport: "1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform_example"
/// default = alicloud.aligreen.BizType("default",
///     biz_type_name=name,
///     description=name,
///     cite_template=True,
///     industry_info="社交-注册信息-昵称",
///     biz_type_import="1")
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
///     var name = config.Get("name") ?? "terraform_example";
///     var @default = new AliCloud.Aligreen.BizType("default", new()
///     {
///         BizTypeName = name,
///         Description = name,
///         CiteTemplate = true,
///         IndustryInfo = "社交-注册信息-昵称",
///         BizTypeImport = "1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/aligreen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := aligreen.NewBizType(ctx, "default", &aligreen.BizTypeArgs{
/// 			BizTypeName:   pulumi.String(name),
/// 			Description:   pulumi.String(name),
/// 			CiteTemplate:  pulumi.Bool(true),
/// 			IndustryInfo:  pulumi.String("社交-注册信息-昵称"),
/// 			BizTypeImport: pulumi.String("1"),
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
/// import com.pulumi.alicloud.aligreen.BizType;
/// import com.pulumi.alicloud.aligreen.BizTypeArgs;
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
///         final var name = config.get("name").orElse("terraform_example");
///         var default_ = new BizType("default", BizTypeArgs.builder()
///             .bizTypeName(name)
///             .description(name)
///             .citeTemplate(true)
///             .industryInfo("社交-注册信息-昵称")
///             .bizTypeImport("1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform_example
/// resources:
///   default:
///     type: alicloud:aligreen:BizType
///     properties:
///       bizTypeName: ${name}
///       description: ${name}
///       citeTemplate: true
///       industryInfo: 社交-注册信息-昵称
///       bizTypeImport: '1'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Aligreen Biz Type can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:aligreen/bizType:BizType example <id>
/// ```
class BizType extends pulumi.CustomResource {
  /// The name of the existing business scenario that was imported from when the business scenario was created.
  late final pulumi.Output<String?> bizTypeImport;
  /// The name of the business scenario defined by the customer. It can contain no more than 32 characters in English, numbers, and underscores.
  late final pulumi.Output<String> bizTypeName;
  /// Specifies whether to import the configuration of an industry template. Default value: false. Valid values: true: imports the configuration of an industry template. false: does not import the configuration of an industry template. If the value is true, you must specify the industryInfo parameter.
  late final pulumi.Output<bool?> citeTemplate;
  /// The description of the business scenario defined by the customer, which is a combination of Chinese and English, numbers, and underscores, and cannot exceed 32 characters.
  late final pulumi.Output<String?> description;
  /// The industry classification. Valid values: Social-Registration information-Profile picture Social-Registration information-Nickname Social-Registration information-Bio Social-Instant messaging-Chat Social-Instant messaging-Group chat Social-Instant messaging-Chat room Social-Forums&Communities-Post Social-Forums&Communities-Comment Social-Forums&Communities-Tag Social-Forums&Communities-Recommendation Multimedia-Registration information-Profile picture Multimedia-Registration information-Nickname Multimedia-Registration information-Bio Multimedia-Instant messaging-Chat Multimedia-Live streaming-Heading Multimedia-Live streaming-Cover Multimedia-Live streaming-Content Multimedia-Live streaming-Comment Multimedia-Online storage-Storage content Multimedia-Online storage-Shared content Gaming-Registration information-Nickname Gaming-Registration information-Profile picture Gaming-Registration information-Signature Gaming-Instant messaging-Chat Gaming-Instant messaging-Group chat Gaming-Instant messaging-Chat room Gaming-Forums&Communities-Post Gaming-Forums&Communities-Comment Gaming-Forums&Communities-Tag Gaming-Forums&Communities-Recommendation New retail-Goods-Heading New retail-Goods-Description Reading-Books-Title Reading-Books-Heading Reading-Books-Cover Reading-Books-Content Media-News content-News content Education-Registration information-Nickname Education-Registration information-Profile picture Education-Registration information-Bio Gaming-Instant messaging-Chat Gaming-Forums&Communities-Post Education-Forums&Communities-Comment Education-Forums&Communities-Tag Education-Forums&Communities-Recommendation Education-Customer service-Voice call Others
  late final pulumi.Output<String?> industryInfo;

  /// Creates a new [BizType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BizType]. {@macro pulumi_aligreen_biz_type_biz_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BizType(
    String name, {
    BizTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:aligreen/bizType:BizType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bizTypeImport = registerOutput<String?>('bizTypeImport');
    bizTypeName = registerOutput<String>('bizTypeName');
    citeTemplate = registerOutput<bool?>('citeTemplate');
    description = registerOutput<String?>('description');
    industryInfo = registerOutput<String?>('industryInfo');
  }

  /// Gets an existing [BizType] resource's state with the given [name] and [id].
  static BizType get(
    String name,
    pulumi.Input<String> id, {
    BizTypeState? state,
  }) {
    return BizType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BizType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:aligreen/bizType:BizType',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bizTypeImport = registerOutput<String?>('bizTypeImport');
    bizTypeName = registerOutput<String>('bizTypeName');
    citeTemplate = registerOutput<bool?>('citeTemplate');
    description = registerOutput<String?>('description');
    industryInfo = registerOutput<String?>('industryInfo');
  }
}
