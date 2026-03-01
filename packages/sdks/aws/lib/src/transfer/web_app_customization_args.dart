// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_transfer_web_app_customization_web_app_customization_args_doc}
/// The set of arguments for WebAppCustomization.
/// {@endtemplate}
/// {@macro pulumi_transfer_web_app_customization_web_app_customization_args_doc}
class WebAppCustomizationArgs {
  /// Base64-encoded string representing the favicon image. Terraform will detect drift only if this argument is specified. To remove the favicon, recreate the resource.
  final pulumi.Input<String>? faviconFile;
  /// Base64-encoded string representing the logo image. Terraform will detect drift only if this argument is specified. To remove the logo, recreate the resource.
  final pulumi.Input<String>? logoFile;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Title of the web app. Must be between 1 and 100 characters in length (an empty string is not allowed). To remove the title, omit this argument from your configuration.
  final pulumi.Input<String>? title;
  /// The identifier of the web app to be customized.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> webAppId;

  /// Creates a new [WebAppCustomizationArgs].
  /// [faviconFile] Base64-encoded string representing the favicon image. Terraform will detect drift only if this argument is specified. To remove the favicon, recreate the resource.
  /// [logoFile] Base64-encoded string representing the logo image. Terraform will detect drift only if this argument is specified. To remove the logo, recreate the resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [title] Title of the web app. Must be between 1 and 100 characters in length (an empty string is not allowed). To remove the title, omit this argument from your configuration.
  /// [webAppId] The identifier of the web app to be customized.
  WebAppCustomizationArgs({
    pulumi.Output<String>? faviconFile,
    pulumi.Output<String>? logoFile,
    pulumi.Output<String>? region,
    pulumi.Output<String>? title,
    required pulumi.Output<String> webAppId,
  }) :
      faviconFile = pulumi.Input.asOptionalInput<String>(faviconFile),
      logoFile = pulumi.Input.asOptionalInput<String>(logoFile),
      region = pulumi.Input.asOptionalInput<String>(region),
      title = pulumi.Input.asOptionalInput<String>(title),
      webAppId = pulumi.Input.asInput<String>(webAppId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'faviconFile': ?faviconFile,
      'logoFile': ?logoFile,
      'region': ?region,
      'title': ?title,
      'webAppId': webAppId,
    };
  }

  factory WebAppCustomizationArgs.fromMap(Map<String, dynamic> map) {
    return WebAppCustomizationArgs(
      faviconFile: map['faviconFile'] == null ? null : pulumi.Output.create<String>(map['faviconFile'] as String),
      logoFile: map['logoFile'] == null ? null : pulumi.Output.create<String>(map['logoFile'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      title: map['title'] == null ? null : pulumi.Output.create<String>(map['title'] as String),
      webAppId: pulumi.Output.create<String>(map['webAppId'] as String),
    );
  }
}

