// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BaselineBaselineItem {
  /// Baseline item configuration. The format is a JSON string.
  final pulumi.Input<String>? config;

  /// The baseline item name.
  final pulumi.Input<String>? name;

  /// The baseline item version.
  final pulumi.Input<String>? version;

  /// Creates a new [BaselineBaselineItem].
  /// [config] Baseline item configuration. The format is a JSON string.
  /// [name] The baseline item name.
  /// [version] The baseline item version.
  BaselineBaselineItem({this.config, this.name, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'name': ?name,
      'version': ?version,
    };
  }

  factory BaselineBaselineItem.fromMap(Map<String, dynamic> map) {
    return BaselineBaselineItem(
      config: (() {
        final guardedValue = map['config'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
