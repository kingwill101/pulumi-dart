import 'package:pulumi/pulumi.dart';
import 'email_identity_mail_from_attributes_args.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Email Identity Mail From Attributes.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sesv2.EmailIdentity("example", {emailIdentity: "example.com"});
/// const exampleEmailIdentityMailFromAttributes = new aws.sesv2.EmailIdentityMailFromAttributes("example", {
/// emailIdentity: example.emailIdentity,
/// behaviorOnMxFailure: "REJECT_MESSAGE",
/// mailFromDomain: pulumi.interpolate`subdomain.${example.emailIdentity}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.EmailIdentity("example", email_identity="example.com")
/// example_email_identity_mail_from_attributes = aws.sesv2.EmailIdentityMailFromAttributes("example",
/// email_identity=example.email_identity,
/// behavior_on_mx_failure="REJECT_MESSAGE",
/// mail_from_domain=example.email_identity.apply(lambda email_identity: f"subdomain.{email_identity}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SesV2.EmailIdentity("example", new()
/// {
/// EmailIdentityDetails = "example.com",
/// });
///
/// var exampleEmailIdentityMailFromAttributes = new Aws.SesV2.EmailIdentityMailFromAttributes("example", new()
/// {
/// EmailIdentity = example.EmailIdentityDetails,
/// BehaviorOnMxFailure = "REJECT_MESSAGE",
/// MailFromDomain = example.EmailIdentityDetails.Apply(emailIdentity => $"subdomain.{emailIdentity}"),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := sesv2.NewEmailIdentity(ctx, "example", &sesv2.EmailIdentityArgs{
/// EmailIdentity: pulumi.String("example.com"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = sesv2.NewEmailIdentityMailFromAttributes(ctx, "example", &sesv2.EmailIdentityMailFromAttributesArgs{
/// EmailIdentity:       example.EmailIdentity,
/// BehaviorOnMxFailure: pulumi.String("REJECT_MESSAGE"),
/// MailFromDomain: example.EmailIdentity.ApplyT(func(emailIdentity string) (string, error) {
/// return fmt.Sprintf("subdomain.%v", emailIdentity), nil
/// }).(pulumi.StringOutput),
/// })
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
/// import com.pulumi.aws.sesv2.EmailIdentity;
/// import com.pulumi.aws.sesv2.EmailIdentityArgs;
/// import com.pulumi.aws.sesv2.EmailIdentityMailFromAttributes;
/// import com.pulumi.aws.sesv2.EmailIdentityMailFromAttributesArgs;
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
/// var example = new EmailIdentity("example", EmailIdentityArgs.builder()
/// .emailIdentity("example.com")
/// .build());
///
/// var exampleEmailIdentityMailFromAttributes = new EmailIdentityMailFromAttributes("exampleEmailIdentityMailFromAttributes", EmailIdentityMailFromAttributesArgs.builder()
/// .emailIdentity(example.emailIdentity())
/// .behaviorOnMxFailure("REJECT_MESSAGE")
/// .mailFromDomain(example.emailIdentity().applyValue(_emailIdentity -> String.format("subdomain.%s", _emailIdentity)))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sesv2:EmailIdentity
/// properties:
/// emailIdentity: example.com
/// exampleEmailIdentityMailFromAttributes:
/// type: aws:sesv2:EmailIdentityMailFromAttributes
/// name: example
/// properties:
/// emailIdentity: ${example.emailIdentity}
/// behaviorOnMxFailure: REJECT_MESSAGE
/// mailFromDomain: subdomain.${example.emailIdentity}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Email Identity Mail From Attributes using the <span pulumi-lang-nodejs="`emailIdentity`" pulumi-lang-dotnet="`EmailIdentity`" pulumi-lang-go="`emailIdentity`" pulumi-lang-python="`email_identity`" pulumi-lang-yaml="`emailIdentity`" pulumi-lang-java="`emailIdentity`">`email_identity`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/emailIdentityMailFromAttributes:EmailIdentityMailFromAttributes example example.com
/// ```
class EmailIdentityMailFromAttributes extends CustomResource {
  /// The action to take if the required MX record isn't found when you send an email. Valid values: `USE_DEFAULT_VALUE`, `REJECT_MESSAGE`.
  late final Output<String?> behaviorOnMxFailure;

  /// The verified email identity.
  late final Output<String> emailIdentity;

  /// The custom MAIL FROM domain that you want the verified identity to use. Required if <span pulumi-lang-nodejs="`behaviorOnMxFailure`" pulumi-lang-dotnet="`BehaviorOnMxFailure`" pulumi-lang-go="`behaviorOnMxFailure`" pulumi-lang-python="`behavior_on_mx_failure`" pulumi-lang-yaml="`behaviorOnMxFailure`" pulumi-lang-java="`behaviorOnMxFailure`">`behavior_on_mx_failure`</span> is `REJECT_MESSAGE`.
  late final Output<String?> mailFromDomain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  EmailIdentityMailFromAttributes(
    String name, {
    EmailIdentityMailFromAttributesArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/emailIdentityMailFromAttributes:EmailIdentityMailFromAttributes',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.behaviorOnMxFailure = Output.createUnknown<String?>();
    this.emailIdentity = Output.createUnknown<String>();
    this.mailFromDomain = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
  }
}
