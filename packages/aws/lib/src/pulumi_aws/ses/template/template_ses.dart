import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_ses_args.dart';

/// Provides a resource to create a SES template.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SES templates using the template name. For example:
///
/// ```sh
/// $ pulumi import aws:ses/template:Template MyTemplate MyTemplate
/// ```
class TemplateSes extends pulumi.CustomResource {
  /// The ARN of the SES template
  late final pulumi.Output<String> arn;

  /// The HTML body of the email. Must be less than 500KB in size, including both the text and HTML parts.
  late final pulumi.Output<String?> html;

  /// The name of the template. Cannot exceed 64 characters. You will refer to this name when you send email.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The subject line of the email.
  late final pulumi.Output<String?> subject;

  /// The email body that will be visible to recipients whose email clients do not display HTML. Must be less than 500KB in size, including both the text and HTML parts.
  late final pulumi.Output<String?> text;

  TemplateSes(
    String name, {
    TemplateSesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ses/template:Template',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.html = registerOutput<String?>('html');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.subject = registerOutput<String?>('subject');
    this.text = registerOutput<String?>('text');
  }
}
