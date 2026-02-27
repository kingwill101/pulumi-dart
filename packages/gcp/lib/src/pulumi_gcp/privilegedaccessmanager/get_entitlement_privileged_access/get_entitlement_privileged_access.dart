// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_entitlement_privileged_access_gcp_iam_access/get_entitlement_privileged_access_gcp_iam_access.dart';

class GetEntitlementPrivilegedAccess {
  /// GcpIamAccess represents IAM based access control on a GCP resource. Refer to https://cloud.google.com/iam/docs to understand more about IAM.
  final List<GetEntitlementPrivilegedAccessGcpIamAccess> gcpIamAccesses;

  GetEntitlementPrivilegedAccess({
    required this.gcpIamAccesses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcpIamAccesses'] = pulumi.Input.encodeList<
        GetEntitlementPrivilegedAccessGcpIamAccess,
        Map<String, dynamic>>(gcpIamAccesses, (value) => value.toMap());
    return map;
  }

  factory GetEntitlementPrivilegedAccess.fromMap(Map<String, dynamic> map) {
    return GetEntitlementPrivilegedAccess(
      gcpIamAccesses:
          pulumi.Input.decodeList<GetEntitlementPrivilegedAccessGcpIamAccess>(
              map['gcpIamAccesses'],
              (value) => GetEntitlementPrivilegedAccessGcpIamAccess.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
