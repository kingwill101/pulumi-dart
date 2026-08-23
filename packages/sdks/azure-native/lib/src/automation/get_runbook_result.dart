// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_link_response.dart';
import 'runbook_draft_response.dart';
import 'runbook_parameter_response.dart';
import 'system_data_response.dart';

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
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Gets or sets the job count of the runbook.
  final int? jobCount;
  /// Gets or sets the last modified by.
  final String? lastModifiedBy;
  /// Gets or sets the last modified time.
  final String? lastModifiedTime;
  /// The geo-location where the resource lives
  final String location;
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
  /// Gets or sets the published runbook content link.
  final ContentLinkResponse? publishContentLink;
  /// Gets or sets the type of the runbook.
  final String? runbookType;
  /// Runtime Environment of the runbook execution.
  final String? runtimeEnvironment;
  /// Gets or sets the state of the runbook.
  final String? state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetRunbookResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] Gets or sets the creation time.
  /// [description] Gets or sets the description.
  /// [draft] Gets or sets the draft runbook properties.
  /// [etag] Gets or sets the etag of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [jobCount] Gets or sets the job count of the runbook.
  /// [lastModifiedBy] Gets or sets the last modified by.
  /// [lastModifiedTime] Gets or sets the last modified time.
  /// [location] The geo-location where the resource lives
  /// [logActivityTrace] Gets or sets the option to log activity trace of the runbook.
  /// [logProgress] Gets or sets progress log option.
  /// [logVerbose] Gets or sets verbose log option.
  /// [name] The name of the resource
  /// [outputTypes] Gets or sets the runbook output types.
  /// [parameters] Gets or sets the runbook parameters.
  /// [provisioningState] Gets or sets the provisioning state of the runbook.
  /// [publishContentLink] Gets or sets the published runbook content link.
  /// [runbookType] Gets or sets the type of the runbook.
  /// [runtimeEnvironment] Runtime Environment of the runbook execution.
  /// [state] Gets or sets the state of the runbook.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetRunbookResult({
    required this.azureApiVersion,
    this.creationTime,
    this.description,
    this.draft,
    this.etag,
    required this.id,
    this.jobCount,
    this.lastModifiedBy,
    this.lastModifiedTime,
    required this.location,
    this.logActivityTrace,
    this.logProgress,
    this.logVerbose,
    required this.name,
    this.outputTypes,
    this.parameters,
    this.provisioningState,
    this.publishContentLink,
    this.runbookType,
    this.runtimeEnvironment,
    this.state,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationTime': ?creationTime,
      'description': ?description,
      'draft': ?draft?.toMap(),
      'etag': ?etag,
      'id': id,
      'jobCount': ?jobCount,
      'lastModifiedBy': ?lastModifiedBy,
      'lastModifiedTime': ?lastModifiedTime,
      'location': location,
      'logActivityTrace': ?logActivityTrace,
      'logProgress': ?logProgress,
      'logVerbose': ?logVerbose,
      'name': name,
      'outputTypes': ?outputTypes,
      'parameters': ?(() { final guardedValue = parameters; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<RunbookParameterResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'publishContentLink': ?publishContentLink?.toMap(),
      'runbookType': ?runbookType,
      'runtimeEnvironment': ?runtimeEnvironment,
      'state': ?state,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetRunbookResult.fromMap(Map<String, dynamic> map) {
    return GetRunbookResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      draft: (() { final guardedValue = map['draft']; if (guardedValue == null) return null; return RunbookDraftResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      jobCount: (() { final guardedValue = map['jobCount']; if (guardedValue == null) return null; return guardedValue as int; })(),
      lastModifiedBy: (() { final guardedValue = map['lastModifiedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      logActivityTrace: (() { final guardedValue = map['logActivityTrace']; if (guardedValue == null) return null; return guardedValue as int; })(),
      logProgress: (() { final guardedValue = map['logProgress']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      logVerbose: (() { final guardedValue = map['logVerbose']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: map['name'] as String,
      outputTypes: (() { final guardedValue = map['outputTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<RunbookParameterResponse>(guardedValue, (value) => RunbookParameterResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publishContentLink: (() { final guardedValue = map['publishContentLink']; if (guardedValue == null) return null; return ContentLinkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      runbookType: (() { final guardedValue = map['runbookType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runtimeEnvironment: (() { final guardedValue = map['runtimeEnvironment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
