// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertLabel {
  /// Labels's key for new alert.
  final pulumi.Input<String> key;
  /// Labels's value for new alert.
  final pulumi.Input<String> value;

  /// Creates a new [AlertLabel].
  /// [key] Labels's key for new alert.
  /// [value] Labels's value for new alert.
  const AlertLabel({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory AlertLabel.fromMap(Map<String, dynamic> map) {
    return AlertLabel(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

