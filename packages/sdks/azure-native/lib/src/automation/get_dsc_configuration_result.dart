// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_source_response.dart';
import 'dsc_configuration_parameter_response.dart';

/// Result data returned by getDscConfiguration.
class GetDscConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the creation time.
  final String? creationTime;
  /// Gets or sets the description.
  final String? description;
  /// Gets or sets the etag of the resource.
  final String? etag;
  /// Fully qualified resource Id for the resource
  final String id;
  /// Gets or sets the job count of the configuration.
  final int? jobCount;
  /// Gets or sets the last modified time.
  final String? lastModifiedTime;
  /// The Azure Region where the resource lives
  final String? location;
  /// Gets or sets verbose log option.
  final bool? logVerbose;
  /// The name of the resource
  final String name;
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
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetDscConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] Gets or sets the creation time.
  /// [description] Gets or sets the description.
  /// [etag] Gets or sets the etag of the resource.
  /// [id] Fully qualified resource Id for the resource
  /// [jobCount] Gets or sets the job count of the configuration.
  /// [lastModifiedTime] Gets or sets the last modified time.
  /// [location] The Azure Region where the resource lives
  /// [logVerbose] Gets or sets verbose log option.
  /// [name] The name of the resource
  /// [nodeConfigurationCount] Gets the number of compiled node configurations.
  /// [parameters] Gets or sets the configuration parameters.
  /// [provisioningState] Gets or sets the provisioning state of the configuration.
  /// [source] Gets or sets the source.
  /// [state] Gets or sets the state of the configuration.
  /// [tags] Resource tags.
  /// [type] The type of the resource.
  const GetDscConfigurationResult({
    required this.azureApiVersion,
    this.creationTime,
    this.description,
    this.etag,
    required this.id,
    this.jobCount,
    this.lastModifiedTime,
    this.location,
    this.logVerbose,
    required this.name,
    this.nodeConfigurationCount,
    this.parameters,
    this.provisioningState,
    this.source,
    this.state,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationTime': ?creationTime,
      'description': ?description,
      'etag': ?etag,
      'id': id,
      'jobCount': ?jobCount,
      'lastModifiedTime': ?lastModifiedTime,
      'location': ?location,
      'logVerbose': ?logVerbose,
      'name': name,
      'nodeConfigurationCount': ?nodeConfigurationCount,
      'parameters': ?(() { final guardedValue = parameters; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<DscConfigurationParameterResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'source': ?source?.toMap(),
      'state': ?state,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDscConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetDscConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      jobCount: (() { final guardedValue = map['jobCount']; if (guardedValue == null) return null; return guardedValue as int; })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logVerbose: (() { final guardedValue = map['logVerbose']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: map['name'] as String,
      nodeConfigurationCount: (() { final guardedValue = map['nodeConfigurationCount']; if (guardedValue == null) return null; return guardedValue as int; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<DscConfigurationParameterResponse>(guardedValue, (value) => DscConfigurationParameterResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return ContentSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

