import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_args.dart';
import 'execution_state.dart';

/// Provides a OOS Execution resource. For information about Alicloud OOS Execution and how to use it, see [What is Resource Alicloud OOS Execution](https://www.alibabacloud.com/help/doc-detail/120771.htm).
///
/// &gt; **NOTE:** Available since v1.93.0.
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
/// const defaultTemplate = new alicloud.oos.Template("default", {
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
/// const example = new alicloud.oos.Execution("example", {
///     templateName: defaultTemplate.templateName,
///     description: "From TF Test",
///     parameters: "\\t\\t\\t\\t{\\\"Status\\\":\\\"Running\\\"}\n",
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
/// default_template = alicloud.oos.Template("default",
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
/// example = alicloud.oos.Execution("example",
///     template_name=default_template.template_name,
///     description="From TF Test",
///     parameters="\\t\\t\\t\\t{\\\"Status\\\":\\\"Running\\\"}\n")
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
///     var defaultTemplate = new AliCloud.Oos.Template("default", new()
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
///     var example = new AliCloud.Oos.Execution("example", new()
///     {
///         TemplateName = defaultTemplate.TemplateName,
///         Description = "From TF Test",
///         Parameters = @"\t\t\t\t{\""Status\"":\""Running\""}
/// ",
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
/// 		defaultTemplate, err := oos.NewTemplate(ctx, "default", &oos.TemplateArgs{
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
/// 		_, err = oos.NewExecution(ctx, "example", &oos.ExecutionArgs{
/// 			TemplateName: defaultTemplate.TemplateName,
/// 			Description:  pulumi.String("From TF Test"),
/// 			Parameters:   pulumi.String("\\t\\t\\t\\t{\\\"Status\\\":\\\"Running\\\"}\n"),
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
/// import com.pulumi.alicloud.oos.Execution;
/// import com.pulumi.alicloud.oos.ExecutionArgs;
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
///         var defaultTemplate = new Template("defaultTemplate", TemplateArgs.builder()
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
///         var example = new Execution("example", ExecutionArgs.builder()
///             .templateName(defaultTemplate.templateName())
///             .description("From TF Test")
///             .parameters("""
/// \t\t\t\t{\"Status\":\"Running\"}
///             """)
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
///   defaultTemplate:
///     type: alicloud:oos:Template
///     name: default
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
///   example:
///     type: alicloud:oos:Execution
///     properties:
///       templateName: ${defaultTemplate.templateName}
///       description: From TF Test
///       parameters: |
///         \t\t\t\t{\"Status\":\"Running\"}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OOS Execution can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oos/execution:Execution example exec-ef6xxxx
/// ```
class Execution extends pulumi.CustomResource {
  /// The counters of OOS Execution.
  late final pulumi.Output<String> counters;
  /// The time when the execution was created.
  late final pulumi.Output<String> createDate;
  /// The description of OOS Execution.
  late final pulumi.Output<String?> description;
  /// The time when the execution was ended.
  late final pulumi.Output<String> endDate;
  /// The user who execute the template.
  late final pulumi.Output<String> executedBy;
  /// Whether to include subtasks.
  late final pulumi.Output<bool> isParent;
  /// The loop mode of OOS Execution.
  late final pulumi.Output<String?> loopMode;
  /// The mode of OOS Execution. Valid: `Automatic`, `Debug`. Default to `Automatic`.
  late final pulumi.Output<String?> mode;
  /// The outputs of OOS Execution.
  late final pulumi.Output<String> outputs;
  /// The parameters required by the template. Default to `{}`.
  late final pulumi.Output<String?> parameters;
  /// The id of parent execution.
  late final pulumi.Output<String?> parentExecutionId;
  /// The role that executes the current template.
  late final pulumi.Output<String> ramRole;
  /// The mode of safety check.
  late final pulumi.Output<String?> safetyCheck;
  /// The time when the execution was started.
  late final pulumi.Output<String> startDate;
  /// The status of OOS Execution.
  late final pulumi.Output<String> status;
  /// The message of status.
  late final pulumi.Output<String> statusMessage;
  /// The content of template. When the user selects an existing template to create and execute a task, it is not necessary to pass in this field.
  late final pulumi.Output<String?> templateContent;
  /// The id of template.
  late final pulumi.Output<String> templateId;
  /// The name of execution template.
  late final pulumi.Output<String> templateName;
  /// The version of execution template.
  late final pulumi.Output<String> templateVersion;
  /// The time when the execution was updated.
  late final pulumi.Output<String> updateDate;

  /// Creates a new [Execution].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Execution]. {@macro pulumi_oos_execution_execution_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Execution(
    String name, {
    ExecutionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oos/execution:Execution',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    counters = registerOutput<String>('counters');
    createDate = registerOutput<String>('createDate');
    description = registerOutput<String?>('description');
    endDate = registerOutput<String>('endDate');
    executedBy = registerOutput<String>('executedBy');
    isParent = registerOutput<bool>('isParent');
    loopMode = registerOutput<String?>('loopMode');
    mode = registerOutput<String?>('mode');
    outputs = registerOutput<String>('outputs');
    parameters = registerOutput<String?>('parameters');
    parentExecutionId = registerOutput<String?>('parentExecutionId');
    ramRole = registerOutput<String>('ramRole');
    safetyCheck = registerOutput<String?>('safetyCheck');
    startDate = registerOutput<String>('startDate');
    status = registerOutput<String>('status');
    statusMessage = registerOutput<String>('statusMessage');
    templateContent = registerOutput<String?>('templateContent');
    templateId = registerOutput<String>('templateId');
    templateName = registerOutput<String>('templateName');
    templateVersion = registerOutput<String>('templateVersion');
    updateDate = registerOutput<String>('updateDate');
  }

  /// Gets an existing [Execution] resource's state with the given [name] and [id].
  static Execution get(
    String name,
    pulumi.Input<String> id, {
    ExecutionState? state,
  }) {
    return Execution._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Execution._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oos/execution:Execution',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    counters = registerOutput<String>('counters');
    createDate = registerOutput<String>('createDate');
    description = registerOutput<String?>('description');
    endDate = registerOutput<String>('endDate');
    executedBy = registerOutput<String>('executedBy');
    isParent = registerOutput<bool>('isParent');
    loopMode = registerOutput<String?>('loopMode');
    mode = registerOutput<String?>('mode');
    outputs = registerOutput<String>('outputs');
    parameters = registerOutput<String?>('parameters');
    parentExecutionId = registerOutput<String?>('parentExecutionId');
    ramRole = registerOutput<String>('ramRole');
    safetyCheck = registerOutput<String?>('safetyCheck');
    startDate = registerOutput<String>('startDate');
    status = registerOutput<String>('status');
    statusMessage = registerOutput<String>('statusMessage');
    templateContent = registerOutput<String?>('templateContent');
    templateId = registerOutput<String>('templateId');
    templateName = registerOutput<String>('templateName');
    templateVersion = registerOutput<String>('templateVersion');
    updateDate = registerOutput<String>('updateDate');
  }
}
