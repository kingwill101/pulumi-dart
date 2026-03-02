// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetParametersParameter {
  /// The constraints of the common parameter. **Note:** `constraints` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> constraints;
  /// The time when the common parameter was created.
  final pulumi.Input<String> createTime;
  /// The user who created the common parameter.
  final pulumi.Input<String> createdBy;
  /// The description of the common parameter.
  final pulumi.Input<String> description;
  /// The ID of the Parameter. Its value is same as `parameter_name`.
  final pulumi.Input<String> id;
  /// The ID of the common parameter.
  final pulumi.Input<String> parameterId;
  /// The name of the common parameter. You can enter a keyword to query parameter names in fuzzy match mode.
  final pulumi.Input<String> parameterName;
  /// The version number of the common parameter.
  final pulumi.Input<int> parameterVersion;
  /// The ID of the Resource Group.
  final pulumi.Input<String> resourceGroupId;
  /// The share type of the common parameter.
  final pulumi.Input<String> shareType;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// The data type of the common parameter. Valid values: `String`, `StringList`.
  final pulumi.Input<String> type;
  /// The user who updated the common parameter.
  final pulumi.Input<String> updatedBy;
  /// The time when the common parameter was updated.
  final pulumi.Input<String> updatedDate;
  /// (Available since v1.231.0) The value of the common parameter. **Note:** `value` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> value;

  /// Creates a new [GetParametersParameter].
  /// [constraints] The constraints of the common parameter. **Note:** `constraints` takes effect only if `enable_details` is set to `true`.
  /// [createTime] The time when the common parameter was created.
  /// [createdBy] The user who created the common parameter.
  /// [description] The description of the common parameter.
  /// [id] The ID of the Parameter. Its value is same as `parameter_name`.
  /// [parameterId] The ID of the common parameter.
  /// [parameterName] The name of the common parameter. You can enter a keyword to query parameter names in fuzzy match mode.
  /// [parameterVersion] The version number of the common parameter.
  /// [resourceGroupId] The ID of the Resource Group.
  /// [shareType] The share type of the common parameter.
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] The data type of the common parameter. Valid values: `String`, `StringList`.
  /// [updatedBy] The user who updated the common parameter.
  /// [updatedDate] The time when the common parameter was updated.
  /// [value] (Available since v1.231.0) The value of the common parameter. **Note:** `value` takes effect only if `enable_details` is set to `true`.
  GetParametersParameter({
    required this.constraints,
    required this.createTime,
    required this.createdBy,
    required this.description,
    required this.id,
    required this.parameterId,
    required this.parameterName,
    required this.parameterVersion,
    required this.resourceGroupId,
    required this.shareType,
    required this.tags,
    required this.type,
    required this.updatedBy,
    required this.updatedDate,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraints': constraints,
      'createTime': createTime,
      'createdBy': createdBy,
      'description': description,
      'id': id,
      'parameterId': parameterId,
      'parameterName': parameterName,
      'parameterVersion': parameterVersion,
      'resourceGroupId': resourceGroupId,
      'shareType': shareType,
      'tags': tags,
      'type': type,
      'updatedBy': updatedBy,
      'updatedDate': updatedDate,
      'value': value,
    };
  }

  factory GetParametersParameter.fromMap(Map<String, dynamic> map) {
    return GetParametersParameter(
      constraints: (map['constraints'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      createdBy: (map['createdBy'] as String).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      parameterId: (map['parameterId'] as String).input(),
      parameterName: (map['parameterName'] as String).input(),
      parameterVersion: (map['parameterVersion'] as int).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      shareType: (map['shareType'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
      updatedBy: (map['updatedBy'] as String).input(),
      updatedDate: (map['updatedDate'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

