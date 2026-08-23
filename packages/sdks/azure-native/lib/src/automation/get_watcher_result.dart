// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWatcher.
class GetWatcherResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the creation time.
  final String creationTime;
  /// Gets or sets the description.
  final String? description;
  /// Gets or sets the etag of the resource.
  final String? etag;
  /// Gets or sets the frequency at which the watcher is invoked.
  final double? executionFrequencyInSeconds;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Details of the user who last modified the watcher.
  final String lastModifiedBy;
  /// Gets or sets the last modified time.
  final String lastModifiedTime;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String name;
  /// Gets or sets the name of the script the watcher is attached to, i.e. the name of an existing runbook.
  final String? scriptName;
  /// Gets or sets the parameters of the script.
  final Map<String, String>? scriptParameters;
  /// Gets or sets the name of the hybrid worker group the watcher will run on.
  final String? scriptRunOn;
  /// Gets the current status of the watcher.
  final String status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWatcherResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] Gets or sets the creation time.
  /// [description] Gets or sets the description.
  /// [etag] Gets or sets the etag of the resource.
  /// [executionFrequencyInSeconds] Gets or sets the frequency at which the watcher is invoked.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastModifiedBy] Details of the user who last modified the watcher.
  /// [lastModifiedTime] Gets or sets the last modified time.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [scriptName] Gets or sets the name of the script the watcher is attached to, i.e. the name of an existing runbook.
  /// [scriptParameters] Gets or sets the parameters of the script.
  /// [scriptRunOn] Gets or sets the name of the hybrid worker group the watcher will run on.
  /// [status] Gets the current status of the watcher.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWatcherResult({
    required this.azureApiVersion,
    required this.creationTime,
    this.description,
    this.etag,
    this.executionFrequencyInSeconds,
    required this.id,
    required this.lastModifiedBy,
    required this.lastModifiedTime,
    this.location,
    required this.name,
    this.scriptName,
    this.scriptParameters,
    this.scriptRunOn,
    required this.status,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationTime': creationTime,
      'description': ?description,
      'etag': ?etag,
      'executionFrequencyInSeconds': ?executionFrequencyInSeconds,
      'id': id,
      'lastModifiedBy': lastModifiedBy,
      'lastModifiedTime': lastModifiedTime,
      'location': ?location,
      'name': name,
      'scriptName': ?scriptName,
      'scriptParameters': ?scriptParameters,
      'scriptRunOn': ?scriptRunOn,
      'status': status,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetWatcherResult.fromMap(Map<String, dynamic> map) {
    return GetWatcherResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: map['creationTime'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      executionFrequencyInSeconds: (() { final guardedValue = map['executionFrequencyInSeconds']; if (guardedValue == null) return null; return guardedValue as double; })(),
      id: map['id'] as String,
      lastModifiedBy: map['lastModifiedBy'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scriptParameters: (() { final guardedValue = map['scriptParameters']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      scriptRunOn: (() { final guardedValue = map['scriptRunOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
