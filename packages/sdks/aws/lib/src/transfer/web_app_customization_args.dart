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
    this.faviconFile,
    this.logoFile,
    this.region,
    this.title,
    required this.webAppId,
  });

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
      faviconFile: (() { final guardedValue = map['faviconFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logoFile: (() { final guardedValue = map['logoFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webAppId: pulumi.Input.fromValue(map['webAppId'] as String),
    );
  }
}

