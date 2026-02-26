// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFolderPolicy.
class GetFolderPolicyArgs {
  final Input<String> folderId;
  final Input<String> policyId;

  GetFolderPolicyArgs({
    required this.folderId,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folderId'] = folderId;
    map['policyId'] = policyId;
    return map;
  }

  factory GetFolderPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderPolicyArgs(
      folderId: Input.asInput<String>(map['folderId']),
      policyId: Input.asInput<String>(map['policyId']),
    );
  }
}
