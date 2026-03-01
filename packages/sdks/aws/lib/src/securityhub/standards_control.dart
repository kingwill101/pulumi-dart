import 'package:pulumi/pulumi.dart' as pulumi;
import 'standards_control_args.dart';
import 'standards_control_state.dart';

/// Disable/enable Security Hub standards control in the current region.
///
/// The `aws.securityhub.StandardsControl` behaves differently from normal resources, in that
/// Pulumi does not _create_ this resource, but instead "adopts" it
/// into management. When you _delete_ this resource configuration, Pulumi "abandons" resource as is and just removes it from the state.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.Account("example", {});
/// const cisAwsFoundationsBenchmark = new aws.securityhub.StandardsSubscription("cis_aws_foundations_benchmark", {standardsArn: "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"}, {
///     dependsOn: [example],
/// });
/// const ensureIamPasswordPolicyPreventsPasswordReuse = new aws.securityhub.StandardsControl("ensure_iam_password_policy_prevents_password_reuse", {
///     standardsControlArn: "arn:aws:securityhub:us-east-1:111111111111:control/cis-aws-foundations-benchmark/v/1.2.0/1.10",
///     controlStatus: "DISABLED",
///     disabledReason: "We handle password policies within Okta",
/// }, {
///     dependsOn: [cisAwsFoundationsBenchmark],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.Account("example")
/// cis_aws_foundations_benchmark = aws.securityhub.StandardsSubscription("cis_aws_foundations_benchmark", standards_arn="arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
/// opts = pulumi.ResourceOptions(depends_on=[example]))
/// ensure_iam_password_policy_prevents_password_reuse = aws.securityhub.StandardsControl("ensure_iam_password_policy_prevents_password_reuse",
///     standards_control_arn="arn:aws:securityhub:us-east-1:111111111111:control/cis-aws-foundations-benchmark/v/1.2.0/1.10",
///     control_status="DISABLED",
///     disabled_reason="We handle password policies within Okta",
///     opts = pulumi.ResourceOptions(depends_on=[cis_aws_foundations_benchmark]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecurityHub.Account("example");
///
///     var cisAwsFoundationsBenchmark = new Aws.SecurityHub.StandardsSubscription("cis_aws_foundations_benchmark", new()
///     {
///         StandardsArn = "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
///     var ensureIamPasswordPolicyPreventsPasswordReuse = new Aws.SecurityHub.StandardsControl("ensure_iam_password_policy_prevents_password_reuse", new()
///     {
///         StandardsControlArn = "arn:aws:securityhub:us-east-1:111111111111:control/cis-aws-foundations-benchmark/v/1.2.0/1.10",
///         ControlStatus = "DISABLED",
///         DisabledReason = "We handle password policies within Okta",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cisAwsFoundationsBenchmark,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := securityhub.NewAccount(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cisAwsFoundationsBenchmark, err := securityhub.NewStandardsSubscription(ctx, "cis_aws_foundations_benchmark", &securityhub.StandardsSubscriptionArgs{
/// 			StandardsArn: pulumi.String("arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewStandardsControl(ctx, "ensure_iam_password_policy_prevents_password_reuse", &securityhub.StandardsControlArgs{
/// 			StandardsControlArn: pulumi.String("arn:aws:securityhub:us-east-1:111111111111:control/cis-aws-foundations-benchmark/v/1.2.0/1.10"),
/// 			ControlStatus:       pulumi.String("DISABLED"),
/// 			DisabledReason:      pulumi.String("We handle password policies within Okta"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			cisAwsFoundationsBenchmark,
/// 		}))
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
/// import com.pulumi.aws.securityhub.Account;
/// import com.pulumi.aws.securityhub.StandardsSubscription;
/// import com.pulumi.aws.securityhub.StandardsSubscriptionArgs;
/// import com.pulumi.aws.securityhub.StandardsControl;
/// import com.pulumi.aws.securityhub.StandardsControlArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Account("example");
///
///         var cisAwsFoundationsBenchmark = new StandardsSubscription("cisAwsFoundationsBenchmark", StandardsSubscriptionArgs.builder()
///             .standardsArn("arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///         var ensureIamPasswordPolicyPreventsPasswordReuse = new StandardsControl("ensureIamPasswordPolicyPreventsPasswordReuse", StandardsControlArgs.builder()
///             .standardsControlArn("arn:aws:securityhub:us-east-1:111111111111:control/cis-aws-foundations-benchmark/v/1.2.0/1.10")
///             .controlStatus("DISABLED")
///             .disabledReason("We handle password policies within Okta")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(cisAwsFoundationsBenchmark)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:securityhub:Account
///   cisAwsFoundationsBenchmark:
///     type: aws:securityhub:StandardsSubscription
///     name: cis_aws_foundations_benchmark
///     properties:
///       standardsArn: arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0
///     options:
///       dependsOn:
///         - ${example}
///   ensureIamPasswordPolicyPreventsPasswordReuse:
///     type: aws:securityhub:StandardsControl
///     name: ensure_iam_password_policy_prevents_password_reuse
///     properties:
///       standardsControlArn: arn:aws:securityhub:us-east-1:111111111111:control/cis-aws-foundations-benchmark/v/1.2.0/1.10
///       controlStatus: DISABLED
///       disabledReason: We handle password policies within Okta
///     options:
///       dependsOn:
///         - ${cisAwsFoundationsBenchmark}
/// ```
class StandardsControl extends pulumi.CustomResource {
  /// The identifier of the security standard control.
  late final pulumi.Output<String> controlId;
  /// The control status could be `ENABLED` or `DISABLED`. You have to specify `disabled_reason` argument for `DISABLED` control status.
  late final pulumi.Output<String> controlStatus;
  /// The date and time that the status of the security standard control was most recently updated.
  late final pulumi.Output<String> controlStatusUpdatedAt;
  /// The standard control longer description. Provides information about what the control is checking for.
  late final pulumi.Output<String> description;
  /// A description of the reason why you are disabling a security standard control. If you specify this attribute, `control_status` will be set to `DISABLED` automatically.
  late final pulumi.Output<String> disabledReason;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The list of requirements that are related to this control.
  late final pulumi.Output<List<String>> relatedRequirements;
  /// A link to remediation information for the control in the Security Hub user documentation.
  late final pulumi.Output<String> remediationUrl;
  /// The severity of findings generated from this security standard control.
  late final pulumi.Output<String> severityRating;
  /// The standards control ARN. See the AWS documentation for how to list existing controls using [`get-enabled-standards`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/securityhub/get-enabled-standards.html) and [`describe-standards-controls`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/securityhub/describe-standards-controls.html).
  late final pulumi.Output<String> standardsControlArn;
  /// The standard control title.
  late final pulumi.Output<String> title;

