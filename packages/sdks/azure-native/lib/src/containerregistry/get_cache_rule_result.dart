// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getCacheRule.
class GetCacheRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The creation date of the cache rule.
  final String creationDate;
  /// The ARM resource ID of the credential store which is associated with the cache rule.
  final String? credentialSetResourceId;
  /// The resource ID.
  final String id;
  /// The name of the resource.
  final String name;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Source repository pulled from upstream.
  final String? sourceRepository;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Target repository specified in docker pull command.
  /// Eg: docker pull myregistry.azurecr.io/{targetRepository}:{tag}
  final String? targetRepository;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetCacheRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationDate] The creation date of the cache rule.
  /// [credentialSetResourceId] The ARM resource ID of the credential store which is associated with the cache rule.
  /// [id] The resource ID.
  /// [name] The name of the resource.
  /// [provisioningState] Provisioning state of the resource.
  /// [sourceRepository] Source repository pulled from upstream.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [targetRepository] Target repository specified in docker pull command.
  /// [type] The type of the resource.
  GetCacheRuleResult({
    required this.azureApiVersion,
    required this.creationDate,
    this.credentialSetResourceId,
    required this.id,
    required this.name,
    required this.provisioningState,
    this.sourceRepository,
    required this.systemData,
    this.targetRepository,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationDate': creationDate,
      'credentialSetResourceId': ?credentialSetResourceId,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'sourceRepository': ?sourceRepository,
      'systemData': systemData.toMap(),
      'targetRepository': ?targetRepository,
      'type': type,
    };
  }

  factory GetCacheRuleResult.fromMap(Map<String, dynamic> map) {
    return GetCacheRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationDate: map['creationDate'] as String,
      credentialSetResourceId: map['credentialSetResourceId'] == null ? null : map['credentialSetResourceId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sourceRepository: map['sourceRepository'] == null ? null : map['sourceRepository'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      targetRepository: map['targetRepository'] == null ? null : map['targetRepository'] as String,
      type: map['type'] as String,
    );
  }
}

