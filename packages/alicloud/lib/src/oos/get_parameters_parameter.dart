// ignore_for_file: unused_element, unnecessary_cast


class GetParametersParameter {
  /// The constraints of the common parameter. **Note:** `constraints` takes effect only if `enable_details` is set to `true`.
  final String constraints;
  /// The time when the common parameter was created.
  final String createTime;
  /// The user who created the common parameter.
  final String createdBy;
  /// The description of the common parameter.
  final String description;
  /// The ID of the Parameter. Its value is same as `parameter_name`.
  final String id;
  /// The ID of the common parameter.
  final String parameterId;
  /// The name of the common parameter. You can enter a keyword to query parameter names in fuzzy match mode.
  final String parameterName;
  /// The version number of the common parameter.
  final int parameterVersion;
  /// The ID of the Resource Group.
  final String resourceGroupId;
  /// The share type of the common parameter.
  final String shareType;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// The data type of the common parameter. Valid values: `String`, `StringList`.
  final String type;
  /// The user who updated the common parameter.
  final String updatedBy;
  /// The time when the common parameter was updated.
  final String updatedDate;
  /// (Available since v1.231.0) The value of the common parameter. **Note:** `value` takes effect only if `enable_details` is set to `true`.
  final String value;

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
      constraints: map['constraints'] as String,
      createTime: map['createTime'] as String,
      createdBy: map['createdBy'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      parameterId: map['parameterId'] as String,
      parameterName: map['parameterName'] as String,
      parameterVersion: map['parameterVersion'] as int,
      resourceGroupId: map['resourceGroupId'] as String,
      shareType: map['shareType'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      updatedBy: map['updatedBy'] as String,
      updatedDate: map['updatedDate'] as String,
      value: map['value'] as String,
    );
  }
}

