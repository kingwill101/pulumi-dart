import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_args.dart';
import 'template_state.dart';

/// Provides a resource to create a SES template.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myTemplate = new aws.ses.Template("MyTemplate", {
///     name: "MyTemplate",
///     subject: "Greetings, {{name}}!",
///     html: "<h1>Hello {{name}},</h1><p>Your favorite animal is {{favoriteanimal}}.</p>",
///     text: `Hello {{name}},\x0d
/// Your favorite animal is {{favoriteanimal}}.`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_template = aws.ses.Template("MyTemplate",
///     name="MyTemplate",
///     subject="Greetings, {{name}}!",
///     html="<h1>Hello {{name}},</h1><p>Your favorite animal is {{favoriteanimal}}.</p>",
///     text="""Hello {{name}},\x0d
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
///     var myTemplate = new Aws.Ses.Template("MyTemplate", new()
///     {
///         Name = "MyTemplate",
///         Subject = "Greetings, {{name}}!",
///         Html = "<h1>Hello {{name}},</h1><p>Your favorite animal is {{favoriteanimal}}.</p>",
///         Text = @"Hello {{name}},
/// Your favorite animal is {{favoriteanimal}}.",
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
/// 		_, err := ses.NewTemplate(ctx, "MyTemplate", &ses.TemplateArgs{
/// 			Name:    pulumi.String("MyTemplate"),
/// 			Subject: pulumi.String("Greetings, {{name}}!"),
/// 			Html:    pulumi.String("<h1>Hello {{name}},</h1><p>Your favorite animal is {{favoriteanimal}}.</p>"),
/// 			Text:    pulumi.String("Hello {{name}},\r\nYour favorite animal is {{favoriteanimal}}."),
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
/// resource "aws_ses_template" "MyTemplate" {
///   name    = "MyTemplate"
///   subject = "Greetings, {{name}}!"
///   html    = "<h1>Hello {{name}},</h1><p>Your favorite animal is {{favoriteanimal}}.</p>"
///   text    = "Hello {{name}},\r\nYour favorite animal is {{favoriteanimal}}."
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
///         var myTemplate = new Template("myTemplate", TemplateArgs.builder()
///             .name("MyTemplate")
///             .subject("Greetings, {{name}}!")
///             .html("<h1>Hello {{name}},</h1><p>Your favorite animal is {{favoriteanimal}}.</p>")
///             .text("""
/// Hello {{name}},
/// Your favorite animal is {{favoriteanimal}}.            """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myTemplate:
///     type: aws:ses:Template
///     name: MyTemplate
///     properties:
///       name: MyTemplate
///       subject: Greetings, {{name}}!
///       html: <h1>Hello {{name}},</h1><p>Your favorite animal is {{favoriteanimal}}.</p>
///       text: "Hello {{name}},\r\nYour favorite animal is {{favoriteanimal}}."
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SES templates using the template name. For example:
///
/// ```sh
/// $ pulumi import aws:ses/template:Template MyTemplate MyTemplate
/// ```
class Template extends pulumi.CustomResource {
  /// ARN of the SES template
  late final pulumi.Output<String> arn;
  /// HTML body of the email. Must be less than 500KB in size, including both the text and HTML parts.
  late final pulumi.Output<String?> html;
  /// Name of the template. Cannot exceed 64 characters. You will refer to this name when you send email.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Subject line of the email.
  late final pulumi.Output<String?> subject;
  /// Email body that will be visible to recipients whose email clients do not display HTML. Must be less than 500KB in size, including both the text and HTML parts.
  late final pulumi.Output<String?> text;

  /// Creates a new [Template].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Template]. {@macro pulumi_ses_template_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Template(
    String name, {
    TemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ses/template:Template',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    html = registerOutput<String?>('html');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    subject = registerOutput<String?>('subject');
    text = registerOutput<String?>('text');
  }

  /// Gets an existing [Template] resource's state with the given [name] and [id].
  static Template get(
    String name,
    pulumi.Input<String> id, {
    TemplateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Template._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Template._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ses/template:Template',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    html = registerOutput<String?>('html');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    subject = registerOutput<String?>('subject');
    text = registerOutput<String?>('text');
  }

  /// Creates a typed reference to an existing [Template] resource.
  Template.reference(String urn)
    : super(
        'aws:ses/template:Template',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    html = registerOutput<String?>('html');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    subject = registerOutput<String?>('subject');
    text = registerOutput<String?>('text');
  }
}
