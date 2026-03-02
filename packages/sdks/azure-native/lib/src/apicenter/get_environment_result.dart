// ignore_for_file: unused_element, unnecessary_cast

import 'environment_server_response.dart';
import 'onboarding_response.dart';
import 'system_data_response.dart';

/// Result data returned by getEnvironment.
class GetEnvironmentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The custom metadata defined for API catalog entities.
  final dynamic customProperties;
  /// The environment description.
  final String? description;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Environment kind.
  final String kind;
  /// The name of the resource
  final String name;
  /// Environment onboarding information
  final OnboardingResponse? onboarding;
  /// Server information of the environment.
  final EnvironmentServerResponse? server;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Environment title.
  final String title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetEnvironmentResult({
    required this.azureApiVersion,
    this.customProperties,
    this.description,
    required this.id,
    required this.kind,
    required this.name,
    this.onboarding,
    this.server,
    required this.systemData,
    required this.title,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'customProperties': ?customProperties,
      'description': ?description,
      'id': id,
      'kind': kind,
      'name': name,
      'onboarding': ?onboarding == null ? null : onboarding!.toMap(),
      'server': ?server == null ? null : server!.toMap(),
      'systemData': systemData.toMap(),
      'title': title,
      'type': type,
    };
  }

  factory GetEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      customProperties: map['customProperties'] == null ? null : map['customProperties']!,
      description: map['description'] == null ? null : map['description']! as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      onboarding: map['onboarding'] == null ? null : OnboardingResponse.fromMap((map['onboarding']! as Map).cast<String, dynamic>()),
      server: map['server'] == null ? null : EnvironmentServerResponse.fromMap((map['server']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      title: map['title'] as String,
      type: map['type'] as String,
    );
  }
}

