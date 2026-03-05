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
      constraints: pulumi.Input.fromValue(map['constraints'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      createdBy: pulumi.Input.fromValue(map['createdBy'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      parameterId: pulumi.Input.fromValue(map['parameterId'] as String),
      parameterName: pulumi.Input.fromValue(map['parameterName'] as String),
      parameterVersion: pulumi.Input.fromValue(map['parameterVersion'] as int),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      shareType: pulumi.Input.fromValue(map['shareType'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
      updatedBy: pulumi.Input.fromValue(map['updatedBy'] as String),
      updatedDate: pulumi.Input.fromValue(map['updatedDate'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

