import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_lib_args.dart';

/// Provides a Aligreen Image Lib resource.
///
/// Image library for image detection.
///
/// For information about Aligreen Image Lib and how to use it, see [What is Image Lib](https://next.api.alibabacloud.com/document/Green/2017-08-23/CreateImageLib).
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
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform";
/// const defaultUalunB = new alicloud.aligreen.BizType("defaultUalunB", {bizTypeName: name});
/// const _default = new alicloud.aligreen.ImageLib("default", {
///     category: "BLACK",
///     enable: true,
///     scene: "PORN",
///     imageLibName: name,
///     bizTypes: [defaultUalunB.bizTypeName],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform"
/// default_ualun_b = alicloud.aligreen.BizType("defaultUalunB", biz_type_name=name)
/// default = alicloud.aligreen.ImageLib("default",
///     category="BLACK",
///     enable=True,
///     scene="PORN",
///     image_lib_name=name,
///     biz_types=[default_ualun_b.biz_type_name])
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
///     var name = config.Get("name") ?? "terraform";
///     var defaultUalunB = new AliCloud.Aligreen.BizType("defaultUalunB", new()
///     {
///         BizTypeName = name,
///     });
///
///     var @default = new AliCloud.Aligreen.ImageLib("default", new()
///     {
///         Category = "BLACK",
///         Enable = true,
///         Scene = "PORN",
///         ImageLibName = name,
///         BizTypes = new[]
///         {
///             defaultUalunB.BizTypeName,
///         },
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
/// 		name := "terraform"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		defaultUalunB, err := aligreen.NewBizType(ctx, "defaultUalunB", &aligreen.BizTypeArgs{
/// 			BizTypeName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = aligreen.NewImageLib(ctx, "default", &aligreen.ImageLibArgs{
/// 			Category:     pulumi.String("BLACK"),
/// 			Enable:       pulumi.Bool(true),
/// 			Scene:        pulumi.String("PORN"),
/// 			ImageLibName: pulumi.String(name),
/// 			BizTypes: pulumi.StringArray{
/// 				defaultUalunB.BizTypeName,
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
/// import com.pulumi.alicloud.aligreen.BizType;
/// import com.pulumi.alicloud.aligreen.BizTypeArgs;
/// import com.pulumi.alicloud.aligreen.ImageLib;
/// import com.pulumi.alicloud.aligreen.ImageLibArgs;
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
///         var defaultUalunB = new BizType("defaultUalunB", BizTypeArgs.builder()
///             .bizTypeName(name)
///             .build());
///
///         var default_ = new ImageLib("default", ImageLibArgs.builder()
///             .category("BLACK")
///             .enable(true)
///             .scene("PORN")
///             .imageLibName(name)
///             .bizTypes(defaultUalunB.bizTypeName())
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
///   defaultUalunB:
///     type: alicloud:aligreen:BizType
///     properties:
///       bizTypeName: ${name}
///   default:
///     type: alicloud:aligreen:ImageLib
///     properties:
///       category: BLACK
///       enable: true
///       scene: PORN
///       imageLibName: ${name}
///       bizTypes:
///         - ${defaultUalunB.bizTypeName}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Aligreen Image Lib can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:aligreen/imageLib:ImageLib example <id>
/// ```
class ImageLib extends pulumi.CustomResource {
  /// List of business scenarios. For example: ["bizTypeA", "bizTypeB", "bizTypeC"]
  late final pulumi.Output<List<String>?> bizTypes;
  /// The category of the image library. Valid values: BLACK: a blacklist, WHITE: a whitelist, REVIEW: a review list
  late final pulumi.Output<String> category;
  /// Specifies whether to enable the image library. Valid values: true: Enable the image library. This is the default value. false: Disable the image library.
  late final pulumi.Output<bool> enable;
  /// The name of the image library defined by the customer. It can contain no more than 20 characters in Chinese, English, and underscore (_).
  late final pulumi.Output<String> imageLibName;
  /// The moderation scenario to which the custom image library applies. Valid values: PORN: pornography detection, AD: ad detection, ILLEGAL: terrorist content detection
  late final pulumi.Output<String> scene;

  /// Creates a new [ImageLib].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImageLib]. {@macro pulumi_aligreen_image_lib_image_lib_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImageLib(
    String name, {
    ImageLibArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:aligreen/imageLib:ImageLib',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bizTypes = registerOutput<List<String>?>('bizTypes');
    this.category = registerOutput<String>('category');
    this.enable = registerOutput<bool>('enable');
    this.imageLibName = registerOutput<String>('imageLibName');
    this.scene = registerOutput<String>('scene');
  }
}
