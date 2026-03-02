// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oos_parameter_parameter_args_doc}
/// The set of arguments for Parameter.
/// {@endtemplate}
/// {@macro pulumi_oos_parameter_parameter_args_doc}
class ParameterArgs {
  /// The constraints of the common parameter. This value follows the json format. By default, this parameter is null. Valid values:
  /// * `AllowedValues`: The value that is allowed for the common parameter. It must be an array string.
  /// * `AllowedPattern`: The pattern that is allowed for the common parameter. It must be a regular expression.
  /// * `MinLength`: The minimum length of the common parameter.
  /// * `MaxLength`: The maximum length of the common parameter.
  final pulumi.Input<String>? constraints;
  /// The description of the common parameter. The description must be `1` to `200` characters in length.
  final pulumi.Input<String>? description;
  /// The name of the common parameter. The name must be `2` to `180` characters in length, and can contain letters, digits, hyphens (-), forward slashes (/) and underscores (_). It cannot start with `ALIYUN`, `ACS`, `ALIBABA`, `ALICLOUD`, or `OOS`.
  final pulumi.Input<String> parameterName;
  /// The ID of the Resource Group.
  final pulumi.Input<String>? resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The data type of the common parameter. Valid values: `String` and `StringList`.
  final pulumi.Input<String> type;
  /// The value of the common parameter. The value must be `1` to `4096` characters in length.
  final pulumi.Input<String> value;

  /// Creates a new [ParameterArgs].
  /// [constraints] The constraints of the common parameter. This value follows the json format. By default, this parameter is null. Valid values:
  /// [description] The description of the common parameter. The description must be `1` to `200` characters in length.
  /// [parameterName] The name of the common parameter. The name must be `2` to `180` characters in length, and can contain letters, digits, hyphens (-), forward slashes (/) and underscores (_). It cannot start with `ALIYUN`, `ACS`, `ALIBABA`, `ALICLOUD`, or `OOS`.
  /// [resourceGroupId] The ID of the Resource Group.
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] The data type of the common parameter. Valid values: `String` and `StringList`.
  /// [value] The value of the common parameter. The value must be `1` to `4096` characters in length.
  ParameterArgs({
    this.constraints,
    this.description,
    required this.parameterName,
    this.resourceGroupId,
    this.tags,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraints': ?constraints,
      'description': ?description,
      'parameterName': parameterName,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
      'type': type,
      'value': value,
    };
  }

  factory ParameterArgs.fromMap(Map<String, dynamic> map) {
    return ParameterArgs(
      constraints: map['constraints'] == null ? null : (map['constraints'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      parameterName: (map['parameterName'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

