// ignore_for_file: unused_element, unnecessary_cast


class ClusterAzureActiveDirectory {
  /// The Azure Active Directory Client ID which should be used for the Client Application.
  final String clientApplicationId;
  /// The Azure Active Directory Cluster Application ID.
  final String clusterApplicationId;
  /// The Azure Active Directory Tenant ID.
  final String tenantId;

  /// Creates a new [ClusterAzureActiveDirectory].
  /// [clientApplicationId] The Azure Active Directory Client ID which should be used for the Client Application.
  /// [clusterApplicationId] The Azure Active Directory Cluster Application ID.
  /// [tenantId] The Azure Active Directory Tenant ID.
  ClusterAzureActiveDirectory({
    required this.clientApplicationId,
    required this.clusterApplicationId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientApplicationId': clientApplicationId,
      'clusterApplicationId': clusterApplicationId,
      'tenantId': tenantId,
    };
  }

  factory ClusterAzureActiveDirectory.fromMap(Map<String, dynamic> map) {
    return ClusterAzureActiveDirectory(
      clientApplicationId: map['clientApplicationId'] as String,
      clusterApplicationId: map['clusterApplicationId'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

