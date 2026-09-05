// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Parameter resources.
class ParameterState {
  /// Regular expression used to validate the parameter value.
  final pulumi.Input<String?>? allowedPattern;
  /// ARN of the parameter.
  final pulumi.Input<String?>? arn;
  /// Data type of the parameter. Valid values: `text`, `aws:ssm:integration` and `aws:ec2:image` for AMI format, see the [Native parameter support for AMI IDs](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-ec2-aliases.html).
  final pulumi.Input<String?>? dataType;
  /// Description of the parameter.
  final pulumi.Input<String?>? description;
  /// Indicates whether the resource has a `valueWo` set.
  final pulumi.Input<bool?>? hasValueWo;
  /// Value of the parameter. **Use caution:** This value is _never_ marked as sensitive in the pulumi preview output. This argument is not valid with a `type` of `SecureString`.
  final pulumi.Input<String?>? insecureValue;
  /// KMS key ID or ARN for encrypting a SecureString.
  final pulumi.Input<String?>? keyId;
  /// Name of the parameter. If the name contains a path (e.g., any forward slashes (`/`)), it must be fully qualified with a leading forward slash (`/`). For additional requirements and constraints, see the [AWS SSM User Guide](https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-parameter-name-constraints.html).
  final pulumi.Input<String?>? name;
  /// Overwrite an existing parameter. If not specified, defaults to `false` during create operations to avoid overwriting existing resources and then `true` for all subsequent operations once the resource is managed by IAC. Lifecycle rules should be used to manage non-standard update behavior.
  final pulumi.Input<bool?>? overwrite;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the object. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Parameter tier to assign to the parameter. If not specified, will use the default parameter tier for the region. Valid tiers are `Standard`, `Advanced`, and `Intelligent-Tiering`. Downgrading an `Advanced` tier parameter to `Standard` will recreate the resource. For more information on parameter tiers, see the [AWS SSM Parameter tier comparison and guide](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html).
  final pulumi.Input<String?>? tier;
  /// Type of the parameter. Valid types are `String`, `StringList` and `SecureString`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<dynamic>? type;
  /// Value of the parameter. This value is always marked as sensitive in the pulumi preview output, regardless of `type
  final pulumi.Input<String?>? value;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Value of the parameter. This value is always marked as sensitive in the pulumi preview output, regardless of `type`. Additionally, `write-only` values are never stored to state. `valueWoVersion` can be used to trigger an update and is required with this argument.
  final pulumi.Input<String?>? valueWo;
  /// Used together with `valueWo` to trigger an update. Increment this value when an update to the `valueWo` is required.
  ///
  /// &gt; **NOTE:** `aws:ssm:integration` dataType parameters must be of the type `SecureString` and the name must start with the prefix `/d9d01087-4a3f-49e0-b0b4-d568d7826553/ssm/integrations/webhook/`. See [here](https://docs.aws.amazon.com/systems-manager/latest/userguide/creating-integrations.html) for information on the usage of `aws:ssm:integration` parameters.
  final pulumi.Input<int?>? valueWoVersion;
  /// Version of the parameter.
  final pulumi.Input<int?>? version;

  /// Creates a new [ParameterState].
  /// [allowedPattern] Regular expression used to validate the parameter value.
  /// [arn] ARN of the parameter.
  /// [dataType] Data type of the parameter. Valid values: `text`, `aws:ssm:integration` and `aws:ec2:image` for AMI format, see the [Native parameter support for AMI IDs](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-ec2-aliases.html).
  /// [description] Description of the parameter.
  /// [hasValueWo] Indicates whether the resource has a `valueWo` set.
  /// [insecureValue] Value of the parameter. **Use caution:** This value is _never_ marked as sensitive in the pulumi preview output. This argument is not valid with a `type` of `SecureString`.
  /// [keyId] KMS key ID or ARN for encrypting a SecureString.
  /// [name] Name of the parameter. If the name contains a path (e.g., any forward slashes (`/`)), it must be fully qualified with a leading forward slash (`/`). For additional requirements and constraints, see the [AWS SSM User Guide](https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-parameter-name-constraints.html).
  /// [overwrite] Overwrite an existing parameter. If not specified, defaults to `false` during create operations to avoid overwriting existing resources and then `true` for all subsequent operations once the resource is managed by IAC. Lifecycle rules should be used to manage non-standard update behavior.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the object. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [tier] Parameter tier to assign to the parameter. If not specified, will use the default parameter tier for the region. Valid tiers are `Standard`, `Advanced`, and `Intelligent-Tiering`. Downgrading an `Advanced` tier parameter to `Standard` will recreate the resource. For more information on parameter tiers, see the [AWS SSM Parameter tier comparison and guide](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html).
  /// [type] Type of the parameter. Valid types are `String`, `StringList` and `SecureString`.
  /// [value] Value of the parameter. This value is always marked as sensitive in the pulumi preview output, regardless of `type
  /// [valueWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [valueWoVersion] Used together with `valueWo` to trigger an update. Increment this value when an update to the `valueWo` is required.
  /// [version] Version of the parameter.
  const ParameterState({
    this.allowedPattern,
    this.arn,
    this.dataType,
    this.description,
    this.hasValueWo,
    this.insecureValue,
    this.keyId,
    this.name,
    this.overwrite,
    this.region,
    this.tags,
    this.tagsAll,
    this.tier,
    this.type,
    this.value,
    this.valueWo,
    this.valueWoVersion,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPattern': ?allowedPattern,
      'arn': ?arn,
      'dataType': ?dataType,
      'description': ?description,
      'hasValueWo': ?hasValueWo,
      'insecureValue': ?insecureValue,
      'keyId': ?keyId,
      'name': ?name,
      'overwrite': ?overwrite,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'tier': ?tier,
      'type': ?type,
      'value': ?value,
      'valueWo': ?valueWo,
      'valueWoVersion': ?valueWoVersion,
      'version': ?version,
    };
  }

  factory ParameterState.fromMap(Map<String, dynamic> map) {
    return ParameterState(
      allowedPattern: (() { final guardedValue = map['allowedPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hasValueWo: (() { final guardedValue = map['hasValueWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      insecureValue: (() { final guardedValue = map['insecureValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overwrite: (() { final guardedValue = map['overwrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueWo: (() { final guardedValue = map['valueWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueWoVersion: (() { final guardedValue = map['valueWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
