// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_path_response.dart';
import 'resource_reference_response.dart';
import 'system_data_response.dart';

/// Result data returned by getWebAgent.
class GetWebAgentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Optional textual description of the agent.
  final String? description;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// List of paths associated with the web agent.
  final List<AgentPathResponse>? paths;
  /// References to agent links in CDN profiles.
  final List<ResourceReferenceResponse> profileAgentLinks;
  /// Provisioning status of the web agent.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// System prompt for the web agent.
  final String? systemPrompt;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWebAgentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Optional textual description of the agent.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [paths] List of paths associated with the web agent.
  /// [profileAgentLinks] References to agent links in CDN profiles.
  /// [provisioningState] Provisioning status of the web agent.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [systemPrompt] System prompt for the web agent.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetWebAgentResult({
    required this.azureApiVersion,
    this.description,
    required this.id,
    required this.location,
    required this.name,
    this.paths,
    required this.profileAgentLinks,
    required this.provisioningState,
    required this.systemData,
    this.systemPrompt,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'id': id,
      'location': location,
      'name': name,
      'paths': ?(() { final guardedValue = paths; if (guardedValue == null) return null; return pulumi.Input.encodeList<AgentPathResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'profileAgentLinks': pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(profileAgentLinks, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'systemPrompt': ?systemPrompt,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetWebAgentResult.fromMap(Map<String, dynamic> map) {
    return GetWebAgentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      paths: (() { final guardedValue = map['paths']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPathResponse>(guardedValue, (value) => AgentPathResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      profileAgentLinks: pulumi.Input.decodeList<ResourceReferenceResponse>(map['profileAgentLinks']!, (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      systemPrompt: (() { final guardedValue = map['systemPrompt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

