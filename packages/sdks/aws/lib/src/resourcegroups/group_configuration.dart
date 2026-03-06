// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_configuration_parameter.dart';

class GroupConfiguration {
  /// A collection of parameters for this group configuration item. See below for details.
  final pulumi.Input<List<GroupConfigurationParameter>>? parameters;
  /// Specifies the type of group configuration item.
  final pulumi.Input<String> type;

  /// Creates a new [GroupConfiguration].
  /// [parameters] A collection of parameters for this group configuration item. See below for details.
  /// [type] Specifies the type of group configuration item.
  const GroupConfiguration({
    this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<GroupConfigurationParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GroupConfigurationParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory GroupConfiguration.fromMap(Map<String, dynamic> map) {
    return GroupConfiguration(
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GroupConfigurationParameter>(guardedValue, (value) => GroupConfigurationParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

