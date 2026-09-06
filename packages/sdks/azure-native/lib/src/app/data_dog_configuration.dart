// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of datadog
class DataDogConfiguration {
  /// The data dog api key
  final pulumi.Input<String?>? key;
  /// The data dog site
  final pulumi.Input<String?>? site;

  /// Creates a new [DataDogConfiguration].
  /// [key] The data dog api key
  /// [site] The data dog site
  const DataDogConfiguration({
    this.key,
    this.site,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'site': ?site,
    };
  }

  factory DataDogConfiguration.fromMap(Map<String, dynamic> map) {
    return DataDogConfiguration(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      site: (() { final guardedValue = map['site']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
