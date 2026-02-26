// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../crypto_key_iambinding_condition/crypto_key_iambinding_condition.dart';

/// The set of arguments for CryptoKeyIAMBinding.
class CryptoKeyIAMBindingArgs {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final Input<CryptoKeyIAMBindingCondition>? condition;

  /// The crypto key ID, in the form
  /// `{project_id}/{location_name}/{key_ring_name}/{crypto_key_name}` or
  /// `{location_name}/{key_ring_name}/{crypto_key_name}`. In the second form,
  /// the provider's project setting will be used as a fallback.
  final Input<String> cryptoKeyId;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, jane@example.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final Input<List<String>> members;

  /// The role that should be applied. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final Input<String> role;

  CryptoKeyIAMBindingArgs({
    this.condition,
    required this.cryptoKeyId,
    required this.members,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<
          CryptoKeyIAMBindingCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['cryptoKeyId'] = cryptoKeyId;
    map['members'] = members;
    map['role'] = role;
    return map;
  }

  factory CryptoKeyIAMBindingArgs.fromMap(Map<String, dynamic> map) {
    return CryptoKeyIAMBindingArgs(
      condition:
          Input.asOptionalInput<CryptoKeyIAMBindingCondition>(map['condition']),
      cryptoKeyId: Input.asInput<String>(map['cryptoKeyId']),
      members: Input.asInput<List<String>>(map['members']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
