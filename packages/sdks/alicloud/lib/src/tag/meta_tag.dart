import 'package:pulumi/pulumi.dart' as pulumi;
import 'meta_tag_args.dart';
import 'meta_tag_state.dart';

/// Provides a Tag Meta Tag resource.
///
/// For information about Tag Meta Tag and how to use it,
/// see [What is Meta Tag](https://www.alibabacloud.com/help/en/resource-management/latest/createtags).
///
/// &gt; **NOTE:** Available since v1.209.0.
///
/// &gt; **NOTE:** Meta Tag Only Support `cn-hangzhou` Region
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
/// const example = new alicloud.tag.MetaTag("example", {
///     key: "Name1",
///     values: ["Desc2"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.tag.MetaTag("example",
///     key="Name1",
///     values=["Desc2"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Tag.MetaTag("example", new()
///     {
///         Key = "Name1",
///         Values = new[]
///         {
///             "Desc2",
///         },
///     });
///
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
/// 		_, err := tag.NewMetaTag(ctx, "example", &tag.MetaTagArgs{
/// 			Key: pulumi.String("Name1"),
/// 			Values: pulumi.StringArray{
/// 				pulumi.String("Desc2"),
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
/// import com.pulumi.alicloud.tag.MetaTag;
/// import com.pulumi.alicloud.tag.MetaTagArgs;
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
///         var example = new MetaTag("example", MetaTagArgs.builder()
///             .key("Name1")
///             .values("Desc2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:tag:MetaTag
///     properties:
///       key: Name1
///       values:
///         - Desc2
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Tag Meta Tag can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:tag/metaTag:MetaTag example <regionId>:<key>
/// ```
class MetaTag extends pulumi.CustomResource {
  /// The key of the tag meta tag. key must be 1 to 128 characters in length.
  late final pulumi.Output<String> key;
  /// The values of the tag meta tag.
  late final pulumi.Output<List<String>> values;

  /// Creates a new [MetaTag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MetaTag]. {@macro pulumi_tag_meta_tag_meta_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MetaTag(
    String name, {
    MetaTagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:tag/metaTag:MetaTag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    key = registerOutput<String>('key');
    values = registerOutput<List<String>>('values');
  }

  /// Gets an existing [MetaTag] resource's state with the given [name] and [id].
  static MetaTag get(
    String name,
    pulumi.Input<String> id, {
    MetaTagState? state,
  }) {
    return MetaTag._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MetaTag._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:tag/metaTag:MetaTag',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    key = registerOutput<String>('key');
    values = registerOutput<List<String>>('values');
  }
}
