// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getRuntimeEnvironment.
class GetRuntimeEnvironmentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// List of Default packages for Environment
  final Map<String, String>? defaultPackages;
  /// Gets or sets the description.
  final String? description;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Language of Runtime Environment
  final String? language;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Version of Language
  final String? version;

  /// Creates a new [GetRuntimeEnvironmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [defaultPackages] List of Default packages for Environment
  /// [description] Gets or sets the description.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [language] Language of Runtime Environment
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Version of Language
  const GetRuntimeEnvironmentResult({
    required this.azureApiVersion,
    this.defaultPackages,
    this.description,
    required this.id,
    this.language,
    required this.location,
    required this.name,
    required this.systemData,
    this.tags,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'defaultPackages': ?defaultPackages,
      'description': ?description,
      'id': id,
      'language': ?language,
      'location': location,
      'name': name,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'version': ?version,
    };
  }

  factory GetRuntimeEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetRuntimeEnvironmentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      defaultPackages: (() { final guardedValue = map['defaultPackages']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      language: (() { final guardedValue = map['language']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
