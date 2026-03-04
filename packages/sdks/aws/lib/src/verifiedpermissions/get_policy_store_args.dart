// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_verifiedpermissions_get_policy_store_get_policy_store_args_doc}
/// Arguments for getPolicyStore.
/// {@endtemplate}
/// {@macro pulumi_verifiedpermissions_get_policy_store_get_policy_store_args_doc}
class GetPolicyStoreArgs {
  /// The ID of the Policy Store.
  final pulumi.Input<String> id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetPolicyStoreArgs].
  /// [id] The ID of the Policy Store.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetPolicyStoreArgs({required this.id, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'region': ?region};
  }

  factory GetPolicyStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyStoreArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
