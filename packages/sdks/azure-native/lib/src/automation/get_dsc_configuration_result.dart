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
  GetDscConfigurationResult({
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
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<DscConfigurationParameterResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'source': ?source == null ? null : source!.toMap(),
      'state': ?state,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDscConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetDscConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: map['creationTime'] == null ? null : map['creationTime']! as String,
      description: map['description'] == null ? null : map['description']! as String,
      etag: map['etag'] == null ? null : map['etag']! as String,
      id: map['id'] as String,
      jobCount: map['jobCount'] == null ? null : map['jobCount']! as int,
      lastModifiedTime: map['lastModifiedTime'] == null ? null : map['lastModifiedTime']! as String,
      location: map['location'] == null ? null : map['location']! as String,
      logVerbose: map['logVerbose'] == null ? null : map['logVerbose']! as bool,
      name: map['name'] as String,
      nodeConfigurationCount: map['nodeConfigurationCount'] == null ? null : map['nodeConfigurationCount']! as int,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<DscConfigurationParameterResponse>(map['parameters']!, (value) => DscConfigurationParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState']! as String,
      source: map['source'] == null ? null : ContentSourceResponse.fromMap((map['source']! as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

