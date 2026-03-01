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
  UsagePlanKeyArgs({
    required pulumi.Output<String> keyId,
    required pulumi.Output<String> keyType,
    pulumi.Output<String>? region,
    required pulumi.Output<String> usagePlanId,
  }) :
      keyId = pulumi.Input.asInput<String>(keyId),
      keyType = pulumi.Input.asInput<String>(keyType),
      region = pulumi.Input.asOptionalInput<String>(region),
      usagePlanId = pulumi.Input.asInput<String>(usagePlanId);

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
      keyId: pulumi.Output.create<String>(map['keyId'] as String),
      keyType: pulumi.Output.create<String>(map['keyType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      usagePlanId: pulumi.Output.create<String>(map['usagePlanId'] as String),
    );
  }
}

