// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_source_response.dart';
import 'dsc_configuration_parameter_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDscConfiguration.
class GetDscConfigurationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets or sets the creation time.
  final String? creationTime;
  /// Gets or sets the description.
  final String? description;
  /// Gets or sets the etag of the resource.
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Gets or sets the job count of the configuration.
  final int? jobCount;
  /// Gets or sets the last modified time.
  final String? lastModifiedTime;
  /// The geo-location where the resource lives
  final String? location;
  /// Gets or sets verbose log option.
  final bool? logVerbose;
  /// The name of the resource
  final String? name;
  /// Gets the number of compiled node configurations.
  final int? nodeConfigurationCount;
  /// Gets or sets the configuration parameters.
  final Map<String, DscConfigurationParameterResponse>? parameters;
  /// Gets or sets the provisioning state of the configuration.
  final String? provisioningState;
  /// Gets or sets the source.
  final ContentSourceResponse? source;
  /// Gets or sets the state of the configuration.
  final String? state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetDscConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] Gets or sets the creation time.
  /// [description] Gets or sets the description.
  /// [etag] Gets or sets the etag of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [jobCount] Gets or sets the job count of the configuration.
  /// [lastModifiedTime] Gets or sets the last modified time.
  /// [location] The geo-location where the resource lives
  /// [logVerbose] Gets or sets verbose log option.
  /// [name] The name of the resource
  /// [nodeConfigurationCount] Gets the number of compiled node configurations.
  /// [parameters] Gets or sets the configuration parameters.
  /// [provisioningState] Gets or sets the provisioning state of the configuration.
  /// [source] Gets or sets the source.
  /// [state] Gets or sets the state of the configuration.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetDscConfigurationResult({
    this.azureApiVersion,
    this.creationTime,
    this.description,
    this.etag,
    this.id,
    this.jobCount,
    this.lastModifiedTime,
    this.location,
    this.logVerbose,
    this.name,
    this.nodeConfigurationCount,
    this.parameters,
    this.provisioningState,
    this.source,
    this.state,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'creationTime': ?creationTime,
      'description': ?description,
      'etag': ?etag,
      'id': ?id,
      'jobCount': ?jobCount,
      'lastModifiedTime': ?lastModifiedTime,
      'location': ?location,
      'logVerbose': ?logVerbose,
      'name': ?name,
      'nodeConfigurationCount': ?nodeConfigurationCount,
      'parameters': ?(() { final guardedValue = parameters; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<DscConfigurationParameterResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'source': ?source?.toMap(),
      'state': ?state,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetDscConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetDscConfigurationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jobCount: (() { final guardedValue = map['jobCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logVerbose: (() { final guardedValue = map['logVerbose']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeConfigurationCount: (() { final guardedValue = map['nodeConfigurationCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<DscConfigurationParameterResponse>(guardedValue, (value) => DscConfigurationParameterResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return ContentSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
