import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_identity_mail_from_attributes_args.dart';
import 'email_identity_mail_from_attributes_state.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Email Identity Mail From Attributes.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sesv2.EmailIdentity("example", {emailIdentity: "example.com"});
/// const exampleEmailIdentityMailFromAttributes = new aws.sesv2.EmailIdentityMailFromAttributes("example", {
///     emailIdentity: example.emailIdentity,
///     behaviorOnMxFailure: "REJECT_MESSAGE",
///     mailFromDomain: pulumi.interpolate`subdomain.${example.emailIdentity}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.EmailIdentity("example", email_identity="example.com")
/// example_email_identity_mail_from_attributes = aws.sesv2.EmailIdentityMailFromAttributes("example",
///     email_identity=example.email_identity,
///     behavior_on_mx_failure="REJECT_MESSAGE",
///     mail_from_domain=example.email_identity.apply(lambda email_identity: f"subdomain.{email_identity}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SesV2.EmailIdentity("example", new()
///     {
///         EmailIdentityDetails = "example.com",
///     });
///
///     var exampleEmailIdentityMailFromAttributes = new Aws.SesV2.EmailIdentityMailFromAttributes("example", new()
///     {
///         EmailIdentity = example.EmailIdentityDetails,
///         BehaviorOnMxFailure = "REJECT_MESSAGE",
///         MailFromDomain = example.EmailIdentityDetails.Apply(emailIdentity => $"subdomain.{emailIdentity}"),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := sesv2.NewEmailIdentity(ctx, "example", &sesv2.EmailIdentityArgs{
/// 			EmailIdentity: pulumi.String("example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sesv2.NewEmailIdentityMailFromAttributes(ctx, "example", &sesv2.EmailIdentityMailFromAttributesArgs{
/// 			EmailIdentity:       example.EmailIdentity,
/// 			BehaviorOnMxFailure: pulumi.String("REJECT_MESSAGE"),
/// 			MailFromDomain: example.EmailIdentity.ApplyT(func(emailIdentity string) (string, error) {
/// 				return fmt.Sprintf("subdomain.%v", emailIdentity), nil
/// 			}).(pulumi.StringOutput),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new EmailIdentity("example", EmailIdentityArgs.builder()
///             .emailIdentity("example.com")
///             .build());
///
///         var exampleEmailIdentityMailFromAttributes = new EmailIdentityMailFromAttributes("exampleEmailIdentityMailFromAttributes", EmailIdentityMailFromAttributesArgs.builder()
///             .emailIdentity(example.emailIdentity())
///             .behaviorOnMxFailure("REJECT_MESSAGE")
///             .mailFromDomain(example.emailIdentity().applyValue(_emailIdentity -> String.format("subdomain.%s", _emailIdentity)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sesv2:EmailIdentity
///     properties:
///       emailIdentity: example.com
///   exampleEmailIdentityMailFromAttributes:
///     type: aws:sesv2:EmailIdentityMailFromAttributes
///     name: example
///     properties:
///       emailIdentity: ${example.emailIdentity}
///       behaviorOnMxFailure: REJECT_MESSAGE
///       mailFromDomain: subdomain.${example.emailIdentity}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Email Identity Mail From Attributes using the `email_identity`. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/emailIdentityMailFromAttributes:EmailIdentityMailFromAttributes example example.com
/// ```
class EmailIdentityMailFromAttributes extends pulumi.CustomResource {
  /// The action to take if the required MX record isn't found when you send an email. Valid values: `USE_DEFAULT_VALUE`, `REJECT_MESSAGE`.
  late final pulumi.Output<String?> behaviorOnMxFailure;

  /// The verified email identity.
  late final pulumi.Output<String> emailIdentity;

  /// The custom MAIL FROM domain that you want the verified identity to use. Required if `behavior_on_mx_failure` is `REJECT_MESSAGE`.
  late final pulumi.Output<String?> mailFromDomain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [EmailIdentityMailFromAttributes].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailIdentityMailFromAttributes]. {@macro pulumi_sesv2_email_identity_mail_from_attributes_email_identity_mail_from_attributes_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailIdentityMailFromAttributes(
    String name, {
    EmailIdentityMailFromAttributesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:sesv2/emailIdentityMailFromAttributes:EmailIdentityMailFromAttributes',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    behaviorOnMxFailure = registerOutput<String?>('behaviorOnMxFailure');
    emailIdentity = registerOutput<String>('emailIdentity');
    mailFromDomain = registerOutput<String?>('mailFromDomain');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [EmailIdentityMailFromAttributes] resource's state with the given [name] and [id].
  static EmailIdentityMailFromAttributes get(
    String name,
    pulumi.Input<String> id, {
    EmailIdentityMailFromAttributesState? state,
  }) {
    return EmailIdentityMailFromAttributes._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EmailIdentityMailFromAttributes._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:sesv2/emailIdentityMailFromAttributes:EmailIdentityMailFromAttributes',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    behaviorOnMxFailure = registerOutput<String?>('behaviorOnMxFailure');
    emailIdentity = registerOutput<String>('emailIdentity');
    mailFromDomain = registerOutput<String?>('mailFromDomain');
    region = registerOutput<String>('region');
  }
}
