// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oos_secret_parameter_secret_parameter_args_doc}
/// The set of arguments for SecretParameter.
/// {@endtemplate}
/// {@macro pulumi_oos_secret_parameter_secret_parameter_args_doc}
class SecretParameterArgs {
  /// The constraints of the encryption parameter. By default, this parameter is null. Valid values:
  /// * `AllowedValues`: The value that is allowed for the encryption parameter. It must be an array string.
  /// * `AllowedPattern`: The pattern that is allowed for the encryption parameter. It must be a regular expression.
  /// * `MinLength`: The minimum length of the encryption parameter.
  /// * `MaxLength`: The maximum length of the encryption parameter.
  final pulumi.Input<String>? constraints;
  /// The description of the encryption parameter. The description must be `1` to `200` characters in length.
  final pulumi.Input<String>? description;
  /// The ID of the KMS instance.
  final pulumi.Input<String>? dkmsInstanceId;
  /// The Customer Master Key (CMK) of Key Management Service (KMS) that is used to encrypt the parameter.
  final pulumi.Input<String>? keyId;
  /// The ID of the Resource Group.
  final pulumi.Input<String>? resourceGroupId;
  /// The name of the encryption parameter.  The name must be `2` to `180` characters in length, and can contain letters, digits, hyphens (-), forward slashes (/) and underscores (_). It cannot start with `ALIYUN`, `ACS`, `ALIBABA`, `ALICLOUD`, or `OOS`.
  final pulumi.Input<String> secretParameterName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The data type of the encryption parameter. Valid values: `Secret`.
  final pulumi.Input<String>? type;
  /// The value of the encryption parameter. The value must be `1` to `4096` characters in length.
  final pulumi.Input<String> value;

  /// Creates a new [SecretParameterArgs].
  /// [constraints] The constraints of the encryption parameter. By default, this parameter is null. Valid values:
  /// [description] The description of the encryption parameter. The description must be `1` to `200` characters in length.
  /// [dkmsInstanceId] The ID of the KMS instance.
  /// [keyId] The Customer Master Key (CMK) of Key Management Service (KMS) that is used to encrypt the parameter.
  /// [resourceGroupId] The ID of the Resource Group.
  /// [secretParameterName] The name of the encryption parameter.  The name must be `2` to `180` characters in length, and can contain letters, digits, hyphens (-), forward slashes (/) and underscores (_). It cannot start with `ALIYUN`, `ACS`, `ALIBABA`, `ALICLOUD`, or `OOS`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] The data type of the encryption parameter. Valid values: `Secret`.
  /// [value] The value of the encryption parameter. The value must be `1` to `4096` characters in length.
  SecretParameterArgs({
    pulumi.Output<String>? constraints,
    pulumi.Output<String>? description,
    pulumi.Output<String>? dkmsInstanceId,
    pulumi.Output<String>? keyId,
    pulumi.Output<String>? resourceGroupId,
    required pulumi.Output<String> secretParameterName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
    required pulumi.Output<String> value,
  }) :
      constraints = pulumi.Input.asOptionalInput<String>(constraints),
      description = pulumi.Input.asOptionalInput<String>(description),
      dkmsInstanceId = pulumi.Input.asOptionalInput<String>(dkmsInstanceId),
      keyId = pulumi.Input.asOptionalInput<String>(keyId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      secretParameterName = pulumi.Input.asInput<String>(secretParameterName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      value = pulumi.Input.asInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraints': ?constraints,
      'description': ?description,
      'dkmsInstanceId': ?dkmsInstanceId,
      'keyId': ?keyId,
      'resourceGroupId': ?resourceGroupId,
      'secretParameterName': secretParameterName,
      'tags': ?tags,
      'type': ?type,
      'value': value,
    };
  }

  factory SecretParameterArgs.fromMap(Map<String, dynamic> map) {
    return SecretParameterArgs(
      constraints: map['constraints'] == null ? null : pulumi.Output.create<String>(map['constraints'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dkmsInstanceId: map['dkmsInstanceId'] == null ? null : pulumi.Output.create<String>(map['dkmsInstanceId'] as String),
      keyId: map['keyId'] == null ? null : pulumi.Output.create<String>(map['keyId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      secretParameterName: pulumi.Output.create<String>(map['secretParameterName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      value: pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

