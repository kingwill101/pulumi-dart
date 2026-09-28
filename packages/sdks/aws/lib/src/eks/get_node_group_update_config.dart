// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNodeGroupUpdateConfig {
  final pulumi.Input<int> maxUnavailable;
  final pulumi.Input<int> maxUnavailablePercentage;
  final pulumi.Input<String> updateStrategy;

  /// Creates a new [GetNodeGroupUpdateConfig].
  /// [maxUnavailable] Required.
  /// [maxUnavailablePercentage] Required.
  /// [updateStrategy] Required.
  const GetNodeGroupUpdateConfig({
    required this.maxUnavailable,
    required this.maxUnavailablePercentage,
    required this.updateStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxUnavailable': maxUnavailable,
      'maxUnavailablePercentage': maxUnavailablePercentage,
      'updateStrategy': updateStrategy,
    };
  }

  factory GetNodeGroupUpdateConfig.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupUpdateConfig(
      maxUnavailable: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxUnavailable'])),
      maxUnavailablePercentage: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxUnavailablePercentage'])),
      updateStrategy: pulumi.Input.fromValue(map['updateStrategy'] as String),
    );
  }
}
