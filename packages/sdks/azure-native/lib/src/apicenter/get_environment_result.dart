// ignore_for_file: unused_element, unnecessary_cast

import 'environment_server_response.dart';
import 'onboarding_response.dart';
import 'system_data_response.dart';

/// Result data returned by getEnvironment.
class GetEnvironmentResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The custom metadata defined for API catalog entities.
  final dynamic customProperties;
  /// The environment description.
  final String? description;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Environment kind.
  final String? kind;
  /// The name of the resource
  final String? name;
  /// Environment onboarding information
  final OnboardingResponse? onboarding;
  /// Server information of the environment.
  final EnvironmentServerResponse? server;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Environment title.
  final String? title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetEnvironmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customProperties] The custom metadata defined for API catalog entities.
  /// [description] The environment description.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Environment kind.
  /// [name] The name of the resource
  /// [onboarding] Environment onboarding information
  /// [server] Server information of the environment.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [title] Environment title.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetEnvironmentResult({
    this.azureApiVersion,
    this.customProperties,
    this.description,
    this.id,
    this.kind,
    this.name,
    this.onboarding,
    this.server,
    this.systemData,
    this.title,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'customProperties': ?customProperties,
      'description': ?description,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'onboarding': ?onboarding?.toMap(),
      'server': ?server?.toMap(),
      'systemData': ?systemData?.toMap(),
      'title': ?title,
      'type': ?type,
    };
  }

  factory GetEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customProperties: (() { final guardedValue = map['customProperties']; if (guardedValue == null) return null; return guardedValue; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      onboarding: (() { final guardedValue = map['onboarding']; if (guardedValue == null) return null; return OnboardingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      server: (() { final guardedValue = map['server']; if (guardedValue == null) return null; return EnvironmentServerResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
