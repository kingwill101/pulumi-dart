// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UsagePlanKey resources.
class UsagePlanKeyState {
  /// Identifier of the API key resource.
  final pulumi.Input<String>? keyId;
  /// Type of the API key resource. Currently, the valid key type is API_KEY.
  final pulumi.Input<String>? keyType;
  /// Name of a usage plan key.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Id of the usage plan resource representing to associate the key to.
  final pulumi.Input<String>? usagePlanId;
  /// Value of a usage plan key.
  final pulumi.Input<String>? value;

  /// Creates a new [UsagePlanKeyState].
  /// [keyId] Identifier of the API key resource.
  /// [keyType] Type of the API key resource. Currently, the valid key type is API_KEY.
  /// [name] Name of a usage plan key.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [usagePlanId] Id of the usage plan resource representing to associate the key to.
  /// [value] Value of a usage plan key.
  UsagePlanKeyState({
    pulumi.Output<String>? keyId,
    pulumi.Output<String>? keyType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? usagePlanId,
    pulumi.Output<String>? value,
  }) :
      keyId = pulumi.Input.asOptionalInput<String>(keyId),
      keyType = pulumi.Input.asOptionalInput<String>(keyType),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      usagePlanId = pulumi.Input.asOptionalInput<String>(usagePlanId),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': ?keyId,
      'keyType': ?keyType,
      'name': ?name,
      'region': ?region,
      'usagePlanId': ?usagePlanId,
      'value': ?value,
    };
  }

  factory UsagePlanKeyState.fromMap(Map<String, dynamic> map) {
    return UsagePlanKeyState(
      keyId: map['keyId'] == null ? null : pulumi.Output.create<String>(map['keyId'] as String),
      keyType: map['keyType'] == null ? null : pulumi.Output.create<String>(map['keyType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      usagePlanId: map['usagePlanId'] == null ? null : pulumi.Output.create<String>(map['usagePlanId'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

