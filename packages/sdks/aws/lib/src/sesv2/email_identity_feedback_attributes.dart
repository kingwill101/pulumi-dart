import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_identity_feedback_attributes_args.dart';
import 'email_identity_feedback_attributes_state.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Email Identity Feedback Attributes.
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
/// const exampleEmailIdentityFeedbackAttributes = new aws.sesv2.EmailIdentityFeedbackAttributes("example", {
///     emailIdentity: example.emailIdentity,
///     emailForwardingEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.EmailIdentity("example", email_identity="example.com")
/// example_email_identity_feedback_attributes = aws.sesv2.EmailIdentityFeedbackAttributes("example",
///     email_identity=example.email_identity,
///     email_forwarding_enabled=True)
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
///     var exampleEmailIdentityFeedbackAttributes = new Aws.SesV2.EmailIdentityFeedbackAttributes("example", new()
///     {
///         EmailIdentity = example.EmailIdentityDetails,
///         EmailForwardingEnabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
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
/// 		_, err = sesv2.NewEmailIdentityFeedbackAttributes(ctx, "example", &sesv2.EmailIdentityFeedbackAttributesArgs{
/// 			EmailIdentity:          example.EmailIdentity,
/// 			EmailForwardingEnabled: pulumi.Bool(true),
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
/// import com.pulumi.aws.sesv2.EmailIdentityFeedbackAttributes;
/// import com.pulumi.aws.sesv2.EmailIdentityFeedbackAttributesArgs;
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
///         var exampleEmailIdentityFeedbackAttributes = new EmailIdentityFeedbackAttributes("exampleEmailIdentityFeedbackAttributes", EmailIdentityFeedbackAttributesArgs.builder()
///             .emailIdentity(example.emailIdentity())
///             .emailForwardingEnabled(true)
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
///   exampleEmailIdentityFeedbackAttributes:
///     type: aws:sesv2:EmailIdentityFeedbackAttributes
///     name: example
///     properties:
///       emailIdentity: ${example.emailIdentity}
///       emailForwardingEnabled: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Email Identity Feedback Attributes using the `email_identity`. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/emailIdentityFeedbackAttributes:EmailIdentityFeedbackAttributes example example.com
/// ```
class EmailIdentityFeedbackAttributes extends pulumi.CustomResource {
  /// Sets the feedback forwarding configuration for the identity.
  late final pulumi.Output<bool?> emailForwardingEnabled;
  /// The email identity.
  late final pulumi.Output<String> emailIdentity;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [EmailIdentityFeedbackAttributes].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailIdentityFeedbackAttributes]. {@macro pulumi_sesv2_email_identity_feedback_attributes_email_identity_feedback_attributes_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailIdentityFeedbackAttributes(
    String name, {
    EmailIdentityFeedbackAttributesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/emailIdentityFeedbackAttributes:EmailIdentityFeedbackAttributes',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    emailForwardingEnabled = registerOutput<bool?>('emailForwardingEnabled');
    emailIdentity = registerOutput<String>('emailIdentity');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [EmailIdentityFeedbackAttributes] resource's state with the given [name] and [id].
  static EmailIdentityFeedbackAttributes get(
    String name,
    pulumi.Input<String> id, {
    EmailIdentityFeedbackAttributesState? state,
  }) {
    return EmailIdentityFeedbackAttributes._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EmailIdentityFeedbackAttributes._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/emailIdentityFeedbackAttributes:EmailIdentityFeedbackAttributes',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    emailForwardingEnabled = registerOutput<bool?>('emailForwardingEnabled');
    emailIdentity = registerOutput<String>('emailIdentity');
    region = registerOutput<String>('region');
  }
}
