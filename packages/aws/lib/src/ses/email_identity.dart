import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_identity_args.dart';

/// Provides an SES email identity resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ses.EmailIdentity("example", {email: "email@example.com"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ses.EmailIdentity("example", email="email@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ses.EmailIdentity("example", new()
///     {
///         Email = "email@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ses.NewEmailIdentity(ctx, "example", &ses.EmailIdentityArgs{
/// 			Email: pulumi.String("email@example.com"),
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
/// import com.pulumi.aws.ses.EmailIdentity;
/// import com.pulumi.aws.ses.EmailIdentityArgs;
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
///             .email("email@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ses:EmailIdentity
///     properties:
///       email: email@example.com
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SES email identities using the email address. For example:
///
/// ```sh
/// $ pulumi import aws:ses/emailIdentity:EmailIdentity example email@example.com
/// ```
class EmailIdentity extends pulumi.CustomResource {
  /// The ARN of the email identity.
  late final pulumi.Output<String> arn;

  /// The email address to assign to SES.
  late final pulumi.Output<String> email;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [EmailIdentity].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailIdentity]. {@macro pulumi_ses_email_identity_email_identity_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailIdentity(
    String name, {
    EmailIdentityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ses/emailIdentity:EmailIdentity',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.email = registerOutput<String>('email');
    this.region = registerOutput<String>('region');
  }
}
