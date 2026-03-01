import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_template_args.dart';
import 'email_template_email_template.dart';
import 'email_template_state.dart';

/// Provides a Pinpoint Email Template resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.pinpoint.EmailTemplate("test", {
///     templateName: "testing",
///     emailTemplates: [{
///         subject: "testing",
///         textPart: "we are testing template text part",
///         headers: [{
///             name: "testingname",
///             value: "testingvalue",
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.pinpoint.EmailTemplate("test",
///     template_name="testing",
///     email_templates=[{
///         "subject": "testing",
///         "text_part": "we are testing template text part",
///         "headers": [{
///             "name": "testingname",
///             "value": "testingvalue",
///         }],
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
///     var test = new Aws.Pinpoint.EmailTemplate("test", new()
///     {
///         TemplateName = "testing",
///         EmailTemplates = new[]
///         {
///             new Aws.Pinpoint.Inputs.EmailTemplateEmailTemplateArgs
///             {
///                 Subject = "testing",
///                 TextPart = "we are testing template text part",
///                 Headers = new[]
///                 {
///                     new Aws.Pinpoint.Inputs.EmailTemplateEmailTemplateHeaderArgs
///                     {
///                         Name = "testingname",
///                         Value = "testingvalue",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pinpoint"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pinpoint.NewEmailTemplate(ctx, "test", &pinpoint.EmailTemplateArgs{
/// 			TemplateName: pulumi.String("testing"),
/// 			EmailTemplates: pinpoint.EmailTemplateEmailTemplateArray{
/// 				&pinpoint.EmailTemplateEmailTemplateArgs{
/// 					Subject:  pulumi.String("testing"),
/// 					TextPart: pulumi.String("we are testing template text part"),
/// 					Headers: pinpoint.EmailTemplateEmailTemplateHeaderArray{
/// 						&pinpoint.EmailTemplateEmailTemplateHeaderArgs{
/// 							Name:  pulumi.String("testingname"),
/// 							Value: pulumi.String("testingvalue"),
/// 						},
/// 					},
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
/// import com.pulumi.aws.pinpoint.EmailTemplate;
/// import com.pulumi.aws.pinpoint.EmailTemplateArgs;
/// import com.pulumi.aws.pinpoint.inputs.EmailTemplateEmailTemplateArgs;
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
///         var test = new EmailTemplate("test", EmailTemplateArgs.builder()
///             .templateName("testing")
///             .emailTemplates(EmailTemplateEmailTemplateArgs.builder()
///                 .subject("testing")
///                 .textPart("we are testing template text part")
///                 .headers(EmailTemplateEmailTemplateHeaderArgs.builder()
///                     .name("testingname")
///                     .value("testingvalue")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:pinpoint:EmailTemplate
///     properties:
///       templateName: testing
///       emailTemplates:
///         - subject: testing
///           textPart: we are testing template text part
///           headers:
///             - name: testingname
///               value: testingvalue
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Pinpoint Email Template using the `template_name`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/emailTemplate:EmailTemplate reset template_name
/// ```
class EmailTemplate extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the message template.
  late final pulumi.Output<String> arn;
  /// Specifies the content and settings for a message template that can be used in messages that are sent through the email channel. See Email Template
  late final pulumi.Output<List<EmailTemplateEmailTemplate>?> emailTemplates;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
  late final pulumi.Output<String> templateName;

  /// Creates a new [EmailTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailTemplate]. {@macro pulumi_pinpoint_email_template_email_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailTemplate(
    String name, {
    EmailTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/emailTemplate:EmailTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.emailTemplates = registerOutput<List<EmailTemplateEmailTemplate>?>('emailTemplates');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.templateName = registerOutput<String>('templateName');
  }

  /// Gets an existing [EmailTemplate] resource's state with the given [name] and [id].
  static EmailTemplate get(
    String name,
    pulumi.Input<String> id, {
    EmailTemplateState? state,
  }) {
    return EmailTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EmailTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/emailTemplate:EmailTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.emailTemplates = registerOutput<List<EmailTemplateEmailTemplate>?>('emailTemplates');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.templateName = registerOutput<String>('templateName');
  }
}
