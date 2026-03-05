// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertConfigurationJoinConfiguration {
  /// Data matching expression. When the data content does not need to be determined, set it to an empty string. In other cases, it needs to be set as an expression, for example, errCnt&gt; 10.
  final pulumi.Input<String>? condition;
  final pulumi.Input<String>? type;

  /// Creates a new [AlertConfigurationJoinConfiguration].
  /// [condition] Data matching expression. When the data content does not need to be determined, set it to an empty string. In other cases, it needs to be set as an expression, for example, errCnt&gt; 10.
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
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

