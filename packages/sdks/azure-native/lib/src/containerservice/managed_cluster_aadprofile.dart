// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AADProfile specifies attributes for Azure Active Directory integration. For more details see [managed AAD on AKS](https://docs.microsoft.com/azure/aks/managed-aad).
class ManagedClusterAADProfile {
  /// The list of AAD group object IDs that will have admin role of the cluster.
  final pulumi.Input<List<String>?>? adminGroupObjectIDs;
  /// (DEPRECATED) The client AAD application ID. Learn more at https://aka.ms/aks/aad-legacy.
  final pulumi.Input<String?>? clientAppID;
  /// Whether to enable Azure RBAC for Kubernetes authorization.
  final pulumi.Input<bool?>? enableAzureRBAC;
  /// Whether to enable managed AAD.
  final pulumi.Input<bool?>? managed;
  /// (DEPRECATED) The server AAD application ID. Learn more at https://aka.ms/aks/aad-legacy.
  final pulumi.Input<String?>? serverAppID;
  /// (DEPRECATED) The server AAD application secret. Learn more at https://aka.ms/aks/aad-legacy.
  final pulumi.Input<String?>? serverAppSecret;
  /// The AAD tenant ID to use for authentication. If not specified, will use the tenant of the deployment subscription.
  final pulumi.Input<String?>? tenantID;

  /// Creates a new [ManagedClusterAADProfile].
  /// [adminGroupObjectIDs] The list of AAD group object IDs that will have admin role of the cluster.
  /// [clientAppID] (DEPRECATED) The client AAD application ID. Learn more at https://aka.ms/aks/aad-legacy.
  /// [enableAzureRBAC] Whether to enable Azure RBAC for Kubernetes authorization.
  /// [managed] Whether to enable managed AAD.
  /// [serverAppID] (DEPRECATED) The server AAD application ID. Learn more at https://aka.ms/aks/aad-legacy.
  /// [serverAppSecret] (DEPRECATED) The server AAD application secret. Learn more at https://aka.ms/aks/aad-legacy.
  /// [tenantID] The AAD tenant ID to use for authentication. If not specified, will use the tenant of the deployment subscription.
  const ManagedClusterAADProfile({
    this.adminGroupObjectIDs,
    this.clientAppID,
    this.enableAzureRBAC,
    this.managed,
    this.serverAppID,
    this.serverAppSecret,
    this.tenantID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminGroupObjectIDs': ?adminGroupObjectIDs,
      'clientAppID': ?clientAppID,
      'enableAzureRBAC': ?enableAzureRBAC,
      'managed': ?managed,
      'serverAppID': ?serverAppID,
      'serverAppSecret': ?serverAppSecret,
      'tenantID': ?tenantID,
    };
  }

  factory ManagedClusterAADProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAADProfile(
      adminGroupObjectIDs: (() { final guardedValue = map['adminGroupObjectIDs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clientAppID: (() { final guardedValue = map['clientAppID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableAzureRBAC: (() { final guardedValue = map['enableAzureRBAC']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      managed: (() { final guardedValue = map['managed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serverAppID: (() { final guardedValue = map['serverAppID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverAppSecret: (() { final guardedValue = map['serverAppSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantID: (() { final guardedValue = map['tenantID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
