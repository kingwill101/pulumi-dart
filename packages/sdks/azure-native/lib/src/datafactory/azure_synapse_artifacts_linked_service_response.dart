// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Azure Synapse Analytics (Artifacts) linked service.
class AzureSynapseArtifactsLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// Required to specify MSI, if using system assigned managed identity as authentication method. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? authentication;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// https://&lt;workspacename&gt;.dev.azuresynapse.net, Azure Synapse Analytics workspace URL. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> endpoint;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// Type of linked service.
  /// Expected value is 'AzureSynapseArtifacts'.
  final pulumi.Input<String> type;
  /// Version of the linked service.
  final pulumi.Input<String>? version;
  /// The resource ID of the Synapse workspace. The format should be: /subscriptions/{subscriptionID}/resourceGroups/{resourceGroup}/providers/Microsoft.Synapse/workspaces/{workspaceName}. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? workspaceResourceId;

  /// Creates a new [AzureSynapseArtifactsLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authentication] Required to specify MSI, if using system assigned managed identity as authentication method. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [endpoint] https://&lt;workspacename&gt;.dev.azuresynapse.net, Azure Synapse Analytics workspace URL. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  /// [workspaceResourceId] The resource ID of the Synapse workspace. The format should be: /subscriptions/{subscriptionID}/resourceGroups/{resourceGroup}/providers/Microsoft.Synapse/workspaces/{workspaceName}. Type: string (or Expression with resultType string).
  const AzureSynapseArtifactsLinkedServiceResponse({
    this.annotations,
    this.authentication,
    this.connectVia,
    this.description,
    required this.endpoint,
    this.parameters,
    required this.type,
    this.version,
    this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authentication': ?authentication,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'endpoint': endpoint,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'version': ?version,
      'workspaceResourceId': ?workspaceResourceId,
    };
  }

  factory AzureSynapseArtifactsLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return AzureSynapseArtifactsLinkedServiceResponse(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: pulumi.Input.fromValue(map['endpoint']),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceResourceId: (() { final guardedValue = map['workspaceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
