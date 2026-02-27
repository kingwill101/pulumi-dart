// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAuthorizedOrgsDesc.
class GetAuthorizedOrgsDescArgs {
  final pulumi.Input<String> accessPolicyId;
  final pulumi.Input<String> authorizedOrgsDescId;

  GetAuthorizedOrgsDescArgs({
    required this.accessPolicyId,
    required this.authorizedOrgsDescId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPolicyId'] = accessPolicyId;
    map['authorizedOrgsDescId'] = authorizedOrgsDescId;
    return map;
  }

  factory GetAuthorizedOrgsDescArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizedOrgsDescArgs(
      accessPolicyId: pulumi.Input.asInput<String>(map['accessPolicyId']),
      authorizedOrgsDescId:
          pulumi.Input.asInput<String>(map['authorizedOrgsDescId']),
    );
  }
}
