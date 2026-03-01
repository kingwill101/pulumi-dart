// ignore_for_file: unused_element, unnecessary_cast


class GetSecretParametersParameter {
  /// The constraints of the encryption parameter. **Note:** `constraints` takes effect only if `enable_details` is set to `true`.
  final String constraints;
  /// The time when the encryption parameter was created.
  final String createTime;
  /// The user who created the encryption parameter.
  final String createdBy;
  /// The description of the encryption parameter.
  final String description;
  /// The ID of the Secret Parameter.
  final String id;
  /// The ID of the key of Key Management Service (KMS) that is used for encryption.
  final String keyId;
  /// The version number of the encryption parameter.
  final int parameterVersion;
  /// The ID of the Resource Group.
  final String resourceGroupId;
  /// The ID of the encryption parameter.
  final String secretParameterId;
  /// The name of the Secret Parameter.
  final String secretParameterName;
  /// The share type of the encryption parameter.
  final String shareType;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// The type of the parameter.
  final String type;
  /// The user who updated the encryption parameter.
  final String updatedBy;
  /// The time when the encryption parameter was updated.
  final String updatedDate;
  /// (Available since v1.231.0) The value of the encryption parameter. **Note:** `value` takes effect only if `with_decryption` is set to `true`.
  final String value;

  /// Creates a new [GetSecretParametersParameter].
  /// [constraints] The constraints of the encryption parameter. **Note:** `constraints` takes effect only if `enable_details` is set to `true`.
  /// [createTime] The time when the encryption parameter was created.
  /// [createdBy] The user who created the encryption parameter.
  /// [description] The description of the encryption parameter.
  /// [id] The ID of the Secret Parameter.
  /// [keyId] The ID of the key of Key Management Service (KMS) that is used for encryption.
  /// [parameterVersion] The version number of the encryption parameter.
  /// [resourceGroupId] The ID of the Resource Group.
  /// [secretParameterId] The ID of the encryption parameter.
  /// [secretParameterName] The name of the Secret Parameter.
  /// [shareType] The share type of the encryption parameter.
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] The type of the parameter.
  /// [updatedBy] The user who updated the encryption parameter.
  /// [updatedDate] The time when the encryption parameter was updated.
  /// [value] (Available since v1.231.0) The value of the encryption parameter. **Note:** `value` takes effect only if `with_decryption` is set to `true`.
  GetSecretParametersParameter({
    required this.constraints,
    required this.createTime,
    required this.createdBy,
    required this.description,
    required this.id,
    required this.keyId,
    required this.parameterVersion,
    required this.resourceGroupId,
    required this.secretParameterId,
    required this.secretParameterName,
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
      'keyId': keyId,
      'parameterVersion': parameterVersion,
      'resourceGroupId': resourceGroupId,
      'secretParameterId': secretParameterId,
      'secretParameterName': secretParameterName,
      'shareType': shareType,
      'tags': tags,
      'type': type,
      'updatedBy': updatedBy,
      'updatedDate': updatedDate,
      'value': value,
    };
  }

  factory GetSecretParametersParameter.fromMap(Map<String, dynamic> map) {
    return GetSecretParametersParameter(
      constraints: map['constraints'] as String,
      createTime: map['createTime'] as String,
      createdBy: map['createdBy'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      keyId: map['keyId'] as String,
      parameterVersion: map['parameterVersion'] as int,
      resourceGroupId: map['resourceGroupId'] as String,
      secretParameterId: map['secretParameterId'] as String,
      secretParameterName: map['secretParameterName'] as String,
      shareType: map['shareType'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      updatedBy: map['updatedBy'] as String,
      updatedDate: map['updatedDate'] as String,
      value: map['value'] as String,
    );
  }
}

