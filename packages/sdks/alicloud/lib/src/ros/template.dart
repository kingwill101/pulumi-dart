import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_args.dart';
import 'template_state.dart';

/// Provides a ROS Template resource.
///
/// For information about ROS Template and how to use it, see [What is Template](https://www.alibabacloud.com/help/en/doc-detail/141851.htm).
///
/// &gt; **NOTE:** Available in v1.108.0+.
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
/// const example = new alicloud.ros.Template("example", {
///     templateName: "example_value",
///     templateBody: `    {
///     \\t\\"ROSTemplateFormatVersion\\": \\"2015-09-01\\"
///     }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ros.Template("example",
///     template_name="example_value",
///     template_body="""    {
///     \t\"ROSTemplateFormatVersion\": \"2015-09-01\"
///     }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Ros.Template("example", new()
///     {
///         TemplateName = "example_value",
///         TemplateBody = @"    {
///     \t\""ROSTemplateFormatVersion\"": \""2015-09-01\""
///     }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ros"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ros.NewTemplate(ctx, "example", &ros.TemplateArgs{
/// 			TemplateName: pulumi.String("example_value"),
/// 			TemplateBody: pulumi.String("    {\n    \\t\\\"ROSTemplateFormatVersion\\\": \\\"2015-09-01\\\"\n    }\n"),
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
/// import com.pulumi.alicloud.ros.Template;
/// import com.pulumi.alicloud.ros.TemplateArgs;
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
///         var example = new Template("example", TemplateArgs.builder()
///             .templateName("example_value")
///             .templateBody("""
///     {
///     \t\"ROSTemplateFormatVersion\": \"2015-09-01\"
///     }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:ros:Template
///     properties:
///       templateName: example_value
///       templateBody: |2
///             {
///             \t\"ROSTemplateFormatVersion\": \"2015-09-01\"
///             }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ROS Template can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ros/template:Template example <template_id>
/// ```
class Template extends pulumi.CustomResource {
  /// The description of the template. The description can be up to 256 characters in length.
  late final pulumi.Output<String?> description;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The structure that contains the template body. The template body must be 1 to 524,288 bytes in length.  If the length of the template body is longer than required, we recommend that you add parameters to the HTTP POST request body to avoid request failures due to excessive length of URLs.  You must specify one of the TemplateBody and TemplateURL parameters, but you cannot specify both of them.
  late final pulumi.Output<String?> templateBody;

  /// The name of the template. The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.
  late final pulumi.Output<String> templateName;

  /// The template url.
  late final pulumi.Output<String?> templateUrl;

  /// Creates a new [Template].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Template]. {@macro pulumi_ros_template_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Template(
    String name, {
    TemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ros/template:Template',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    tags = registerOutput<Map<String, String>?>('tags');
    templateBody = registerOutput<String?>('templateBody');
    templateName = registerOutput<String>('templateName');
    templateUrl = registerOutput<String?>('templateUrl');
  }

  /// Gets an existing [Template] resource's state with the given [name] and [id].
  static Template get(
    String name,
    pulumi.Input<String> id, {
    TemplateState? state,
  }) {
    return Template._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Template._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ros/template:Template',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    tags = registerOutput<Map<String, String>?>('tags');
    templateBody = registerOutput<String?>('templateBody');
    templateName = registerOutput<String>('templateName');
    templateUrl = registerOutput<String?>('templateUrl');
  }
}
