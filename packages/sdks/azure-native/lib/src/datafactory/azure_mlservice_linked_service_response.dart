// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Azure ML Service linked service.
class AzureMLServiceLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// Type of authentication (Required to specify MSI) used to connect to AzureML. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? authentication;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse?>? connectVia;
  /// Linked service description.
  final pulumi.Input<String?>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String?>? encryptedCredential;
  /// Azure ML Service workspace name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> mlWorkspaceName;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>?>? parameters;
  /// Azure ML Service workspace resource group name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> resourceGroupName;
  /// The ID of the service principal used to authenticate against the endpoint of a published Azure ML Service pipeline. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalId;
  /// The key of the service principal used to authenticate against the endpoint of a published Azure ML Service pipeline.
  final pulumi.Input<dynamic>? servicePrincipalKey;
  /// Azure ML Service workspace subscription ID. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> subscriptionId;
  /// The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? tenant;
  /// Type of linked service.
  /// Expected value is 'AzureMLService'.
  final pulumi.Input<String> type;
  /// Version of the linked service.
  final pulumi.Input<String?>? version;

  /// Creates a new [AzureMLServiceLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authentication] Type of authentication (Required to specify MSI) used to connect to AzureML. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [mlWorkspaceName] Azure ML Service workspace name. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [resourceGroupName] Azure ML Service workspace resource group name. Type: string (or Expression with resultType string).
  /// [servicePrincipalId] The ID of the service principal used to authenticate against the endpoint of a published Azure ML Service pipeline. Type: string (or Expression with resultType string).
  /// [servicePrincipalKey] The key of the service principal used to authenticate against the endpoint of a published Azure ML Service pipeline.
  /// [subscriptionId] Azure ML Service workspace subscription ID. Type: string (or Expression with resultType string).
  /// [tenant] The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  const AzureMLServiceLinkedServiceResponse({
    this.annotations,
    this.authentication,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    required this.mlWorkspaceName,
    this.parameters,
    required this.resourceGroupName,
    this.servicePrincipalId,
    this.servicePrincipalKey,
    required this.subscriptionId,
    this.tenant,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authentication': ?authentication,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'mlWorkspaceName': mlWorkspaceName,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?servicePrincipalKey,
      'subscriptionId': subscriptionId,
      'tenant': ?tenant,
      'type': type,
      'version': ?version,
    };
  }

  factory AzureMLServiceLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return AzureMLServiceLinkedServiceResponse(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mlWorkspaceName: pulumi.Input.fromValue(map['mlWorkspaceName']),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName']),
      servicePrincipalId: (() { final guardedValue = map['servicePrincipalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      servicePrincipalKey: (() { final guardedValue = map['servicePrincipalKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId']),
      tenant: (() { final guardedValue = map['tenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
