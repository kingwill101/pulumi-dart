// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../workforce_pool_provider_key_key_data/workforce_pool_provider_key_key_data.dart';

/// The set of arguments for WorkforcePoolProviderKey.
class WorkforcePoolProviderKeyArgs {
  /// Immutable. Public half of the asymmetric key.
  /// Structure is documented below.
  final pulumi.Input<WorkforcePoolProviderKeyKeyData> keyData;

  /// The ID to use for the key, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  final pulumi.Input<String> keyId;

  /// The location for the resource.
  final pulumi.Input<String> location;

  /// The ID of the provider.
  final pulumi.Input<String> providerId;

  /// The purpose of the key.
  /// Possible values are: `ENCRYPTION`.
  final pulumi.Input<String> use;

  /// The ID of the workforce pool.
  final pulumi.Input<String> workforcePoolId;

  WorkforcePoolProviderKeyArgs({
    required this.keyData,
    required this.keyId,
    required this.location,
    required this.providerId,
    required this.use,
    required this.workforcePoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyData'] = pulumi.Input.mapInputValue<WorkforcePoolProviderKeyKeyData,
        Map<String, dynamic>>(keyData, (value) => value.toMap());
    map['keyId'] = keyId;
    map['location'] = location;
    map['providerId'] = providerId;
    map['use'] = use;
    map['workforcePoolId'] = workforcePoolId;
    return map;
  }

  factory WorkforcePoolProviderKeyArgs.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderKeyArgs(
      keyData:
          pulumi.Input.asInput<WorkforcePoolProviderKeyKeyData>(map['keyData']),
      keyId: pulumi.Input.asInput<String>(map['keyId']),
      location: pulumi.Input.asInput<String>(map['location']),
      providerId: pulumi.Input.asInput<String>(map['providerId']),
      use: pulumi.Input.asInput<String>(map['use']),
      workforcePoolId: pulumi.Input.asInput<String>(map['workforcePoolId']),
    );
  }
}
