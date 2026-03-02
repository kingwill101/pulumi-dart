// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertConfigurationJoinConfiguration {
  /// Data matching expression. When the data content does not need to be determined, set it to an empty string. In other cases, it needs to be set as an expression, for example, errCnt> 10.
  final pulumi.Input<String>? condition;
  final pulumi.Input<String>? type;

  /// Creates a new [AlertConfigurationJoinConfiguration].
  /// [condition] Data matching expression. When the data content does not need to be determined, set it to an empty string. In other cases, it needs to be set as an expression, for example, errCnt> 10.
  /// [type] Optional.
  AlertConfigurationJoinConfiguration({
    this.condition,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'type': ?type,
    };
  }

  factory AlertConfigurationJoinConfiguration.fromMap(Map<String, dynamic> map) {
    return AlertConfigurationJoinConfiguration(
      condition: map['condition'] == null ? null : (map['condition'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

