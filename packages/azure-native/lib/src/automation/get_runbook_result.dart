// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runbook_draft_response.dart';
import 'runbook_parameter_response.dart';

/// Result data returned by getRunbook.
class GetRunbookResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the creation time.
  final String? creationTime;
  /// Gets or sets the description.
  final String? description;
  /// Gets or sets the draft runbook properties.
  final RunbookDraftResponse? draft;
  /// Gets or sets the etag of the resource.
  final String? etag;
  /// Fully qualified resource Id for the resource
  final String id;
  /// Gets or sets the job count of the runbook.
  final int? jobCount;
  /// Gets or sets the last modified by.
  final String? lastModifiedBy;
  /// Gets or sets the last modified time.
  final String? lastModifiedTime;
  /// The Azure Region where the resource lives
  final String? location;
  /// Gets or sets the option to log activity trace of the runbook.
  final int? logActivityTrace;
  /// Gets or sets progress log option.
  final bool? logProgress;
  /// Gets or sets verbose log option.
  final bool? logVerbose;
  /// The name of the resource
  final String name;
  /// Gets or sets the runbook output types.
  final List<String>? outputTypes;
  /// Gets or sets the runbook parameters.
  final Map<String, RunbookParameterResponse>? parameters;
  /// Gets or sets the provisioning state of the runbook.
  final String? provisioningState;
  /// Gets or sets the type of the runbook.
  final String? runbookType;
  /// Gets or sets the state of the runbook.
  final String? state;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetRunbookResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] Gets or sets the creation time.
  /// [description] Gets or sets the description.
  /// [draft] Gets or sets the draft runbook properties.
  /// [etag] Gets or sets the etag of the resource.
  /// [id] Fully qualified resource Id for the resource
  /// [jobCount] Gets or sets the job count of the runbook.
  /// [lastModifiedBy] Gets or sets the last modified by.
  /// [lastModifiedTime] Gets or sets the last modified time.
  /// [location] The Azure Region where the resource lives
  /// [logActivityTrace] Gets or sets the option to log activity trace of the runbook.
  /// [logProgress] Gets or sets progress log option.
  /// [logVerbose] Gets or sets verbose log option.
  /// [name] The name of the resource
  /// [outputTypes] Gets or sets the runbook output types.
  /// [parameters] Gets or sets the runbook parameters.
  /// [provisioningState] Gets or sets the provisioning state of the runbook.
  /// [runbookType] Gets or sets the type of the runbook.
  /// [state] Gets or sets the state of the runbook.
  /// [tags] Resource tags.
  /// [type] The type of the resource.
  GetRunbookResult({
    required this.azureApiVersion,
    this.creationTime,
    this.description,
    this.draft,
    this.etag,
    required this.id,
    this.jobCount,
    this.lastModifiedBy,
    this.lastModifiedTime,
    this.location,
    this.logActivityTrace,
    this.logProgress,
    this.logVerbose,
    required this.name,
    this.outputTypes,
    this.parameters,
    this.provisioningState,
    this.runbookType,
    this.state,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationTime': ?creationTime,
      'description': ?description,
      'draft': ?draft == null ? null : draft!.toMap(),
      'etag': ?etag,
      'id': id,
      'jobCount': ?jobCount,
      'lastModifiedBy': ?lastModifiedBy,
      'lastModifiedTime': ?lastModifiedTime,
      'location': ?location,
      'logActivityTrace': ?logActivityTrace,
      'logProgress': ?logProgress,
      'logVerbose': ?logVerbose,
      'name': name,
      'outputTypes': ?outputTypes,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<RunbookParameterResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'runbookType': ?runbookType,
      'state': ?state,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetRunbookResult.fromMap(Map<String, dynamic> map) {
    return GetRunbookResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: map['creationTime'] == null ? null : map['creationTime'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      draft: map['draft'] == null ? null : RunbookDraftResponse.fromMap((map['draft'] as Map).cast<String, dynamic>()),
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] as String,
      jobCount: map['jobCount'] == null ? null : map['jobCount'] as int,
      lastModifiedBy: map['lastModifiedBy'] == null ? null : map['lastModifiedBy'] as String,
      lastModifiedTime: map['lastModifiedTime'] == null ? null : map['lastModifiedTime'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      logActivityTrace: map['logActivityTrace'] == null ? null : map['logActivityTrace'] as int,
      logProgress: map['logProgress'] == null ? null : map['logProgress'] as bool,
      logVerbose: map['logVerbose'] == null ? null : map['logVerbose'] as bool,
      name: map['name'] as String,
      outputTypes: map['outputTypes'] == null ? null : (map['outputTypes'] as List).cast<String>(),
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<RunbookParameterResponse>(map['parameters'], (value) => RunbookParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      runbookType: map['runbookType'] == null ? null : map['runbookType'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

