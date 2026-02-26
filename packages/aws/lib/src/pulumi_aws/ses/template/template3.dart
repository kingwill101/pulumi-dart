import 'package:pulumi/pulumi.dart';
import 'template_args3.dart';

/// Provides a resource to create a SES template.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myTemplate = new aws.ses.Template("MyTemplate", {
/// name: "MyTemplate",
/// subject: "Greetings, {{name}}!",
/// html: "<h1>Hello {{name}},</h1><p>Your favorite animal is {{favoriteanimal}}.</p>",
/// text: `Hello {{name}},\x0d
/// Your favorite animal is {{favoriteanimal}}.`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_template = aws.ses.Template("MyTemplate",
/// name="MyTemplate",
/// subject="Greetings, {{name}}!",
/// html="<h1>Hello {{name}},</h1><p>Your favorite animal is {{favoriteanimal}}.</p>",
/// text="""Hello {{name}},\x0d
/// Your favorite animal is {{favoriteanimal}}.""")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myTemplate = new Aws.Ses.Template("MyTemplate", new()
/// {
/// Name = "MyTemplate",
/// Subject = "Greetings, {{name}}!",
/// Html = "<h1>Hello {{name}},</h1><p>Your favorite animal is {{favoriteanimal}}.</p>",
/// Text = @"Hello {{name}},
/// Your favorite animal is {{favoriteanimal}}.",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ses.NewTemplate(ctx, "MyTemplate", &ses.TemplateArgs{
/// Name:    pulumi.String("MyTemplate"),
/// Subject: pulumi.String("Greetings, {{name}}!"),
/// Html:    pulumi.String("<h1>Hello {{name}},</h1><p>Your favorite animal is {{favoriteanimal}}.</p>"),
/// Text:    pulumi.String("Hello {{name}},\nYour favorite animal is {{favoriteanimal}}."),
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
/// import com.pulumi.aws.ses.Template;
/// import com.pulumi.aws.ses.TemplateArgs;
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
/// var myTemplate = new Template("myTemplate", TemplateArgs.builder()
/// .name("MyTemplate")
/// .subject("Greetings, {{name}}!")
/// .html("<h1>Hello {{name}},</h1><p>Your favorite animal is {{favoriteanimal}}.</p>")
/// .text("""
/// Hello {{name}},
/// Your favorite animal is {{favoriteanimal}}.            """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myTemplate:
/// type: aws:ses:Template
/// name: MyTemplate
/// properties:
/// name: MyTemplate
/// subject: Greetings, {{name}}!
/// html: <h1>Hello {{name}},</h1><p>Your favorite animal is {{favoriteanimal}}.</p>
/// text: "Hello {{name}},\r\nYour favorite animal is {{favoriteanimal}}."
/// ```
/// <!--End PulumiCodeChooser -->
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
