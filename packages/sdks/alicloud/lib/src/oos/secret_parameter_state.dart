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
  const SecretParameterState({
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
      constraints: (() { final guardedValue = map['constraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dkmsInstanceId: (() { final guardedValue = map['dkmsInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretParameterName: (() { final guardedValue = map['secretParameterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

