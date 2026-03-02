// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataMaskingEntity {
  /// Data masking mode.
  final pulumi.Input<String>? mode;
  /// The name of an entity to mask (e.g. a name of a header or a query parameter).
  final pulumi.Input<String>? value;

  /// Creates a new [DataMaskingEntity].
  /// [mode] Data masking mode.
  /// [value] The name of an entity to mask (e.g. a name of a header or a query parameter).
  DataMaskingEntity({
    this.mode,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'value': ?value,
    };
  }

  factory DataMaskingEntity.fromMap(Map<String, dynamic> map) {
    return DataMaskingEntity(
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

