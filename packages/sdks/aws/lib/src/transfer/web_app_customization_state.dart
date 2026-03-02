// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WebAppCustomization resources.
class WebAppCustomizationState {
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
  final pulumi.Input<String>? webAppId;

  /// Creates a new [WebAppCustomizationState].
  /// [faviconFile] Base64-encoded string representing the favicon image. Terraform will detect drift only if this argument is specified. To remove the favicon, recreate the resource.
  /// [logoFile] Base64-encoded string representing the logo image. Terraform will detect drift only if this argument is specified. To remove the logo, recreate the resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [title] Title of the web app. Must be between 1 and 100 characters in length (an empty string is not allowed). To remove the title, omit this argument from your configuration.
  /// [webAppId] The identifier of the web app to be customized.
  WebAppCustomizationState({
    this.faviconFile,
    this.logoFile,
    this.region,
    this.title,
    this.webAppId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'faviconFile': ?faviconFile,
      'logoFile': ?logoFile,
      'region': ?region,
      'title': ?title,
      'webAppId': ?webAppId,
    };
  }

  factory WebAppCustomizationState.fromMap(Map<String, dynamic> map) {
    return WebAppCustomizationState(
      faviconFile: map['faviconFile'] == null ? null : (map['faviconFile'] as String).input(),
      logoFile: map['logoFile'] == null ? null : (map['logoFile'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
      webAppId: map['webAppId'] == null ? null : (map['webAppId'] as String).input(),
    );
  }
}

