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
    this.keyId,
    this.keyType,
    this.name,
    this.region,
    this.usagePlanId,
    this.value,
  });

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
      keyId: map['keyId'] == null ? null : ((map['keyId'] as String).input()).input(),
      keyType: map['keyType'] == null ? null : ((map['keyType'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      usagePlanId: map['usagePlanId'] == null ? null : ((map['usagePlanId'] as String).input()).input(),
      value: map['value'] == null ? null : ((map['value'] as String).input()).input(),
    );
  }
}

