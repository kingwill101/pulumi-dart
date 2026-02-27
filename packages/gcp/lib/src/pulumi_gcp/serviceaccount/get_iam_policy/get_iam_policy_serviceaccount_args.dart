// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIamPolicy.
class GetIamPolicyServiceaccountArgs {
  /// The fully-qualified name of the service account to apply policy to.
  final pulumi.Input<String> serviceAccountId;

  GetIamPolicyServiceaccountArgs({
    required this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceAccountId'] = serviceAccountId;
    return map;
  }

  factory GetIamPolicyServiceaccountArgs.fromMap(Map<String, dynamic> map) {
    return GetIamPolicyServiceaccountArgs(
      serviceAccountId: pulumi.Input.asInput<String>(map['serviceAccountId']),
    );
  }
}
