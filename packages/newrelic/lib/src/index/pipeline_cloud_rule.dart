import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_cloud_rule_args.dart';

/// Use this resource to create and manage a New Relic Pipeline Cloud Rule.
///
/// > **❗<b style="color:green;">\*NEW\*</b>** **Starting v3.68.0 of the New Relic Terraform Provider**, <b style="color:green;">Pipeline Cloud Rules can be managed using the resource [`newrelic.PipelineCloudRule`](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/resources/pipeline_cloud_rule).</b> This resource replaces the deprecated [`newrelic.NrqlDropRule`](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_drop_rule) resource. <br><br><b>For customers currently managing Drop Rules with the deprecated [`newrelic.NrqlDropRule`](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_drop_rule) resource:</b> Please see our [migration guide](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/guides/drop_rules_eol_guide) for instructions on switching to the [`newrelic.PipelineCloudRule`](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/resources/pipeline_cloud_rule) resource. The resource [`newrelic.NrqlDropRule`](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_drop_rule) is <b>deprecated</b> and will be removed on <b>June 30, 2026</b>. While New Relic has automatically migrated your Drop Rules to Pipeline Cloud Rules upstream, you must update your Terraform configuration to continue managing Drop Rules as Pipeline Cloud Rules, using the <b style="color:green;">new</b> [`newrelic.PipelineCloudRule`](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/resources/pipeline_cloud_rule) resource.<br><br>
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.PipelineCloudRule("foo", {
///     accountId: "1000100",
///     name: "Test Pipeline Cloud Rule",
///     description: "This rule deletes all DEBUG logs from the dev environment.",
///     nrql: "DELETE FROM Log WHERE logLevel = 'DEBUG' AND environment = 'dev'",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.PipelineCloudRule("foo",
///     account_id="1000100",
///     name="Test Pipeline Cloud Rule",
///     description="This rule deletes all DEBUG logs from the dev environment.",
///     nrql="DELETE FROM Log WHERE logLevel = 'DEBUG' AND environment = 'dev'")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.PipelineCloudRule("foo", new()
///     {
///         AccountId = "1000100",
///         Name = "Test Pipeline Cloud Rule",
///         Description = "This rule deletes all DEBUG logs from the dev environment.",
///         Nrql = "DELETE FROM Log WHERE logLevel = 'DEBUG' AND environment = 'dev'",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := newrelic.NewPipelineCloudRule(ctx, "foo", &newrelic.PipelineCloudRuleArgs{
/// 			AccountId:   pulumi.String("1000100"),
/// 			Name:        pulumi.String("Test Pipeline Cloud Rule"),
/// 			Description: pulumi.String("This rule deletes all DEBUG logs from the dev environment."),
/// 			Nrql:        pulumi.String("DELETE FROM Log WHERE logLevel = 'DEBUG' AND environment = 'dev'"),
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
/// import com.pulumi.newrelic.PipelineCloudRule;
/// import com.pulumi.newrelic.PipelineCloudRuleArgs;
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
///         var foo = new PipelineCloudRule("foo", PipelineCloudRuleArgs.builder()
///             .accountId("1000100")
///             .name("Test Pipeline Cloud Rule")
///             .description("This rule deletes all DEBUG logs from the dev environment.")
///             .nrql("DELETE FROM Log WHERE logLevel = 'DEBUG' AND environment = 'dev'")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:PipelineCloudRule
///     properties:
///       accountId: 1.0001e+06
///       name: Test Pipeline Cloud Rule
///       description: This rule deletes all DEBUG logs from the dev environment.
///       nrql: DELETE FROM Log WHERE logLevel = 'DEBUG' AND environment = 'dev'
/// ```
///
///
/// ## Import
///
/// Pipeline Cloud Rules can be imported using the `id`. For example:
///
/// ```bash
/// $ terraform import newrelic_pipeline_cloud_rule.foo <id>
/// ```
///
/// > **NOTE:** If you'd like to import a `newrelic.PipelineCloudRule` resource corresponding to an existing `newrelic.NrqlDropRule` resource in your configuration in light of the aforementioned EOL, please head over to the instructions in our Drop Rules EOL Migration Guide.
class PipelineCloudRule extends pulumi.CustomResource {
  /// The account ID where the Pipeline Cloud Rule will be created.
  late final pulumi.Output<String> accountId;
  /// Additional information about the rule.
  late final pulumi.Output<String?> description;
  /// The name of the rule. This must be unique within an account.
  late final pulumi.Output<String> name;
  /// The NRQL query that defines the data to be processed by this Pipeline Cloud Rule.
  late final pulumi.Output<String> nrql;

  /// Creates a new [PipelineCloudRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PipelineCloudRule]. {@macro pulumi_index_pipeline_cloud_rule_pipeline_cloud_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PipelineCloudRule(
    String name, {
    PipelineCloudRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/pipelineCloudRule:PipelineCloudRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.nrql = registerOutput<String>('nrql');
  }
}
