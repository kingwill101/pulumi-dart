// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetQuotaAlarmsQuotaDimension {
  final pulumi.Input<String>? key;
  final pulumi.Input<String>? value;

  /// Creates a new [GetQuotaAlarmsQuotaDimension].
  /// [key] Optional.
  /// [value] Optional.
  GetQuotaAlarmsQuotaDimension({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory GetQuotaAlarmsQuotaDimension.fromMap(Map<String, dynamic> map) {
    return GetQuotaAlarmsQuotaDimension(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

