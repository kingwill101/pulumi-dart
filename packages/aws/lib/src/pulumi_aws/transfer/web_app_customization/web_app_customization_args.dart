// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for WebAppCustomization.
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

  WebAppCustomizationArgs({
    this.faviconFile,
    this.logoFile,
    this.region,
    this.title,
    required this.webAppId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final faviconFileValue = faviconFile;
    if (faviconFileValue != null) {
      map['faviconFile'] = faviconFileValue;
    }
    final logoFileValue = logoFile;
    if (logoFileValue != null) {
      map['logoFile'] = logoFileValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    map['webAppId'] = webAppId;
    return map;
  }

  factory WebAppCustomizationArgs.fromMap(Map<String, dynamic> map) {
    return WebAppCustomizationArgs(
      faviconFile: pulumi.Input.asOptionalInput<String>(map['faviconFile']),
      logoFile: pulumi.Input.asOptionalInput<String>(map['logoFile']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      title: pulumi.Input.asOptionalInput<String>(map['title']),
      webAppId: pulumi.Input.asInput<String>(map['webAppId']),
    );
  }
}
