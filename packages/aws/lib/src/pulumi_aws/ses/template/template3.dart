import 'package:pulumi/pulumi.dart';
import 'template_args3.dart';

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
class Template3 extends CustomResource {
  /// The ARN of the SES template
  late final Output<String> arn;

  /// The HTML body of the email. Must be less than 500KB in size, including both the text and HTML parts.
  late final Output<String?> html;

  /// The name of the template. Cannot exceed 64 characters. You will refer to this name when you send email.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The subject line of the email.
  late final Output<String?> subject;

  /// The email body that will be visible to recipients whose email clients do not display HTML. Must be less than 500KB in size, including both the text and HTML parts.
  late final Output<String?> text;

  Template3(
    String name, {
    TemplateArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ses/template:Template',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.html = registerOutput<String?>('html');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.subject = registerOutput<String?>('subject');
    this.text = registerOutput<String?>('text');
  }
}
