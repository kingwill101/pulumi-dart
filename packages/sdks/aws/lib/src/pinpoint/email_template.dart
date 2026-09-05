import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_template_args.dart';
import 'email_template_email_template.dart';
import 'email_template_state.dart';

/// &gt; **NOTE:** This resource is deprecated. AWS End User Messaging email features are being discontinued on October 30, 2026. Migrate to Amazon SES using `aws.ses.Template` or `aws.sesv2.EmailIdentity` and related SESv2 resources. See the [AWS End User Messaging migration guide](https://docs.aws.amazon.com/pinpoint/latest/userguide/migrate.html) for details.
///
/// Provides an End User Messaging Email Template resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.pinpoint.EmailTemplate("test", {
///     emailTemplates: [{
///         headers: [{
///             name: "testingname",
///             value: "testingvalue",
///         }],
///         subject: "testing",
///         textPart: "we are testing template text part",
///     }],
///     templateName: "testing",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.pinpoint.EmailTemplate("test",
///     email_templates=[{
///         "headers": [{
///             "name": "testingname",
///             "value": "testingvalue",
///         }],
///         "subject": "testing",
///         "text_part": "we are testing template text part",
///     }],
///     template_name="testing")
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
///         EmailTemplates = new[]
///         {
///             new Aws.Pinpoint.Inputs.EmailTemplateEmailTemplateArgs
///             {
///                 Headers = new[]
///                 {
///                     new Aws.Pinpoint.Inputs.EmailTemplateEmailTemplateHeaderArgs
///                     {
///                         Name = "testingname",
///                         Value = "testingvalue",
///                     },
///                 },
///                 Subject = "testing",
///                 TextPart = "we are testing template text part",
///             },
///         },
///         TemplateName = "testing",
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
/// 			EmailTemplates: pinpoint.EmailTemplateEmailTemplateArray{
/// 				&pinpoint.EmailTemplateEmailTemplateArgs{
/// 					Headers: pinpoint.EmailTemplateEmailTemplateHeaderArray{
/// 						&pinpoint.EmailTemplateEmailTemplateHeaderArgs{
/// 							Name:  pulumi.String("testingname"),
/// 							Value: pulumi.String("testingvalue"),
/// 						},
/// 					},
/// 					Subject:  pulumi.String("testing"),
/// 					TextPart: pulumi.String("we are testing template text part"),
/// 				},
/// 			},
/// 			TemplateName: pulumi.String("testing"),
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
/// resource "aws_pinpoint_emailtemplate" "test" {
///   email_templates {
///     headers {
///       name  = "testingname"
///       value = "testingvalue"
///     }
///     subject   = "testing"
///     text_part = "we are testing template text part"
///   }
///   template_name = "testing"
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
/// import com.pulumi.aws.pinpoint.inputs.EmailTemplateEmailTemplateHeaderArgs;
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
///         var test = new EmailTemplate("test", EmailTemplateArgs.builder()
///             .emailTemplates(EmailTemplateEmailTemplateArgs.builder()
///                 .headers(EmailTemplateEmailTemplateHeaderArgs.builder()
///                     .name("testingname")
///                     .value("testingvalue")
///                     .build())
///                 .subject("testing")
///                 .textPart("we are testing template text part")
///                 .build())
///             .templateName("testing")
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
///       emailTemplates:
///         - headers:
///             - name: testingname
///               value: testingvalue
///           subject: testing
///           textPart: we are testing template text part
///       templateName: testing
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import End User Messaging Email Template using the `templateName`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/emailTemplate:EmailTemplate reset template_name
/// ```
class EmailTemplate extends pulumi.CustomResource {
  /// ARN of the message template.
  late final pulumi.Output<String> arn;
  /// Content and settings for a message template that can be used in messages that are sent through the email channel. See below.
  late final pulumi.Output<List<EmailTemplateEmailTemplate>?> emailTemplates;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    emailTemplates = registerOutput<List<EmailTemplateEmailTemplate>?>('emailTemplates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailTemplateEmailTemplate>(guardedValue, (value) => EmailTemplateEmailTemplate.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    templateName = registerOutput<String>('templateName');
  }

  /// Gets an existing [EmailTemplate] resource's state with the given [name] and [id].
  static EmailTemplate get(
    String name,
    pulumi.Input<String> id, {
    EmailTemplateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EmailTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    arn = registerOutput<String>('arn');
    emailTemplates = registerOutput<List<EmailTemplateEmailTemplate>?>('emailTemplates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailTemplateEmailTemplate>(guardedValue, (value) => EmailTemplateEmailTemplate.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    templateName = registerOutput<String>('templateName');
  }

  /// Creates a typed reference to an existing [EmailTemplate] resource.
  EmailTemplate.reference(String urn)
    : super(
        'aws:pinpoint/emailTemplate:EmailTemplate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    emailTemplates = registerOutput<List<EmailTemplateEmailTemplate>?>('emailTemplates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailTemplateEmailTemplate>(guardedValue, (value) => EmailTemplateEmailTemplate.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    templateName = registerOutput<String>('templateName');
  }
}