  /// Creates a new [StandardsControl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StandardsControl]. {@macro pulumi_securityhub_standards_control_standards_control_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StandardsControl(
    String name, {
    StandardsControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/standardsControl:StandardsControl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.controlId = registerOutput<String>('controlId');
    this.controlStatus = registerOutput<String>('controlStatus');
    this.controlStatusUpdatedAt = registerOutput<String>('controlStatusUpdatedAt');
    this.description = registerOutput<String>('description');
    this.disabledReason = registerOutput<String>('disabledReason');
    this.region = registerOutput<String>('region');
    this.relatedRequirements = registerOutput<List<String>>('relatedRequirements');
    this.remediationUrl = registerOutput<String>('remediationUrl');
    this.severityRating = registerOutput<String>('severityRating');
    this.standardsControlArn = registerOutput<String>('standardsControlArn');
    this.title = registerOutput<String>('title');
  }

  /// Gets an existing [StandardsControl] resource's state with the given [name] and [id].
  static StandardsControl get(
    String name,
    pulumi.Input<String> id, {
    StandardsControlState? state,
  }) {
    return StandardsControl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StandardsControl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/standardsControl:StandardsControl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.controlId = registerOutput<String>('controlId');
    this.controlStatus = registerOutput<String>('controlStatus');
    this.controlStatusUpdatedAt = registerOutput<String>('controlStatusUpdatedAt');
    this.description = registerOutput<String>('description');
    this.disabledReason = registerOutput<String>('disabledReason');
    this.region = registerOutput<String>('region');
    this.relatedRequirements = registerOutput<List<String>>('relatedRequirements');
    this.remediationUrl = registerOutput<String>('remediationUrl');
    this.severityRating = registerOutput<String>('severityRating');
    this.standardsControlArn = registerOutput<String>('standardsControlArn');
    this.title = registerOutput<String>('title');
  }
}
