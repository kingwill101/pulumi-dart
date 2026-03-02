// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecretParametersParameter {
  /// The constraints of the encryption parameter. **Note:** `constraints` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> constraints;
  /// The time when the encryption parameter was created.
  final pulumi.Input<String> createTime;
  /// The user who created the encryption parameter.
  final pulumi.Input<String> createdBy;
  /// The description of the encryption parameter.
  final pulumi.Input<String> description;
  /// The ID of the Secret Parameter.
  final pulumi.Input<String> id;
  /// The ID of the key of Key Management Service (KMS) that is used for encryption.
  final pulumi.Input<String> keyId;
  /// The version number of the encryption parameter.
  final pulumi.Input<int> parameterVersion;
  /// The ID of the Resource Group.
  final pulumi.Input<String> resourceGroupId;
  /// The ID of the encryption parameter.
  final pulumi.Input<String> secretParameterId;
  /// The name of the Secret Parameter.
  final pulumi.Input<String> secretParameterName;
  /// The share type of the encryption parameter.
  final pulumi.Input<String> shareType;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// The type of the parameter.
  final pulumi.Input<String> type;
  /// The user who updated the encryption parameter.
  final pulumi.Input<String> updatedBy;
  /// The time when the encryption parameter was updated.
  final pulumi.Input<String> updatedDate;
  /// (Available since v1.231.0) The value of the encryption parameter. **Note:** `value` takes effect only if `with_decryption` is set to `true`.
  final pulumi.Input<String> value;

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
      constraints: (map['constraints'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      createdBy: (map['createdBy'] as String).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      keyId: (map['keyId'] as String).input(),
      parameterVersion: (map['parameterVersion'] as int).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      secretParameterId: (map['secretParameterId'] as String).input(),
      secretParameterName: (map['secretParameterName'] as String).input(),
      shareType: (map['shareType'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
      updatedBy: (map['updatedBy'] as String).input(),
      updatedDate: (map['updatedDate'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

