import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_args.dart';
import 'template_state.dart';

/// Provides a OOS Template resource. For information about Alicloud OOS Template and how to use it, see [What is Resource Alicloud OOS Template](https://www.alibabacloud.com/help/doc-detail/120761.htm).
///
/// &gt; **NOTE:** Available since v1.92.0.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const example = new alicloud.oos.Template("example", {
///     content: `  {
///     \\"FormatVersion\\": \\"OOS-2019-06-01\\",
///     \\"Description\\": \\"Update Describe instances of given status\\",
///     \\"Parameters\\":{
///       \\"Status\\":{
///         \\"Type\\": \\"String\\",
///         \\"Description\\": \\"(Required) The status of the Ecs instance.\\"
///       }
///     },
///     \\"Tasks\\": [
///       {
///         \\"Properties\\" :{
///           \\"Parameters\\":{
///             \\"Status\\": \\"{{ Status }}\\"
///           },
///           \\"API\\": \\"DescribeInstances\\",
///           \\"Service\\": \\"Ecs\\"
///         },
///         \\"Name\\": \\"foo\\",
///         \\"Action\\": \\"ACS::ExecuteApi\\"
///       }]
///   }
/// `,
///     templateName: `tf-example-name-${_default.result}`,
///     versionName: "example",
///     tags: {
///         Created: "TF",
///         For: "acceptance Test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// example = alicloud.oos.Template("example",
///     content="""  {
///     \"FormatVersion\": \"OOS-2019-06-01\",
///     \"Description\": \"Update Describe instances of given status\",
///     \"Parameters\":{
///       \"Status\":{
///         \"Type\": \"String\",
///         \"Description\": \"(Required) The status of the Ecs instance.\"
///       }
///     },
///     \"Tasks\": [
///       {
///         \"Properties\" :{
///           \"Parameters\":{
///             \"Status\": \"{{ Status }}\"
///           },
///           \"API\": \"DescribeInstances\",
///           \"Service\": \"Ecs\"
///         },
///         \"Name\": \"foo\",
///         \"Action\": \"ACS::ExecuteApi\"
///       }]
///   }
/// """,
///     template_name=f"tf-example-name-{default['result']}",
///     version_name="example",
///     tags={
///         "Created": "TF",
///         "For": "acceptance Test",
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
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var example = new AliCloud.Oos.Template("example", new()
///     {
///         Content = @"  {
///     \""FormatVersion\"": \""OOS-2019-06-01\"",
///     \""Description\"": \""Update Describe instances of given status\"",
///     \""Parameters\"":{
///       \""Status\"":{
///         \""Type\"": \""String\"",
///         \""Description\"": \""(Required) The status of the Ecs instance.\""
///       }
///     },
///     \""Tasks\"": [
///       {
///         \""Properties\"" :{
///           \""Parameters\"":{
///             \""Status\"": \""{{ Status }}\""
///           },
///           \""API\"": \""DescribeInstances\"",
///           \""Service\"": \""Ecs\""
///         },
///         \""Name\"": \""foo\"",
///         \""Action\"": \""ACS::ExecuteApi\""
///       }]
///   }
/// ",
///         TemplateName = $"tf-example-name-{@default.Result}",
///         VersionName = "example",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "acceptance Test" },
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oos"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oos.NewTemplate(ctx, "example", &oos.TemplateArgs{
/// 			Content: pulumi.String(`  {
///     \"FormatVersion\": \"OOS-2019-06-01\",
///     \"Description\": \"Update Describe instances of given status\",
///     \"Parameters\":{
///       \"Status\":{
///         \"Type\": \"String\",
///         \"Description\": \"(Required) The status of the Ecs instance.\"
///       }
///     },
///     \"Tasks\": [
///       {
///         \"Properties\" :{
///           \"Parameters\":{
///             \"Status\": \"{{ Status }}\"
///           },
///           \"API\": \"DescribeInstances\",
///           \"Service\": \"Ecs\"
///         },
///         \"Name\": \"foo\",
///         \"Action\": \"ACS::ExecuteApi\"
///       }]
///   }
/// `),
/// 			TemplateName: pulumi.Sprintf("tf-example-name-%v", _default.Result),
/// 			VersionName:  pulumi.String("example"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("acceptance Test"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.oos.Template;
/// import com.pulumi.alicloud.oos.TemplateArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var example = new Template("example", TemplateArgs.builder()
///             .content("""
///   {
///     \"FormatVersion\": \"OOS-2019-06-01\",
///     \"Description\": \"Update Describe instances of given status\",
///     \"Parameters\":{
///       \"Status\":{
///         \"Type\": \"String\",
///         \"Description\": \"(Required) The status of the Ecs instance.\"
///       }
///     },
///     \"Tasks\": [
///       {
///         \"Properties\" :{
///           \"Parameters\":{
///             \"Status\": \"{{ Status }}\"
///           },
///           \"API\": \"DescribeInstances\",
///           \"Service\": \"Ecs\"
///         },
///         \"Name\": \"foo\",
///         \"Action\": \"ACS::ExecuteApi\"
///       }]
///   }
///             """)
///             .templateName(String.format("tf-example-name-%s", default_.result()))
///             .versionName("example")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "acceptance Test")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   example:
///     type: alicloud:oos:Template
///     properties:
///       content: |2
///           {
///             \"FormatVersion\": \"OOS-2019-06-01\",
///             \"Description\": \"Update Describe instances of given status\",
///             \"Parameters\":{
///               \"Status\":{
///                 \"Type\": \"String\",
///                 \"Description\": \"(Required) The status of the Ecs instance.\"
///               }
///             },
///             \"Tasks\": [
///               {
///                 \"Properties\" :{
///                   \"Parameters\":{
///                     \"Status\": \"{{ Status }}\"
///                   },
///                   \"API\": \"DescribeInstances\",
///                   \"Service\": \"Ecs\"
///                 },
///                 \"Name\": \"foo\",
///                 \"Action\": \"ACS::ExecuteApi\"
///               }]
///           }
///       templateName: tf-example-name-${default.result}
///       versionName: example
///       tags:
///         Created: TF
///         For: acceptance Test
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OOS Template can be imported using the id or template_name, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oos/template:Template example template_name
/// ```
class Template extends pulumi.CustomResource {
  /// When deleting a template, whether to delete its related executions. Default to `false`.
  late final pulumi.Output<bool?> autoDeleteExecutions;

  /// The content of the template. The template must be in the JSON or YAML format. Maximum size: 64 KB.
  late final pulumi.Output<String> content;

  /// The creator of the template.
  late final pulumi.Output<String> createdBy;

  /// The time when the template is created.
  late final pulumi.Output<String> createdDate;

  /// The description of the template.
  late final pulumi.Output<String> description;

  /// Is it triggered successfully.
  late final pulumi.Output<bool> hasTrigger;

  /// The ID of resource group which the template belongs.
  late final pulumi.Output<String> resourceGroupId;

  /// The sharing type of the template. The sharing type of templates created by users are set to Private. The sharing type of common templates provided by OOS are set to Public.
  late final pulumi.Output<String> shareType;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The format of the template. The format can be JSON or YAML. The system automatically identifies the format.
  late final pulumi.Output<String> templateFormat;

  /// The id of OOS Template.
  late final pulumi.Output<String> templateId;

  /// The name of the template. The template name can be up to 200 characters in length. The name can contain letters, digits, hyphens (-), and underscores (_). It cannot start with `ALIYUN`, `ACS`, `ALIBABA`, or `ALICLOUD`.
  late final pulumi.Output<String> templateName;

  /// The type of OOS Template. `Automation` means the implementation of Alibaba Cloud API template, `Package` means represents a template for installing software.
  late final pulumi.Output<String> templateType;

  /// The version of OOS Template.
  late final pulumi.Output<String> templateVersion;

  /// The user who updated the template.
  late final pulumi.Output<String> updatedBy;

  /// The time when the template was updated.
  late final pulumi.Output<String> updatedDate;

  /// The name of template version.
  late final pulumi.Output<String?> versionName;

  /// Creates a new [Template].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Template]. {@macro pulumi_oos_template_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Template(
    String name, {
    TemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:oos/template:Template',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoDeleteExecutions = registerOutput<bool?>('autoDeleteExecutions');
    content = registerOutput<String>('content');
    createdBy = registerOutput<String>('createdBy');
    createdDate = registerOutput<String>('createdDate');
    description = registerOutput<String>('description');
    hasTrigger = registerOutput<bool>('hasTrigger');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    shareType = registerOutput<String>('shareType');
    tags = registerOutput<Map<String, String>?>('tags');
    templateFormat = registerOutput<String>('templateFormat');
    templateId = registerOutput<String>('templateId');
    templateName = registerOutput<String>('templateName');
    templateType = registerOutput<String>('templateType');
    templateVersion = registerOutput<String>('templateVersion');
    updatedBy = registerOutput<String>('updatedBy');
    updatedDate = registerOutput<String>('updatedDate');
    versionName = registerOutput<String?>('versionName');
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
         'alicloud:oos/template:Template',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoDeleteExecutions = registerOutput<bool?>('autoDeleteExecutions');
    content = registerOutput<String>('content');
    createdBy = registerOutput<String>('createdBy');
    createdDate = registerOutput<String>('createdDate');
    description = registerOutput<String>('description');
    hasTrigger = registerOutput<bool>('hasTrigger');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    shareType = registerOutput<String>('shareType');
    tags = registerOutput<Map<String, String>?>('tags');
    templateFormat = registerOutput<String>('templateFormat');
    templateId = registerOutput<String>('templateId');
    templateName = registerOutput<String>('templateName');
    templateType = registerOutput<String>('templateType');
    templateVersion = registerOutput<String>('templateVersion');
    updatedBy = registerOutput<String>('updatedBy');
    updatedDate = registerOutput<String>('updatedDate');
    versionName = registerOutput<String?>('versionName');
  }
}
