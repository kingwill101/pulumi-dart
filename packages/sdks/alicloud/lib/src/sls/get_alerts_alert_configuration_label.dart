// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlertsAlertConfigurationLabel {
  /// Field name.
  final pulumi.Input<String> key;
  /// Field value.
  final pulumi.Input<String> value;

  /// Creates a new [GetAlertsAlertConfigurationLabel].
  /// [key] Field name.
  /// [value] Field value.
  GetAlertsAlertConfigurationLabel({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetAlertsAlertConfigurationLabel.fromMap(Map<String, dynamic> map) {
    return GetAlertsAlertConfigurationLabel(
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

