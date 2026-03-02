// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The license information for the API.
class LicenseResponse {
  /// SPDX license information for the API. The identifier field is mutually
  /// exclusive of the URL field.
  final pulumi.Input<String>? identifier;
  /// Name of the license.
  final pulumi.Input<String>? name;
  /// URL pointing to the license details. The URL field is mutually exclusive of the
  /// identifier field.
  final pulumi.Input<String>? url;

  /// Creates a new [LicenseResponse].
  /// [identifier] SPDX license information for the API. The identifier field is mutually
  /// [name] Name of the license.
  /// [url] URL pointing to the license details. The URL field is mutually exclusive of the
  LicenseResponse({
    this.identifier,
    this.name,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': ?identifier,
      'name': ?name,
      'url': ?url,
    };
  }

  factory LicenseResponse.fromMap(Map<String, dynamic> map) {
    return LicenseResponse(
      identifier: map['identifier'] == null ? null : (map['identifier']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}

