// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_get_access_policy_get_access_policy_args_doc}
/// Arguments for getAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_keyvault_get_access_policy_get_access_policy_args_doc}
class GetAccessPolicyArgs {
  /// Specifies the name of the Management Template. Possible values are: `Key Management`,
  /// `Secret Management`, `Certificate Management`, `Key & Secret Management`, `Key & Certificate Management`,
  /// `Secret & Certificate Management`,  `Key, Secret, & Certificate Management`
  final pulumi.Input<String> name;

  /// Creates a new [GetAccessPolicyArgs].
  /// [name] Specifies the name of the Management Template. Possible values are: `Key Management`,
  GetAccessPolicyArgs({
    required String name,
  }) :
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyArgs(
      name: map['name'] as String,
    );
  }
}

