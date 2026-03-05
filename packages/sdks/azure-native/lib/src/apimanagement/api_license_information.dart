// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// API license information
class ApiLicenseInformation {
  /// The license name used for the API
  final pulumi.Input<String>? name;
  /// A URL to the license used for the API. MUST be in the format of a URL
  final pulumi.Input<String>? url;

  /// Creates a new [ApiLicenseInformation].
  /// [name] The license name used for the API
  /// [url] A URL to the license used for the API. MUST be in the format of a URL
  ApiLicenseInformation({
    this.name,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'url': ?url,
    };
  }

  factory ApiLicenseInformation.fromMap(Map<String, dynamic> map) {
    return ApiLicenseInformation(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

