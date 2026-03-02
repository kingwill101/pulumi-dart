// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetQuotaAlarmsAlarmQuotaDimension {
  /// The key of quota_dimensions.
  final pulumi.Input<String> key;
  /// The value of quota_dimensions.
  final pulumi.Input<String> value;

  /// Creates a new [GetQuotaAlarmsAlarmQuotaDimension].
  /// [key] The key of quota_dimensions.
  /// [value] The value of quota_dimensions.
  GetQuotaAlarmsAlarmQuotaDimension({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetQuotaAlarmsAlarmQuotaDimension.fromMap(Map<String, dynamic> map) {
    return GetQuotaAlarmsAlarmQuotaDimension(
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

