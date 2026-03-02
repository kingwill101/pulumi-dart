// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AAD Profile specifies attributes for Azure Active Directory integration.
class AADProfile {
  /// The list of AAD group object IDs that will have admin role of the cluster.
  final pulumi.Input<List<String>>? adminGroupObjectIDs;
  /// The client AAD application ID.
  final pulumi.Input<String>? clientAppID;
  /// Whether to enable Azure RBAC for Kubernetes authorization.
  final pulumi.Input<bool>? enableAzureRbac;
  /// Whether to enable managed AAD.
  final pulumi.Input<bool>? managed;
  /// The server AAD application ID.
  final pulumi.Input<String>? serverAppID;
  /// The server AAD application secret.
  final pulumi.Input<String>? serverAppSecret;
  /// The AAD tenant ID to use for authentication. If not specified, will use the tenant of the deployment subscription.
  final pulumi.Input<String>? tenantID;

  /// Creates a new [AADProfile].
  /// [adminGroupObjectIDs] The list of AAD group object IDs that will have admin role of the cluster.
  /// [clientAppID] The client AAD application ID.
  /// [enableAzureRbac] Whether to enable Azure RBAC for Kubernetes authorization.
  /// [managed] Whether to enable managed AAD.
  /// [serverAppID] The server AAD application ID.
  /// [serverAppSecret] The server AAD application secret.
  /// [tenantID] The AAD tenant ID to use for authentication. If not specified, will use the tenant of the deployment subscription.
  AADProfile({
    this.adminGroupObjectIDs,
    this.clientAppID,
    this.enableAzureRbac,
    this.managed,
    this.serverAppID,
    this.serverAppSecret,
    this.tenantID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminGroupObjectIDs': ?adminGroupObjectIDs,
      'clientAppID': ?clientAppID,
      'enableAzureRbac': ?enableAzureRbac,
      'managed': ?managed,
      'serverAppID': ?serverAppID,
      'serverAppSecret': ?serverAppSecret,
      'tenantID': ?tenantID,
    };
  }

  factory AADProfile.fromMap(Map<String, dynamic> map) {
    return AADProfile(
      adminGroupObjectIDs: map['adminGroupObjectIDs'] == null ? null : ((map['adminGroupObjectIDs'] as List).cast<String>()).input(),
      clientAppID: map['clientAppID'] == null ? null : (map['clientAppID'] as String).input(),
      enableAzureRbac: map['enableAzureRbac'] == null ? null : (map['enableAzureRbac'] as bool).input(),
      managed: map['managed'] == null ? null : (map['managed'] as bool).input(),
      serverAppID: map['serverAppID'] == null ? null : (map['serverAppID'] as String).input(),
      serverAppSecret: map['serverAppSecret'] == null ? null : (map['serverAppSecret'] as String).input(),
      tenantID: map['tenantID'] == null ? null : (map['tenantID'] as String).input(),
    );
  }
}

