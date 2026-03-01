// ignore_for_file: unused_element, unnecessary_cast


/// AADProfile specifies attributes for Azure Active Directory integration. For more details see [managed AAD on AKS](https://docs.microsoft.com/azure/aks/managed-aad).
class ManagedClusterAADProfileResponse {
  /// The list of AAD group object IDs that will have admin role of the cluster.
  final List<String>? adminGroupObjectIDs;
  /// (DEPRECATED) The client AAD application ID. Learn more at https://aka.ms/aks/aad-legacy.
  final String? clientAppID;
  /// Whether to enable Azure RBAC for Kubernetes authorization.
  final bool? enableAzureRBAC;
  /// Whether to enable managed AAD.
  final bool? managed;
  /// (DEPRECATED) The server AAD application ID. Learn more at https://aka.ms/aks/aad-legacy.
  final String? serverAppID;
  /// (DEPRECATED) The server AAD application secret. Learn more at https://aka.ms/aks/aad-legacy.
  final String? serverAppSecret;
  /// The AAD tenant ID to use for authentication. If not specified, will use the tenant of the deployment subscription.
  final String? tenantID;

  /// Creates a new [ManagedClusterAADProfileResponse].
  /// [adminGroupObjectIDs] The list of AAD group object IDs that will have admin role of the cluster.
  /// [clientAppID] (DEPRECATED) The client AAD application ID. Learn more at https://aka.ms/aks/aad-legacy.
  /// [enableAzureRBAC] Whether to enable Azure RBAC for Kubernetes authorization.
  /// [managed] Whether to enable managed AAD.
  /// [serverAppID] (DEPRECATED) The server AAD application ID. Learn more at https://aka.ms/aks/aad-legacy.
  /// [serverAppSecret] (DEPRECATED) The server AAD application secret. Learn more at https://aka.ms/aks/aad-legacy.
  /// [tenantID] The AAD tenant ID to use for authentication. If not specified, will use the tenant of the deployment subscription.
  ManagedClusterAADProfileResponse({
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

  factory ManagedClusterAADProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAADProfileResponse(
      adminGroupObjectIDs: map['adminGroupObjectIDs'] == null ? null : (map['adminGroupObjectIDs'] as List).cast<String>(),
      clientAppID: map['clientAppID'] == null ? null : map['clientAppID'] as String,
      enableAzureRBAC: map['enableAzureRBAC'] == null ? null : map['enableAzureRBAC'] as bool,
      managed: map['managed'] == null ? null : map['managed'] as bool,
      serverAppID: map['serverAppID'] == null ? null : map['serverAppID'] as String,
      serverAppSecret: map['serverAppSecret'] == null ? null : map['serverAppSecret'] as String,
      tenantID: map['tenantID'] == null ? null : map['tenantID'] as String,
    );
  }
}

