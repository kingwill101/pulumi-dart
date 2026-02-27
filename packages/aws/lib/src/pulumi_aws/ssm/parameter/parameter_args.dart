// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Parameter.
class ParameterArgs {
  /// Regular expression used to validate the parameter value.
  final pulumi.Input<String>? allowedPattern;

  /// ARN of the parameter.
  final pulumi.Input<String>? arn;

  /// Data type of the parameter. Valid values: `text`, `aws:ssm:integration` and `aws:ec2:image` for AMI format, see the [Native parameter support for Amazon Machine Image IDs](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-ec2-aliases.html).
  final pulumi.Input<String>? dataType;

  /// Description of the parameter.
  final pulumi.Input<String>? description;

  /// Value of the parameter. **Use caution:** This value is _never_ marked as sensitive in the pulumi preview output. This argument is not valid with a `type` of `SecureString`.
  final pulumi.Input<String>? insecureValue;

  /// KMS key ID or ARN for encrypting a SecureString.
  final pulumi.Input<String>? keyId;

  /// Name of the parameter. If the name contains a path (e.g., any forward slashes (`/`)), it must be fully qualified with a leading forward slash (`/`). For additional requirements and constraints, see the [AWS SSM User Guide](https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-parameter-name-constraints.html).
  final pulumi.Input<String>? name;

  /// Overwrite an existing parameter. If not specified, defaults to `false` during create operations to avoid overwriting existing resources and then `true` for all subsequent operations once the resource is managed by IAC. Lifecycle rules should be used to manage non-standard update behavior.
  final pulumi.Input<bool>? overwrite;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Parameter tier to assign to the parameter. If not specified, will use the default parameter tier for the region. Valid tiers are `Standard`, `Advanced`, and `Intelligent-Tiering`. Downgrading an `Advanced` tier parameter to `Standard` will recreate the resource. For more information on parameter tiers, see the [AWS SSM Parameter tier comparison and guide](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html).
  final pulumi.Input<String>? tier;

  /// Type of the parameter. Valid types are `String`, `StringList` and `SecureString`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

  /// Value of the parameter. This value is always marked as sensitive in the pulumi preview output, regardless of `type
  final pulumi.Input<String>? value;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Value of the parameter. This value is always marked as sensitive in the pulumi preview output, regardless of `type`. Additionally, `write-only` values are never stored to state. `value_wo_version` can be used to trigger an update and is required with this argument.
  final pulumi.Input<String>? valueWo;

  /// Used together with `value_wo` to trigger an update. Increment this value when an update to the `value_wo` is required.
  ///
  /// > **NOTE:** `aws:ssm:integration` data_type parameters must be of the type `SecureString` and the name must start with the prefix `/d9d01087-4a3f-49e0-b0b4-d568d7826553/ssm/integrations/webhook/`. See [here](https://docs.aws.amazon.com/systems-manager/latest/userguide/creating-integrations.html) for information on the usage of `aws:ssm:integration` parameters.
  final pulumi.Input<int>? valueWoVersion;

  ParameterArgs({
    this.allowedPattern,
    this.arn,
    this.dataType,
    this.description,
    this.insecureValue,
    this.keyId,
    this.name,
    this.overwrite,
    this.region,
    this.tags,
    this.tier,
    required this.type,
    this.value,
    this.valueWo,
    this.valueWoVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedPatternValue = allowedPattern;
    if (allowedPatternValue != null) {
      map['allowedPattern'] = allowedPatternValue;
    }
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final dataTypeValue = dataType;
    if (dataTypeValue != null) {
      map['dataType'] = dataTypeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final insecureValueValue = insecureValue;
    if (insecureValueValue != null) {
      map['insecureValue'] = insecureValueValue;
    }
    final keyIdValue = keyId;
    if (keyIdValue != null) {
      map['keyId'] = keyIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final overwriteValue = overwrite;
    if (overwriteValue != null) {
      map['overwrite'] = overwriteValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final tierValue = tier;
    if (tierValue != null) {
      map['tier'] = tierValue;
    }
    map['type'] = type;
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    final valueWoValue = valueWo;
    if (valueWoValue != null) {
      map['valueWo'] = valueWoValue;
    }
    final valueWoVersionValue = valueWoVersion;
    if (valueWoVersionValue != null) {
      map['valueWoVersion'] = valueWoVersionValue;
    }
    return map;
  }

  factory ParameterArgs.fromMap(Map<String, dynamic> map) {
    return ParameterArgs(
      allowedPattern:
          pulumi.Input.asOptionalInput<String>(map['allowedPattern']),
      arn: pulumi.Input.asOptionalInput<String>(map['arn']),
      dataType: pulumi.Input.asOptionalInput<String>(map['dataType']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      insecureValue: pulumi.Input.asOptionalInput<String>(map['insecureValue']),
      keyId: pulumi.Input.asOptionalInput<String>(map['keyId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      overwrite: pulumi.Input.asOptionalInput<bool>(map['overwrite']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      tier: pulumi.Input.asOptionalInput<String>(map['tier']),
      type: pulumi.Input.asInput<String>(map['type']),
      value: pulumi.Input.asOptionalInput<String>(map['value']),
      valueWo: pulumi.Input.asOptionalInput<String>(map['valueWo']),
      valueWoVersion: pulumi.Input.asOptionalInput<int>(map['valueWoVersion']),
    );
  }
}
