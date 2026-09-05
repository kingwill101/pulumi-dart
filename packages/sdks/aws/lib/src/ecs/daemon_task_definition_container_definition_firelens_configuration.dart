// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DaemonTaskDefinitionContainerDefinitionFirelensConfiguration {
  /// Options to use when configuring the log router.
  final pulumi.Input<Map<String, String>?>? options;
  /// Log router to use. Valid values: `fluentd`, `fluentbit`.
  final pulumi.Input<String> type;

  /// Creates a new [DaemonTaskDefinitionContainerDefinitionFirelensConfiguration].
  /// [options] Options to use when configuring the log router.
  /// [type] Log router to use. Valid values: `fluentd`, `fluentbit`.
  const DaemonTaskDefinitionContainerDefinitionFirelensConfiguration({
    this.options,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'options': ?options,
      'type': type,
    };
  }

  factory DaemonTaskDefinitionContainerDefinitionFirelensConfiguration.fromMap(Map<String, dynamic> map) {
    return DaemonTaskDefinitionContainerDefinitionFirelensConfiguration(
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
