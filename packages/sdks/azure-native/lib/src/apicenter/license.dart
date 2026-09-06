// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The license information for the API.
class License {
  /// SPDX license information for the API. The identifier field is mutually
  /// exclusive of the URL field.
  final pulumi.Input<String?>? identifier;
  /// Name of the license.
  final pulumi.Input<String?>? name;
  /// URL pointing to the license details. The URL field is mutually exclusive of the
  /// identifier field.
  final pulumi.Input<String?>? url;

  /// Creates a new [License].
  /// [identifier] SPDX license information for the API. The identifier field is mutually
  /// [name] Name of the license.
  /// [url] URL pointing to the license details. The URL field is mutually exclusive of the
  const License({
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

  factory License.fromMap(Map<String, dynamic> map) {
    return License(
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
