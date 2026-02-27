import 'package:pulumi/pulumi.dart';
import '../email_template_email_template/email_template_email_template.dart';
import 'email_template_args.dart';

/// Provides a Pinpoint Email Template resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Pinpoint Email Template using the `template_name`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/emailTemplate:EmailTemplate reset template_name
/// ```
class EmailTemplate extends CustomResource {
  /// Amazon Resource Name (ARN) of the message template.
  late final Output<String> arn;

  /// Specifies the content and settings for a message template that can be used in messages that are sent through the email channel. See Email Template
  late final Output<List<EmailTemplateEmailTemplate>?> emailTemplates;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
  late final Output<String> templateName;

  EmailTemplate(
    String name, {
    EmailTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/emailTemplate:EmailTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.emailTemplates =
        registerOutput<List<EmailTemplateEmailTemplate>?>('emailTemplates');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.templateName = registerOutput<String>('templateName');
  }
}
