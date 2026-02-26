import 'package:pulumi/pulumi.dart';
import 'email_identity_policy_args.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Email Identity Policy.
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
/// const example = new aws.sesv2.EmailIdentity("example", {emailIdentity: "testing@example.com"});
/// const exampleEmailIdentityPolicy = new aws.sesv2.EmailIdentityPolicy("example", {
/// emailIdentity: example.emailIdentity,
/// policyName: "example",
/// policy: pulumi.interpolate`{
/// \"Id\":\"ExampleAuthorizationPolicy\",
/// \"Version\":\"2012-10-17\",
/// \"Statement\":[
/// {
/// \"Sid\":\"AuthorizeIAMUser\",
/// \"Effect\":\"Allow\",
/// \"Resource\":\"${example.arn}\",
/// \"Principal\":{
/// \"AWS\":[
/// \"arn:aws:iam::123456789012:user/John\",
/// \"arn:aws:iam::123456789012:user/Jane\"
/// ]
/// },
/// \"Action\":[
/// \"ses:DeleteEmailIdentity\",
/// \"ses:PutEmailIdentityDkimSigningAttributes\"
/// ]
/// }
/// ]
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.EmailIdentity("example", email_identity="testing@example.com")
/// example_email_identity_policy = aws.sesv2.EmailIdentityPolicy("example",
/// email_identity=example.email_identity,
/// policy_name="example",
/// policy=example.arn.apply(lambda arn: f"""{{
/// \"Id\":\"ExampleAuthorizationPolicy\",
/// \"Version\":\"2012-10-17\",
/// \"Statement\":[
/// {{
/// \"Sid\":\"AuthorizeIAMUser\",
/// \"Effect\":\"Allow\",
/// \"Resource\":\"{arn}\",
/// \"Principal\":{{
/// \"AWS\":[
/// \"arn:aws:iam::123456789012:user/John\",
/// \"arn:aws:iam::123456789012:user/Jane\"
/// ]
/// }},
/// \"Action\":[
/// \"ses:DeleteEmailIdentity\",
/// \"ses:PutEmailIdentityDkimSigningAttributes\"
/// ]
/// }}
/// ]
/// }}
/// """))
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
/// EmailIdentityDetails = "testing@example.com",
/// });
///
/// var exampleEmailIdentityPolicy = new Aws.SesV2.EmailIdentityPolicy("example", new()
/// {
/// EmailIdentity = example.EmailIdentityDetails,
/// PolicyName = "example",
/// Policy = example.Arn.Apply(arn => @$"{{
/// \""Id\"":\""ExampleAuthorizationPolicy\"",
/// \""Version\"":\""2012-10-17\"",
/// \""Statement\"":[
/// {{
/// \""Sid\"":\""AuthorizeIAMUser\"",
/// \""Effect\"":\""Allow\"",
/// \""Resource\"":\""{arn}\"",
/// \""Principal\"":{{
/// \""AWS\"":[
/// \""arn:aws:iam::123456789012:user/John\"",
/// \""arn:aws:iam::123456789012:user/Jane\""
/// ]
/// }},
/// \""Action\"":[
/// \""ses:DeleteEmailIdentity\"",
/// \""ses:PutEmailIdentityDkimSigningAttributes\""
/// ]
/// }}
/// ]
/// }}
/// "),
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
/// EmailIdentity: pulumi.String("testing@example.com"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = sesv2.NewEmailIdentityPolicy(ctx, "example", &sesv2.EmailIdentityPolicyArgs{
/// EmailIdentity: example.EmailIdentity,
/// PolicyName:    pulumi.String("example"),
/// Policy: example.Arn.ApplyT(func(arn string) (string, error) {
/// return fmt.Sprintf(`{
/// \"Id\":\"ExampleAuthorizationPolicy\",
/// \"Version\":\"2012-10-17\",
/// \"Statement\":[
/// {
/// \"Sid\":\"AuthorizeIAMUser\",
/// \"Effect\":\"Allow\",
/// \"Resource\":\"%v\",
/// \"Principal\":{
/// \"AWS\":[
/// \"arn:aws:iam::123456789012:user/John\",
/// \"arn:aws:iam::123456789012:user/Jane\"
/// ]
/// },
/// \"Action\":[
/// \"ses:DeleteEmailIdentity\",
/// \"ses:PutEmailIdentityDkimSigningAttributes\"
/// ]
/// }
/// ]
/// }
/// `, arn), nil
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
/// import com.pulumi.aws.sesv2.EmailIdentityPolicy;
/// import com.pulumi.aws.sesv2.EmailIdentityPolicyArgs;
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
/// .emailIdentity("testing@example.com")
/// .build());
///
/// var exampleEmailIdentityPolicy = new EmailIdentityPolicy("exampleEmailIdentityPolicy", EmailIdentityPolicyArgs.builder()
/// .emailIdentity(example.emailIdentity())
/// .policyName("example")
/// .policy(example.arn().applyValue(_arn -> """
/// {
/// \"Id\":\"ExampleAuthorizationPolicy\",
/// \"Version\":\"2012-10-17\",
/// \"Statement\":[
/// {
/// \"Sid\":\"AuthorizeIAMUser\",
/// \"Effect\":\"Allow\",
/// \"Resource\":\"%s\",
/// \"Principal\":{
/// \"AWS\":[
/// \"arn:aws:iam::123456789012:user/John\",
/// \"arn:aws:iam::123456789012:user/Jane\"
/// ]
/// },
/// \"Action\":[
/// \"ses:DeleteEmailIdentity\",
/// \"ses:PutEmailIdentityDkimSigningAttributes\"
/// ]
/// }
/// ]
/// }
/// ", _arn)))
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
/// emailIdentity: testing@example.com
/// exampleEmailIdentityPolicy:
/// type: aws:sesv2:EmailIdentityPolicy
/// name: example
/// properties:
/// emailIdentity: ${example.emailIdentity}
/// policyName: example
/// policy: |
/// {
/// \"Id\":\"ExampleAuthorizationPolicy\",
/// \"Version\":\"2012-10-17\",
/// \"Statement\":[
/// {
/// \"Sid\":\"AuthorizeIAMUser\",
/// \"Effect\":\"Allow\",
/// \"Resource\":\"${example.arn}\",
/// \"Principal\":{
/// \"AWS\":[
/// \"arn:aws:iam::123456789012:user/John\",
/// \"arn:aws:iam::123456789012:user/Jane\"
/// ]
/// },
/// \"Action\":[
/// \"ses:DeleteEmailIdentity\",
/// \"ses:PutEmailIdentityDkimSigningAttributes\"
/// ]
/// }
/// ]
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Email Identity Policy using the <span pulumi-lang-nodejs="`emailIdentity`" pulumi-lang-dotnet="`EmailIdentity`" pulumi-lang-go="`emailIdentity`" pulumi-lang-python="`email_identity`" pulumi-lang-yaml="`emailIdentity`" pulumi-lang-java="`emailIdentity`">`email_identity`</span> and <span pulumi-lang-nodejs="`policyName`" pulumi-lang-dotnet="`PolicyName`" pulumi-lang-go="`policyName`" pulumi-lang-python="`policy_name`" pulumi-lang-yaml="`policyName`" pulumi-lang-java="`policyName`">`policy_name`</span> separated by `|`. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/emailIdentityPolicy:EmailIdentityPolicy example example_email_identity|example_policy_name
/// ```
class EmailIdentityPolicy extends CustomResource {
  /// The email identity.
  late final Output<String> emailIdentity;

  /// The text of the policy in JSON format.
  late final Output<String> policy;

  /// The name of the policy.
  late final Output<String> policyName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  EmailIdentityPolicy(
    String name, {
    EmailIdentityPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/emailIdentityPolicy:EmailIdentityPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.emailIdentity = Output.createUnknown<String>();
    this.policy = Output.createUnknown<String>();
    this.policyName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
