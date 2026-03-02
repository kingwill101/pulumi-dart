// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecretParameter resources.
class SecretParameterState {
  /// The constraints of the encryption parameter. By default, this parameter is null. Valid values:
  /// * `AllowedValues`: The value that is allowed for the encryption parameter. It must be an array string.
  /// * `AllowedPattern`: The pattern that is allowed for the encryption parameter. It must be a regular expression.
  /// * `MinLength`: The minimum length of the encryption parameter.
  /// * `MaxLength`: The maximum length of the encryption parameter.
  final pulumi.Input<String>? constraints;
  /// Parameter creation time
  final pulumi.Input<String>? createTime;
  /// The description of the encryption parameter. The description must be `1` to `200` characters in length.
  final pulumi.Input<String>? description;
  /// The ID of the KMS instance.
  final pulumi.Input<String>? dkmsInstanceId;
  /// The Customer Master Key (CMK) of Key Management Service (KMS) that is used to encrypt the parameter.
  final pulumi.Input<String>? keyId;
  /// The ID of the Resource Group.
  final pulumi.Input<String>? resourceGroupId;
  /// The name of the encryption parameter.  The name must be `2` to `180` characters in length, and can contain letters, digits, hyphens (-), forward slashes (/) and underscores (_). It cannot start with `ALIYUN`, `ACS`, `ALIBABA`, `ALICLOUD`, or `OOS`.
  final pulumi.Input<String>? secretParameterName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The data type of the encryption parameter. Valid values: `Secret`.
  final pulumi.Input<String>? type;
  /// The value of the encryption parameter. The value must be `1` to `4096` characters in length.
  final pulumi.Input<String>? value;

  /// Creates a new [SecretParameterState].
  /// [constraints] The constraints of the encryption parameter. By default, this parameter is null. Valid values:
  /// [createTime] Parameter creation time
  /// [description] The description of the encryption parameter. The description must be `1` to `200` characters in length.
  /// [dkmsInstanceId] The ID of the KMS instance.
  /// [keyId] The Customer Master Key (CMK) of Key Management Service (KMS) that is used to encrypt the parameter.
  /// [resourceGroupId] The ID of the Resource Group.
  /// [secretParameterName] The name of the encryption parameter.  The name must be `2` to `180` characters in length, and can contain letters, digits, hyphens (-), forward slashes (/) and underscores (_). It cannot start with `ALIYUN`, `ACS`, `ALIBABA`, `ALICLOUD`, or `OOS`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] The data type of the encryption parameter. Valid values: `Secret`.
  /// [value] The value of the encryption parameter. The value must be `1` to `4096` characters in length.
  SecretParameterState({
    this.constraints,
    this.createTime,
    this.description,
    this.dkmsInstanceId,
    this.keyId,
    this.resourceGroupId,
    this.secretParameterName,
    this.tags,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraints': ?constraints,
      'createTime': ?createTime,
      'description': ?description,
      'dkmsInstanceId': ?dkmsInstanceId,
      'keyId': ?keyId,
      'resourceGroupId': ?resourceGroupId,
      'secretParameterName': ?secretParameterName,
      'tags': ?tags,
      'type': ?type,
      'value': ?value,
    };
  }

  factory SecretParameterState.fromMap(Map<String, dynamic> map) {
    return SecretParameterState(
      constraints: map['constraints'] == null ? null : (map['constraints']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      dkmsInstanceId: map['dkmsInstanceId'] == null ? null : (map['dkmsInstanceId']! as String).input(),
      keyId: map['keyId'] == null ? null : (map['keyId']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      secretParameterName: map['secretParameterName'] == null ? null : (map['secretParameterName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

