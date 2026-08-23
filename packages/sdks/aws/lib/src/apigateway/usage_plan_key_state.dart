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
  const UsagePlanKeyState({
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
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyType: (() { final guardedValue = map['keyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usagePlanId: (() { final guardedValue = map['usagePlanId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
