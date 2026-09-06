// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of datadog
class DataDogConfigurationResponse {
  /// The data dog api key
  final pulumi.Input<String?>? key;
  /// The data dog site
  final pulumi.Input<String?>? site;

  /// Creates a new [DataDogConfigurationResponse].
  /// [key] The data dog api key
  /// [site] The data dog site
  const DataDogConfigurationResponse({
    this.key,
    this.site,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'site': ?site,
    };
  }

  factory DataDogConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DataDogConfigurationResponse(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      site: (() { final guardedValue = map['site']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
