// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssm_parameter_parameter_args_doc}
/// The set of arguments for Parameter.
/// {@endtemplate}
/// {@macro pulumi_ssm_parameter_parameter_args_doc}
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

  /// Creates a new [ParameterArgs].
  /// [allowedPattern] Regular expression used to validate the parameter value.
  /// [arn] ARN of the parameter.
  /// [dataType] Data type of the parameter. Valid values: `text`, `aws:ssm:integration` and `aws:ec2:image` for AMI format, see the [Native parameter support for Amazon Machine Image IDs](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-ec2-aliases.html).
  /// [description] Description of the parameter.
  /// [insecureValue] Value of the parameter. **Use caution:** This value is _never_ marked as sensitive in the pulumi preview output. This argument is not valid with a `type` of `SecureString`.
  /// [keyId] KMS key ID or ARN for encrypting a SecureString.
  /// [name] Name of the parameter. If the name contains a path (e.g., any forward slashes (`/`)), it must be fully qualified with a leading forward slash (`/`). For additional requirements and constraints, see the [AWS SSM User Guide](https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-parameter-name-constraints.html).
  /// [overwrite] Overwrite an existing parameter. If not specified, defaults to `false` during create operations to avoid overwriting existing resources and then `true` for all subsequent operations once the resource is managed by IAC. Lifecycle rules should be used to manage non-standard update behavior.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tier] Parameter tier to assign to the parameter. If not specified, will use the default parameter tier for the region. Valid tiers are `Standard`, `Advanced`, and `Intelligent-Tiering`. Downgrading an `Advanced` tier parameter to `Standard` will recreate the resource. For more information on parameter tiers, see the [AWS SSM Parameter tier comparison and guide](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html).
  /// [type] Type of the parameter. Valid types are `String`, `StringList` and `SecureString`.
  /// [value] Value of the parameter. This value is always marked as sensitive in the pulumi preview output, regardless of `type
  /// [valueWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [valueWoVersion] Used together with `value_wo` to trigger an update. Increment this value when an update to the `value_wo` is required.
  ParameterArgs({
    pulumi.Output<String>? allowedPattern,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? dataType,
    pulumi.Output<String>? description,
    pulumi.Output<String>? insecureValue,
    pulumi.Output<String>? keyId,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? overwrite,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tier,
    required pulumi.Output<String> type,
    pulumi.Output<String>? value,
    pulumi.Output<String>? valueWo,
    pulumi.Output<int>? valueWoVersion,
  }) :
      allowedPattern = pulumi.Input.asOptionalInput<String>(allowedPattern),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      dataType = pulumi.Input.asOptionalInput<String>(dataType),
      description = pulumi.Input.asOptionalInput<String>(description),
      insecureValue = pulumi.Input.asOptionalInput<String>(insecureValue),
      keyId = pulumi.Input.asOptionalInput<String>(keyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      overwrite = pulumi.Input.asOptionalInput<bool>(overwrite),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tier = pulumi.Input.asOptionalInput<String>(tier),
      type = pulumi.Input.asInput<String>(type),
      value = pulumi.Input.asOptionalInput<String>(value),
      valueWo = pulumi.Input.asOptionalInput<String>(valueWo),
      valueWoVersion = pulumi.Input.asOptionalInput<int>(valueWoVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPattern': ?allowedPattern,
      'arn': ?arn,
      'dataType': ?dataType,
      'description': ?description,
      'insecureValue': ?insecureValue,
      'keyId': ?keyId,
      'name': ?name,
      'overwrite': ?overwrite,
      'region': ?region,
      'tags': ?tags,
      'tier': ?tier,
      'type': type,
      'value': ?value,
      'valueWo': ?valueWo,
      'valueWoVersion': ?valueWoVersion,
    };
  }

  factory ParameterArgs.fromMap(Map<String, dynamic> map) {
    return ParameterArgs(
      allowedPattern: map['allowedPattern'] == null ? null : pulumi.Output.create<String>(map['allowedPattern'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      dataType: map['dataType'] == null ? null : pulumi.Output.create<String>(map['dataType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      insecureValue: map['insecureValue'] == null ? null : pulumi.Output.create<String>(map['insecureValue'] as String),
      keyId: map['keyId'] == null ? null : pulumi.Output.create<String>(map['keyId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      overwrite: map['overwrite'] == null ? null : pulumi.Output.create<bool>(map['overwrite'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tier: map['tier'] == null ? null : pulumi.Output.create<String>(map['tier'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
      valueWo: map['valueWo'] == null ? null : pulumi.Output.create<String>(map['valueWo'] as String),
      valueWoVersion: map['valueWoVersion'] == null ? null : pulumi.Output.create<int>(map['valueWoVersion'] as int),
    );
  }
}

