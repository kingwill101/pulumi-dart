// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getCacheRule.
class GetCacheRuleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The creation date of the cache rule.
  final String? creationDate;
  /// The ARM resource ID of the credential store which is associated with the cache rule.
  final String? credentialSetResourceId;
  /// The resource ID.
  final String? id;
  /// The name of the resource.
  final String? name;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Source repository pulled from upstream.
  final String? sourceRepository;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// Target repository specified in docker pull command.
  /// Eg: docker pull myregistry.azurecr.io/{targetRepository}:{tag}
  final String? targetRepository;
  /// The type of the resource.
  final String? type;

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
  const GetCacheRuleResult({
    this.azureApiVersion,
    this.creationDate,
    this.credentialSetResourceId,
    this.id,
    this.name,
    this.provisioningState,
    this.sourceRepository,
    this.systemData,
    this.targetRepository,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'creationDate': ?creationDate,
      'credentialSetResourceId': ?credentialSetResourceId,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'sourceRepository': ?sourceRepository,
      'systemData': ?systemData?.toMap(),
      'targetRepository': ?targetRepository,
      'type': ?type,
    };
  }

  factory GetCacheRuleResult.fromMap(Map<String, dynamic> map) {
    return GetCacheRuleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credentialSetResourceId: (() { final guardedValue = map['credentialSetResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceRepository: (() { final guardedValue = map['sourceRepository']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      targetRepository: (() { final guardedValue = map['targetRepository']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
