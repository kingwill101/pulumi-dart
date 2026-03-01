// ignore_for_file: unused_element, unnecessary_cast


class GetRegistryEnterpriseInstancesInstance {
  /// The password that was used to log on to the registry.
  final String authorizationToken;
  /// ID of Container Registry Enterprise Edition instance.
  final String id;
  /// Name of Container Registry Enterprise Edition instance.
  final String name;
  /// The max number of namespaces that an instance can create.
  final String namespaceQuota;
  /// The number of namespaces already created.
  final String namespaceUsage;
  /// A list of domains for access on internet network.
  final List<String> publicEndpoints;
  /// Region of Container Registry Enterprise Edition instance.
  final String region;
  /// The max number of repos that an instance can create.
  final String repoQuota;
  /// The number of repos already created.
  final String repoUsage;
  /// Specification of Container Registry Enterprise Edition instance.
  final String specification;
  /// The username that was used to log on to the registry.
  final String tempUsername;
  /// A list of domains for access on vpc network.
  final List<String> vpcEndpoints;

  /// Creates a new [GetRegistryEnterpriseInstancesInstance].
  /// [authorizationToken] The password that was used to log on to the registry.
  /// [id] ID of Container Registry Enterprise Edition instance.
  /// [name] Name of Container Registry Enterprise Edition instance.
  /// [namespaceQuota] The max number of namespaces that an instance can create.
  /// [namespaceUsage] The number of namespaces already created.
  /// [publicEndpoints] A list of domains for access on internet network.
  /// [region] Region of Container Registry Enterprise Edition instance.
  /// [repoQuota] The max number of repos that an instance can create.
  /// [repoUsage] The number of repos already created.
  /// [specification] Specification of Container Registry Enterprise Edition instance.
  /// [tempUsername] The username that was used to log on to the registry.
  /// [vpcEndpoints] A list of domains for access on vpc network.
  GetRegistryEnterpriseInstancesInstance({
    required this.authorizationToken,
    required this.id,
    required this.name,
    required this.namespaceQuota,
    required this.namespaceUsage,
    required this.publicEndpoints,
    required this.region,
    required this.repoQuota,
    required this.repoUsage,
    required this.specification,
    required this.tempUsername,
    required this.vpcEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationToken': authorizationToken,
      'id': id,
      'name': name,
      'namespaceQuota': namespaceQuota,
      'namespaceUsage': namespaceUsage,
      'publicEndpoints': publicEndpoints,
      'region': region,
      'repoQuota': repoQuota,
      'repoUsage': repoUsage,
      'specification': specification,
      'tempUsername': tempUsername,
      'vpcEndpoints': vpcEndpoints,
    };
  }

  factory GetRegistryEnterpriseInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetRegistryEnterpriseInstancesInstance(
      authorizationToken: map['authorizationToken'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      namespaceQuota: map['namespaceQuota'] as String,
      namespaceUsage: map['namespaceUsage'] as String,
      publicEndpoints: (map['publicEndpoints'] as List).cast<String>(),
      region: map['region'] as String,
      repoQuota: map['repoQuota'] as String,
      repoUsage: map['repoUsage'] as String,
      specification: map['specification'] as String,
      tempUsername: map['tempUsername'] as String,
      vpcEndpoints: (map['vpcEndpoints'] as List).cast<String>(),
    );
  }
}

