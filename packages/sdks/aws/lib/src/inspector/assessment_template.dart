import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_template_args.dart';
import 'assessment_template_event_subscription.dart';
import 'assessment_template_state.dart';

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
///     eventSubscriptions: [{
///         event: "ASSESSMENT_RUN_COMPLETED",
///         topicArn: exampleAwsSnsTopic.arn,
///     }],
///     name: "example",
///     targetArn: exampleAwsInspectorAssessmentTarget.arn,
///     duration: 3600,
///     rulesPackageArns: [
///         "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-9hgA516p",
///         "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-H5hpSawc",
///         "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-JJOtZiqQ",
///         "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-vg5GGHSD",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.inspector.AssessmentTemplate("example",
///     event_subscriptions=[{
///         "event": "ASSESSMENT_RUN_COMPLETED",
///         "topic_arn": example_aws_sns_topic["arn"],
///     }],
///     name="example",
///     target_arn=example_aws_inspector_assessment_target["arn"],
///     duration=3600,
///     rules_package_arns=[
///         "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-9hgA516p",
///         "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-H5hpSawc",
///         "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-JJOtZiqQ",
///         "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-vg5GGHSD",
///     ])
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
///         EventSubscriptions = new[]
///         {
///             new Aws.Inspector.Inputs.AssessmentTemplateEventSubscriptionArgs
///             {
///                 Event = "ASSESSMENT_RUN_COMPLETED",
///                 TopicArn = exampleAwsSnsTopic.Arn,
///             },
///         },
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
/// 			EventSubscriptions: inspector.AssessmentTemplateEventSubscriptionArray{
/// 				&inspector.AssessmentTemplateEventSubscriptionArgs{
/// 					Event:    pulumi.String("ASSESSMENT_RUN_COMPLETED"),
/// 					TopicArn: pulumi.Any(exampleAwsSnsTopic.Arn),
/// 				},
/// 			},
/// 			Name:      pulumi.String("example"),
/// 			TargetArn: pulumi.Any(exampleAwsInspectorAssessmentTarget.Arn),
/// 			Duration:  pulumi.Int(3600),
/// 			RulesPackageArns: pulumi.StringArray{
/// 				pulumi.String("arn:aws:inspector:us-west-2:758058086616:rulespackage/0-9hgA516p"),
/// 				pulumi.String("arn:aws:inspector:us-west-2:758058086616:rulespackage/0-H5hpSawc"),
/// 				pulumi.String("arn:aws:inspector:us-west-2:758058086616:rulespackage/0-JJOtZiqQ"),
/// 				pulumi.String("arn:aws:inspector:us-west-2:758058086616:rulespackage/0-vg5GGHSD"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_inspector_assessmenttemplate" "example" {
///   event_subscriptions {
///     event     = "ASSESSMENT_RUN_COMPLETED"
///     topic_arn = exampleAwsSnsTopic.arn
///   }
///   name               = "example"
///   target_arn         = exampleAwsInspectorAssessmentTarget.arn
///   duration           = 3600
///   rules_package_arns = ["arn:aws:inspector:us-west-2:758058086616:rulespackage/0-9hgA516p", "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-H5hpSawc", "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-JJOtZiqQ", "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-vg5GGHSD"]
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .eventSubscriptions(AssessmentTemplateEventSubscriptionArgs.builder()
///                 .event("ASSESSMENT_RUN_COMPLETED")
///                 .topicArn(exampleAwsSnsTopic.arn())
///                 .build())
///             .name("example")
///             .targetArn(exampleAwsInspectorAssessmentTarget.arn())
///             .duration(3600)
///             .rulesPackageArns(
///                 "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-9hgA516p",
///                 "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-H5hpSawc",
///                 "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-JJOtZiqQ",
///                 "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-vg5GGHSD")
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
///       eventSubscriptions:
///         - event: ASSESSMENT_RUN_COMPLETED
///           topicArn: ${exampleAwsSnsTopic.arn}
///       name: example
///       targetArn: ${exampleAwsInspectorAssessmentTarget.arn}
///       duration: 3600
///       rulesPackageArns:
///         - arn:aws:inspector:us-west-2:758058086616:rulespackage/0-9hgA516p
///         - arn:aws:inspector:us-west-2:758058086616:rulespackage/0-H5hpSawc
///         - arn:aws:inspector:us-west-2:758058086616:rulespackage/0-JJOtZiqQ
///         - arn:aws:inspector:us-west-2:758058086616:rulespackage/0-vg5GGHSD
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the Inspector assessment template.
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
  /// Key-value map of tags for the Inspector assessment template. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    duration = registerOutput<int>('duration');
    eventSubscriptions = registerOutput<List<AssessmentTemplateEventSubscription>?>('eventSubscriptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssessmentTemplateEventSubscription>(guardedValue, (value) => AssessmentTemplateEventSubscription.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    rulesPackageArns = registerOutput<List<String>>('rulesPackageArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetArn = registerOutput<String>('targetArn');
  }

  /// Gets an existing [AssessmentTemplate] resource's state with the given [name] and [id].
  static AssessmentTemplate get(
    String name,
    pulumi.Input<String> id, {
    AssessmentTemplateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AssessmentTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AssessmentTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:inspector/assessmentTemplate:AssessmentTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    duration = registerOutput<int>('duration');
    eventSubscriptions = registerOutput<List<AssessmentTemplateEventSubscription>?>('eventSubscriptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssessmentTemplateEventSubscription>(guardedValue, (value) => AssessmentTemplateEventSubscription.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    rulesPackageArns = registerOutput<List<String>>('rulesPackageArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetArn = registerOutput<String>('targetArn');
  }

  /// Creates a typed reference to an existing [AssessmentTemplate] resource.
  AssessmentTemplate.reference(String urn)
    : super(
        'aws:inspector/assessmentTemplate:AssessmentTemplate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    duration = registerOutput<int>('duration');
    eventSubscriptions = registerOutput<List<AssessmentTemplateEventSubscription>?>('eventSubscriptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssessmentTemplateEventSubscription>(guardedValue, (value) => AssessmentTemplateEventSubscription.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    rulesPackageArns = registerOutput<List<String>>('rulesPackageArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetArn = registerOutput<String>('targetArn');
  }
}
