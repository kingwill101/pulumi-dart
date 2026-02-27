// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../group_configuration_parameter/group_configuration_parameter.dart';

class GroupConfiguration {
  /// A collection of parameters for this group configuration item. See below for details.
  final List<GroupConfigurationParameter>? parameters;

  /// Specifies the type of group configuration item.
  final String type;

  GroupConfiguration({
    this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.encodeList<GroupConfigurationParameter,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory GroupConfiguration.fromMap(Map<String, dynamic> map) {
    return GroupConfiguration(
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<GroupConfigurationParameter>(
              map['parameters'],
              (value) => GroupConfigurationParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
