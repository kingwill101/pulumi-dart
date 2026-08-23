import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_app_customization_args.dart';
import 'web_app_customization_state.dart';

/// Resource for managing an AWS Transfer Family Web App Customization.
///
/// ## Example Usage
///
/// ## Import
///
/// Using `pulumi import`, import Transfer Family Web App Customization using the `webAppId`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/webAppCustomization:WebAppCustomization example webapp-12345678901234567890
/// ```
class WebAppCustomization extends pulumi.CustomResource {
  /// Base64-encoded string representing the favicon image. Terraform will detect drift only if this argument is specified. To remove the favicon, recreate the resource.
  late final pulumi.Output<String> faviconFile;
  /// Base64-encoded string representing the logo image. Terraform will detect drift only if this argument is specified. To remove the logo, recreate the resource.
  late final pulumi.Output<String> logoFile;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Title of the web app. Must be between 1 and 100 characters in length (an empty string is not allowed). To remove the title, omit this argument from your configuration.
  late final pulumi.Output<String?> title;
  /// Identifier of the web app to be customized.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> webAppId;

  /// Creates a new [WebAppCustomization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppCustomization]. {@macro pulumi_transfer_web_app_customization_web_app_customization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppCustomization(
    String name, {
    WebAppCustomizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transfer/webAppCustomization:WebAppCustomization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    faviconFile = registerOutput<String>('faviconFile');
    logoFile = registerOutput<String>('logoFile');
    region = registerOutput<String>('region');
    title = registerOutput<String?>('title');
    webAppId = registerOutput<String>('webAppId');
  }

  /// Gets an existing [WebAppCustomization] resource's state with the given [name] and [id].
  static WebAppCustomization get(
    String name,
    pulumi.Input<String> id, {
    WebAppCustomizationState? state,
  }) {
    return WebAppCustomization._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WebAppCustomization._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transfer/webAppCustomization:WebAppCustomization',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    faviconFile = registerOutput<String>('faviconFile');
    logoFile = registerOutput<String>('logoFile');
    region = registerOutput<String>('region');
    title = registerOutput<String?>('title');
    webAppId = registerOutput<String>('webAppId');
  }
}
