import 'package:pulumi/pulumi.dart';
import 'standards_control_args.dart';

/// Disable/enable Security Hub standards control in the current region.
///
/// The <span pulumi-lang-nodejs="`aws.securityhub.StandardsControl`" pulumi-lang-dotnet="`aws.securityhub.StandardsControl`" pulumi-lang-go="`securityhub.StandardsControl`" pulumi-lang-python="`securityhub.StandardsControl`" pulumi-lang-yaml="`aws.securityhub.StandardsControl`" pulumi-lang-java="`aws.securityhub.StandardsControl`">`aws.securityhub.StandardsControl`</span> behaves differently from normal resources, in that
/// Pulumi does not _create_ this resource, but instead "adopts" it
/// into management. When you _delete_ this resource configuration, Pulumi "abandons" resource as is and just removes it from the state.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.Account("example", {});
/// const cisAwsFoundationsBenchmark = new aws.securityhub.StandardsSubscription("cis_aws_foundations_benchmark", {standardsArn: "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"}, {
/// dependsOn: [example],
/// });
/// const ensureIamPasswordPolicyPreventsPasswordReuse = new aws.securityhub.StandardsControl("ensure_iam_password_policy_prevents_password_reuse", {
/// standardsControlArn: "arn:aws:securityhub:us-east-1:111111111111:control/cis-aws-foundations-benchmark/v/1.2.0/1.10",
/// controlStatus: "DISABLED",
/// disabledReason: "We handle password policies within Okta",
/// }, {
/// dependsOn: [cisAwsFoundationsBenchmark],
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
/// standards_control_arn="arn:aws:securityhub:us-east-1:111111111111:control/cis-aws-foundations-benchmark/v/1.2.0/1.10",
/// control_status="DISABLED",
/// disabled_reason="We handle password policies within Okta",
/// opts = pulumi.ResourceOptions(depends_on=[cis_aws_foundations_benchmark]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SecurityHub.Account("example");
///
/// var cisAwsFoundationsBenchmark = new Aws.SecurityHub.StandardsSubscription("cis_aws_foundations_benchmark", new()
/// {
/// StandardsArn = "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// example,
/// },
/// });
///
/// var ensureIamPasswordPolicyPreventsPasswordReuse = new Aws.SecurityHub.StandardsControl("ensure_iam_password_policy_prevents_password_reuse", new()
/// {
/// StandardsControlArn = "arn:aws:securityhub:us-east-1:111111111111:control/cis-aws-foundations-benchmark/v/1.2.0/1.10",
/// ControlStatus = "DISABLED",
/// DisabledReason = "We handle password policies within Okta",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// cisAwsFoundationsBenchmark,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := securityhub.NewAccount(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// cisAwsFoundationsBenchmark, err := securityhub.NewStandardsSubscription(ctx, "cis_aws_foundations_benchmark", &securityhub.StandardsSubscriptionArgs{
/// StandardsArn: pulumi.String("arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// example,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = securityhub.NewStandardsControl(ctx, "ensure_iam_password_policy_prevents_password_reuse", &securityhub.StandardsControlArgs{
/// StandardsControlArn: pulumi.String("arn:aws:securityhub:us-east-1:111111111111:control/cis-aws-foundations-benchmark/v/1.2.0/1.10"),
/// ControlStatus:       pulumi.String("DISABLED"),
/// DisabledReason:      pulumi.String("We handle password policies within Okta"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// cisAwsFoundationsBenchmark,
/// }))
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Account("example");
///
/// var cisAwsFoundationsBenchmark = new StandardsSubscription("cisAwsFoundationsBenchmark", StandardsSubscriptionArgs.builder()
/// .standardsArn("arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(example)
/// .build());
///
/// var ensureIamPasswordPolicyPreventsPasswordReuse = new StandardsControl("ensureIamPasswordPolicyPreventsPasswordReuse", StandardsControlArgs.builder()
/// .standardsControlArn("arn:aws:securityhub:us-east-1:111111111111:control/cis-aws-foundations-benchmark/v/1.2.0/1.10")
/// .controlStatus("DISABLED")
/// .disabledReason("We handle password policies within Okta")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(cisAwsFoundationsBenchmark)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:securityhub:Account
/// cisAwsFoundationsBenchmark:
/// type: aws:securityhub:StandardsSubscription
/// name: cis_aws_foundations_benchmark
/// properties:
/// standardsArn: arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0
/// options:
/// dependsOn:
/// - ${example}
/// ensureIamPasswordPolicyPreventsPasswordReuse:
/// type: aws:securityhub:StandardsControl
/// name: ensure_iam_password_policy_prevents_password_reuse
/// properties:
/// standardsControlArn: arn:aws:securityhub:us-east-1:111111111111:control/cis-aws-foundations-benchmark/v/1.2.0/1.10
/// controlStatus: DISABLED
/// disabledReason: We handle password policies within Okta
/// options:
/// dependsOn:
/// - ${cisAwsFoundationsBenchmark}
/// ```
/// <!--End PulumiCodeChooser -->
class StandardsControl extends CustomResource {
  /// The identifier of the security standard control.
  late final Output<String> controlId;

  /// The control status could be `ENABLED` or `DISABLED`. You have to specify <span pulumi-lang-nodejs="`disabledReason`" pulumi-lang-dotnet="`DisabledReason`" pulumi-lang-go="`disabledReason`" pulumi-lang-python="`disabled_reason`" pulumi-lang-yaml="`disabledReason`" pulumi-lang-java="`disabledReason`">`disabled_reason`</span> argument for `DISABLED` control status.
  late final Output<String> controlStatus;

  /// The date and time that the status of the security standard control was most recently updated.
  late final Output<String> controlStatusUpdatedAt;

  /// The standard control longer description. Provides information about what the control is checking for.
  late final Output<String> description;

  /// A description of the reason why you are disabling a security standard control. If you specify this attribute, <span pulumi-lang-nodejs="`controlStatus`" pulumi-lang-dotnet="`ControlStatus`" pulumi-lang-go="`controlStatus`" pulumi-lang-python="`control_status`" pulumi-lang-yaml="`controlStatus`" pulumi-lang-java="`controlStatus`">`control_status`</span> will be set to `DISABLED` automatically.
  late final Output<String> disabledReason;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The list of requirements that are related to this control.
  late final Output<List<String>> relatedRequirements;

  /// A link to remediation information for the control in the Security Hub user documentation.
  late final Output<String> remediationUrl;

  /// The severity of findings generated from this security standard control.
  late final Output<String> severityRating;

  /// The standards control ARN. See the AWS documentation for how to list existing controls using [`get-enabled-standards`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/securityhub/get-enabled-standards.html) and [`describe-standards-controls`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/securityhub/describe-standards-controls.html).
  late final Output<String> standardsControlArn;

  /// The standard control title.
  late final Output<String> title;

  StandardsControl(
    String name, {
    StandardsControlArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/standardsControl:StandardsControl',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.controlId = Output.createUnknown<String>();
    this.controlStatus = Output.createUnknown<String>();
    this.controlStatusUpdatedAt = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.disabledReason = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.relatedRequirements = Output.createUnknown<List<String>>();
    this.remediationUrl = Output.createUnknown<String>();
    this.severityRating = Output.createUnknown<String>();
    this.standardsControlArn = Output.createUnknown<String>();
    this.title = Output.createUnknown<String>();
  }
}
