import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_meta_tags_args.dart';
import 'get_meta_tags_result.dart';

/// This data source provides the Tag Meta Tags of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.169.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.tag.getMetaTags({
///     keyName: "example_value",
/// });
/// export const tagMetaTagDefault1 = _default.then(_default => _default.tags?.valueName);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.tag.get_meta_tags(key_name="example_value")
/// pulumi.export("tagMetaTagDefault1", default.tags.value_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Tag.GetMetaTags.Invoke(new()
///     {
///         KeyName = "example_value",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["tagMetaTagDefault1"] = @default.Apply(@default => @default.Apply(getMetaTagsResult => getMetaTagsResult.Tags?.ValueName)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/tag"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := tag.GetMetaTags(ctx, &tag.GetMetaTagsArgs{
/// 			KeyName: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("tagMetaTagDefault1", _default.Tags.ValueName)
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
/// import com.pulumi.alicloud.tag.TagFunctions;
/// import com.pulumi.alicloud.tag.inputs.GetMetaTagsArgs;
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
///         final var default = TagFunctions.getMetaTags(GetMetaTagsArgs.builder()
///             .keyName("example_value")
///             .build());
///
///         ctx.export("tagMetaTagDefault1", default_.tags().valueName());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:tag:getMetaTags
///       arguments:
///         keyName: example_value
/// outputs:
///   tagMetaTagDefault1: ${default.tags.valueName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_tag_get_meta_tags_get_meta_tags_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetaTagsResult> getMetaTags(
  GetMetaTagsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:tag/getMetaTags:getMetaTags',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetaTagsResult.fromMap(result);
}
