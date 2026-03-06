// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegistryEnterpriseInstancesInstance {
  /// The password that was used to log on to the registry.
  final pulumi.Input<String> authorizationToken;
  /// ID of Container Registry Enterprise Edition instance.
  final pulumi.Input<String> id;
  /// Name of Container Registry Enterprise Edition instance.
  final pulumi.Input<String> name;
  /// The max number of namespaces that an instance can create.
  final pulumi.Input<String> namespaceQuota;
  /// The number of namespaces already created.
  final pulumi.Input<String> namespaceUsage;
  /// A list of domains for access on internet network.
  final pulumi.Input<List<String>> publicEndpoints;
  /// Region of Container Registry Enterprise Edition instance.
  final pulumi.Input<String> region;
  /// The max number of repos that an instance can create.
  final pulumi.Input<String> repoQuota;
  /// The number of repos already created.
  final pulumi.Input<String> repoUsage;
  /// Specification of Container Registry Enterprise Edition instance.
  final pulumi.Input<String> specification;
  /// The username that was used to log on to the registry.
  final pulumi.Input<String> tempUsername;
  /// A list of domains for access on vpc network.
  final pulumi.Input<List<String>> vpcEndpoints;

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
  const GetRegistryEnterpriseInstancesInstance({
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
      authorizationToken: pulumi.Input.fromValue(map['authorizationToken'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespaceQuota: pulumi.Input.fromValue(map['namespaceQuota'] as String),
      namespaceUsage: pulumi.Input.fromValue(map['namespaceUsage'] as String),
      publicEndpoints: pulumi.Input.fromValue((map['publicEndpoints'] as List).cast<String>()),
      region: pulumi.Input.fromValue(map['region'] as String),
      repoQuota: pulumi.Input.fromValue(map['repoQuota'] as String),
      repoUsage: pulumi.Input.fromValue(map['repoUsage'] as String),
      specification: pulumi.Input.fromValue(map['specification'] as String),
      tempUsername: pulumi.Input.fromValue(map['tempUsername'] as String),
      vpcEndpoints: pulumi.Input.fromValue((map['vpcEndpoints'] as List).cast<String>()),
    );
  }
}

