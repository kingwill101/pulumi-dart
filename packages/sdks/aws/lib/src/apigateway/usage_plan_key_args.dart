// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_usage_plan_key_usage_plan_key_args_doc}
/// The set of arguments for UsagePlanKey.
/// {@endtemplate}
/// {@macro pulumi_apigateway_usage_plan_key_usage_plan_key_args_doc}
class UsagePlanKeyArgs {
  /// Identifier of the API key resource.
  final pulumi.Input<String> keyId;
  /// Type of the API key resource. Currently, the valid key type is API_KEY.
  final pulumi.Input<String> keyType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Id of the usage plan resource representing to associate the key to.
  final pulumi.Input<String> usagePlanId;

  /// Creates a new [UsagePlanKeyArgs].
  /// [keyId] Identifier of the API key resource.
  /// [keyType] Type of the API key resource. Currently, the valid key type is API_KEY.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [usagePlanId] Id of the usage plan resource representing to associate the key to.
  const UsagePlanKeyArgs({
    required this.keyId,
    required this.keyType,
    this.region,
    required this.usagePlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
      'keyType': keyType,
      'region': ?region,
      'usagePlanId': usagePlanId,
    };
  }

  factory UsagePlanKeyArgs.fromMap(Map<String, dynamic> map) {
    return UsagePlanKeyArgs(
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
      keyType: pulumi.Input.fromValue(map['keyType'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usagePlanId: pulumi.Input.fromValue(map['usagePlanId'] as String),
    );
  }
}
