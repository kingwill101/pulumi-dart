// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AAD Profile specifies attributes for Azure Active Directory integration.
class AadProfileResponse {
  /// The list of AAD group object IDs that will have admin role of the cluster.
  final pulumi.Input<List<String>>? adminGroupObjectIDs;
  /// Whether to enable Azure RBAC for Kubernetes authorization.
  final pulumi.Input<bool>? enableAzureRBAC;
  /// The AAD tenant ID to use for authentication. If not specified, will use the tenant of the deployment subscription.
  final pulumi.Input<String>? tenantID;

  /// Creates a new [AadProfileResponse].
  /// [adminGroupObjectIDs] The list of AAD group object IDs that will have admin role of the cluster.
  /// [enableAzureRBAC] Whether to enable Azure RBAC for Kubernetes authorization.
  /// [tenantID] The AAD tenant ID to use for authentication. If not specified, will use the tenant of the deployment subscription.
  AadProfileResponse({
    this.adminGroupObjectIDs,
    this.enableAzureRBAC,
    this.tenantID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminGroupObjectIDs': ?adminGroupObjectIDs,
      'enableAzureRBAC': ?enableAzureRBAC,
      'tenantID': ?tenantID,
    };
  }

  factory AadProfileResponse.fromMap(Map<String, dynamic> map) {
    return AadProfileResponse(
      adminGroupObjectIDs: map['adminGroupObjectIDs'] == null ? null : ((map['adminGroupObjectIDs'] as List).cast<String>()).input(),
      enableAzureRBAC: map['enableAzureRBAC'] == null ? null : (map['enableAzureRBAC'] as bool).input(),
      tenantID: map['tenantID'] == null ? null : (map['tenantID'] as String).input(),
    );
  }
}

