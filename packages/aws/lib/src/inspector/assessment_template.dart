import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_template_args.dart';
import 'assessment_template_event_subscription.dart';

/// Provides an Inspector Classic Assessment Template
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.inspector.AssessmentTemplate("example", {
///     name: "example",
///     targetArn: exampleAwsInspectorAssessmentTarget.arn,
///     duration: 3600,
///     rulesPackageArns: [
///         "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-9hgA516p",
///         "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-H5hpSawc",
///         "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-JJOtZiqQ",
///         "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-vg5GGHSD",
///     ],
///     eventSubscriptions: [{
///         event: "ASSESSMENT_RUN_COMPLETED",
///         topicArn: exampleAwsSnsTopic.arn,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.inspector.AssessmentTemplate("example",
///     name="example",
///     target_arn=example_aws_inspector_assessment_target["arn"],
///     duration=3600,
///     rules_package_arns=[
///         "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-9hgA516p",
///         "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-H5hpSawc",
///         "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-JJOtZiqQ",
///         "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-vg5GGHSD",
///     ],
///     event_subscriptions=[{
///         "event": "ASSESSMENT_RUN_COMPLETED",
///         "topic_arn": example_aws_sns_topic["arn"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Inspector.AssessmentTemplate("example", new()
///     {
///         Name = "example",
///         TargetArn = exampleAwsInspectorAssessmentTarget.Arn,
///         Duration = 3600,
///         RulesPackageArns = new[]
///         {
///             "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-9hgA516p",
///             "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-H5hpSawc",
///             "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-JJOtZiqQ",
///             "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-vg5GGHSD",
///         },
///         EventSubscriptions = new[]
///         {
///             new Aws.Inspector.Inputs.AssessmentTemplateEventSubscriptionArgs
///             {
///                 Event = "ASSESSMENT_RUN_COMPLETED",
///                 TopicArn = exampleAwsSnsTopic.Arn,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/inspector"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := inspector.NewAssessmentTemplate(ctx, "example", &inspector.AssessmentTemplateArgs{
/// 			Name:      pulumi.String("example"),
/// 			TargetArn: pulumi.Any(exampleAwsInspectorAssessmentTarget.Arn),
/// 			Duration:  pulumi.Int(3600),
/// 			RulesPackageArns: pulumi.StringArray{
/// 				pulumi.String("arn:aws:inspector:us-west-2:758058086616:rulespackage/0-9hgA516p"),
/// 				pulumi.String("arn:aws:inspector:us-west-2:758058086616:rulespackage/0-H5hpSawc"),
/// 				pulumi.String("arn:aws:inspector:us-west-2:758058086616:rulespackage/0-JJOtZiqQ"),
/// 				pulumi.String("arn:aws:inspector:us-west-2:758058086616:rulespackage/0-vg5GGHSD"),
/// 			},
/// 			EventSubscriptions: inspector.AssessmentTemplateEventSubscriptionArray{
/// 				&inspector.AssessmentTemplateEventSubscriptionArgs{
/// 					Event:    pulumi.String("ASSESSMENT_RUN_COMPLETED"),
/// 					TopicArn: pulumi.Any(exampleAwsSnsTopic.Arn),
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
/// import com.pulumi.aws.inspector.AssessmentTemplate;
/// import com.pulumi.aws.inspector.AssessmentTemplateArgs;
/// import com.pulumi.aws.inspector.inputs.AssessmentTemplateEventSubscriptionArgs;
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
///         var example = new AssessmentTemplate("example", AssessmentTemplateArgs.builder()
///             .name("example")
///             .targetArn(exampleAwsInspectorAssessmentTarget.arn())
///             .duration(3600)
///             .rulesPackageArns(
///                 "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-9hgA516p",
///                 "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-H5hpSawc",
///                 "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-JJOtZiqQ",
///                 "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-vg5GGHSD")
///             .eventSubscriptions(AssessmentTemplateEventSubscriptionArgs.builder()
///                 .event("ASSESSMENT_RUN_COMPLETED")
///                 .topicArn(exampleAwsSnsTopic.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:inspector:AssessmentTemplate
///     properties:
///       name: example
///       targetArn: ${exampleAwsInspectorAssessmentTarget.arn}
///       duration: 3600
///       rulesPackageArns:
///         - arn:aws:inspector:us-west-2:758058086616:rulespackage/0-9hgA516p
///         - arn:aws:inspector:us-west-2:758058086616:rulespackage/0-H5hpSawc
///         - arn:aws:inspector:us-west-2:758058086616:rulespackage/0-JJOtZiqQ
///         - arn:aws:inspector:us-west-2:758058086616:rulespackage/0-vg5GGHSD
///       eventSubscriptions:
///         - event: ASSESSMENT_RUN_COMPLETED
///           topicArn: ${exampleAwsSnsTopic.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Inspector assessment template.
///
///
/// Using `pulumi import`, import `aws.inspector.AssessmentTemplate` using the template assessment ARN. For example:
///
/// ```sh
/// $ pulumi import aws:inspector/assessmentTemplate:AssessmentTemplate example arn:aws:inspector:us-west-2:123456789012:target/0-9IaAzhGR/template/0-WEcjR8CH
/// ```
class AssessmentTemplate extends pulumi.CustomResource {
  /// The template assessment ARN.
  late final pulumi.Output<String> arn;
  /// The duration of the inspector run.
  late final pulumi.Output<int> duration;
  /// A block that enables sending notifications about a specified assessment template event to a designated SNS topic. See Event Subscriptions for details.
  late final pulumi.Output<List<AssessmentTemplateEventSubscription>?> eventSubscriptions;
  /// The name of the assessment template.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The rules to be used during the run.
  late final pulumi.Output<List<String>> rulesPackageArns;
  /// Key-value map of tags for the Inspector assessment template. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The assessment target ARN to attach the template to.
  late final pulumi.Output<String> targetArn;

  /// Creates a new [AssessmentTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AssessmentTemplate]. {@macro pulumi_inspector_assessment_template_assessment_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AssessmentTemplate(
    String name, {
    AssessmentTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:inspector/assessmentTemplate:AssessmentTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.duration = registerOutput<int>('duration');
    this.eventSubscriptions = registerOutput<List<AssessmentTemplateEventSubscription>?>('eventSubscriptions');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.rulesPackageArns = registerOutput<List<String>>('rulesPackageArns');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetArn = registerOutput<String>('targetArn');
  }
}
