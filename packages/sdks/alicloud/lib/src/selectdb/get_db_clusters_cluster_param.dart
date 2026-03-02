// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDbClustersClusterParam {
  /// The comments on the parameter.
  final pulumi.Input<String> comment;
  /// The default value of the parameter.
  final pulumi.Input<String> defaultValue;
  /// Indicates whether the parameter immediately takes effect without requiring a restart.
  final pulumi.Input<int> isDynamic;
  /// Indicates whether the parameter is modifiable.
  final pulumi.Input<int> isUserModifiable;
  /// Changed parameter name.
  final pulumi.Input<String> name;
  /// The value range of the parameter.
  final pulumi.Input<String> optional;
  /// The category of the parameter.
  final pulumi.Input<String> paramCategory;
  /// The new value of Parameter.
  final pulumi.Input<String> value;

  /// Creates a new [GetDbClustersClusterParam].
  /// [comment] The comments on the parameter.
  /// [defaultValue] The default value of the parameter.
  /// [isDynamic] Indicates whether the parameter immediately takes effect without requiring a restart.
  /// [isUserModifiable] Indicates whether the parameter is modifiable.
  /// [name] Changed parameter name.
  /// [optional] The value range of the parameter.
  /// [paramCategory] The category of the parameter.
  /// [value] The new value of Parameter.
  GetDbClustersClusterParam({
    required this.comment,
    required this.defaultValue,
    required this.isDynamic,
    required this.isUserModifiable,
    required this.name,
    required this.optional,
    required this.paramCategory,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'defaultValue': defaultValue,
      'isDynamic': isDynamic,
      'isUserModifiable': isUserModifiable,
      'name': name,
      'optional': optional,
      'paramCategory': paramCategory,
      'value': value,
    };
  }

  factory GetDbClustersClusterParam.fromMap(Map<String, dynamic> map) {
    return GetDbClustersClusterParam(
      comment: (map['comment'] as String).input(),
      defaultValue: (map['defaultValue'] as String).input(),
      isDynamic: (map['isDynamic'] as int).input(),
      isUserModifiable: (map['isUserModifiable'] as int).input(),
      name: (map['name'] as String).input(),
      optional: (map['optional'] as String).input(),
      paramCategory: (map['paramCategory'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

