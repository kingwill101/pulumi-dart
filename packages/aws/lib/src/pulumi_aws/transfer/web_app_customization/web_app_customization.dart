import 'package:pulumi/pulumi.dart';
import 'web_app_customization_args.dart';

/// Resource for managing an AWS Transfer Family Web App Customization.
///
/// ## Example Usage
///
/// ## Import
///
/// Using `pulumi import`, import Transfer Family Web App Customization using the <span pulumi-lang-nodejs="`webAppId`" pulumi-lang-dotnet="`WebAppId`" pulumi-lang-go="`webAppId`" pulumi-lang-python="`web_app_id`" pulumi-lang-yaml="`webAppId`" pulumi-lang-java="`webAppId`">`web_app_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/webAppCustomization:WebAppCustomization example webapp-12345678901234567890
/// ```
class WebAppCustomization extends CustomResource {
  /// Base64-encoded string representing the favicon image. Terraform will detect drift only if this argument is specified. To remove the favicon, recreate the resource.
  late final Output<String> faviconFile;

  /// Base64-encoded string representing the logo image. Terraform will detect drift only if this argument is specified. To remove the logo, recreate the resource.
  late final Output<String> logoFile;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Title of the web app. Must be between 1 and 100 characters in length (an empty string is not allowed). To remove the title, omit this argument from your configuration.
  late final Output<String?> title;

  /// The identifier of the web app to be customized.
  ///
  /// The following arguments are optional:
  late final Output<String> webAppId;

  WebAppCustomization(
    String name, {
    WebAppCustomizationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:transfer/webAppCustomization:WebAppCustomization',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.faviconFile = Output.createUnknown<String>();
    this.logoFile = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.title = Output.createUnknown<String?>();
    this.webAppId = Output.createUnknown<String>();
  }
}
