// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_configuration_parameter.dart';

class GroupConfiguration {
  /// A collection of parameters for this group configuration item. See below for details.
  final List<GroupConfigurationParameter>? parameters;

  /// Specifies the type of group configuration item.
  final String type;

  /// Creates a new [GroupConfiguration].
  /// [parameters] A collection of parameters for this group configuration item. See below for details.
  /// [type] Specifies the type of group configuration item.
  GroupConfiguration({this.parameters, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters == null
          ? null
          : pulumi.Input.encodeList<
              GroupConfigurationParameter,
              Map<String, dynamic>
            >(parameters!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GroupConfiguration.fromMap(Map<String, dynamic> map) {
    return GroupConfiguration(
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<GroupConfigurationParameter>(
              map['parameters'],
              (value) => GroupConfigurationParameter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      type: map['type'] as String,
    );
  }
}
