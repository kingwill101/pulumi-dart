// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for UsagePlanKey.
class UsagePlanKeyArgs {
  /// Identifier of the API key resource.
  final pulumi.Input<String> keyId;

  /// Type of the API key resource. Currently, the valid key type is API_KEY.
  final pulumi.Input<String> keyType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Id of the usage plan resource representing to associate the key to.
  final pulumi.Input<String> usagePlanId;

  UsagePlanKeyArgs({
    required this.keyId,
    required this.keyType,
    this.region,
    required this.usagePlanId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyId'] = keyId;
    map['keyType'] = keyType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['usagePlanId'] = usagePlanId;
    return map;
  }

  factory UsagePlanKeyArgs.fromMap(Map<String, dynamic> map) {
    return UsagePlanKeyArgs(
      keyId: pulumi.Input.asInput<String>(map['keyId']),
      keyType: pulumi.Input.asInput<String>(map['keyType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      usagePlanId: pulumi.Input.asInput<String>(map['usagePlanId']),
    );
  }
}
