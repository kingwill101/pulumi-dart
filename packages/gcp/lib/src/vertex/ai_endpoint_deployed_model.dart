// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_deployed_model_automatic_resource.dart';
import 'ai_endpoint_deployed_model_dedicated_resource.dart';
import 'ai_endpoint_deployed_model_private_endpoint.dart';

class AiEndpointDeployedModel {
  /// (Output)
  /// A description of resources that to large degree are decided by Vertex AI, and require only a modest additional configuration.
  /// Structure is documented below.
  final List<AiEndpointDeployedModelAutomaticResource>? automaticResources;
  /// (Output)
  /// Output only. Timestamp when the DeployedModel was created.
  final String? createTime;
  /// (Output)
  /// A description of resources that are dedicated to the DeployedModel, and that need a higher degree of manual configuration.
  /// Structure is documented below.
  final List<AiEndpointDeployedModelDedicatedResource>? dedicatedResources;
  /// Required. The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final String? displayName;
  /// (Output)
  /// These logs are like standard server access logs, containing information like timestamp and latency for each prediction request. Note that Stackdriver logs may incur a cost, especially if your project receives prediction requests at a high queries per second rate (QPS). Estimate your costs before enabling this option.
  final bool? enableAccessLogging;
  /// (Output)
  /// If true, the container of the DeployedModel instances will send `stderr` and `stdout` streams to Stackdriver Logging. Only supported for custom-trained Models and AutoML Tabular Models.
  final bool? enableContainerLogging;
  /// (Output)
  /// The ID of the DeployedModel. If not provided upon deployment, Vertex AI will generate a value for this ID. This value should be 1-10 characters, and valid characters are /[0-9]/.
  final String? id;
  /// (Output)
  /// The name of the Model that this is the deployment of. Note that the Model may be in a different location than the DeployedModel's Endpoint.
  final String? model;
  /// (Output)
  /// Output only. The version ID of the model that is deployed.
  final String? modelVersionId;
  /// (Output)
  /// Output only. Provide paths for users to send predict/explain/health requests directly to the deployed model services running on Cloud via private services access. This field is populated if network is configured.
  /// Structure is documented below.
  final List<AiEndpointDeployedModelPrivateEndpoint>? privateEndpoints;
  /// (Output)
  /// The service account that the DeployedModel's container runs as. Specify the email address of the service account. If this service account is not specified, the container runs as a service account that doesn't have access to the resource project. Users deploying the Model must have the `iam.serviceAccounts.actAs` permission on this service account.
  final String? serviceAccount;
  /// (Output)
  /// The resource name of the shared DeploymentResourcePool to deploy on. Format: projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}
  final String? sharedResources;

  /// Creates a new [AiEndpointDeployedModel].
  /// [automaticResources] (Output)
  /// [createTime] (Output)
  /// [dedicatedResources] (Output)
  /// [displayName] Required. The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [enableAccessLogging] (Output)
  /// [enableContainerLogging] (Output)
  /// [id] (Output)
  /// [model] (Output)
  /// [modelVersionId] (Output)
  /// [privateEndpoints] (Output)
  /// [serviceAccount] (Output)
  /// [sharedResources] (Output)
  AiEndpointDeployedModel({
    this.automaticResources,
    this.createTime,
    this.dedicatedResources,
    this.displayName,
    this.enableAccessLogging,
    this.enableContainerLogging,
    this.id,
    this.model,
    this.modelVersionId,
    this.privateEndpoints,
    this.serviceAccount,
    this.sharedResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticResources': ?automaticResources == null ? null : pulumi.Input.encodeList<AiEndpointDeployedModelAutomaticResource, Map<String, dynamic>>(automaticResources!, (value) => value.toMap()),
      'createTime': ?createTime,
      'dedicatedResources': ?dedicatedResources == null ? null : pulumi.Input.encodeList<AiEndpointDeployedModelDedicatedResource, Map<String, dynamic>>(dedicatedResources!, (value) => value.toMap()),
      'displayName': ?displayName,
      'enableAccessLogging': ?enableAccessLogging,
      'enableContainerLogging': ?enableContainerLogging,
      'id': ?id,
      'model': ?model,
      'modelVersionId': ?modelVersionId,
      'privateEndpoints': ?privateEndpoints == null ? null : pulumi.Input.encodeList<AiEndpointDeployedModelPrivateEndpoint, Map<String, dynamic>>(privateEndpoints!, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'sharedResources': ?sharedResources,
    };
  }

  factory AiEndpointDeployedModel.fromMap(Map<String, dynamic> map) {
    return AiEndpointDeployedModel(
      automaticResources: map['automaticResources'] == null ? null : pulumi.Input.decodeList<AiEndpointDeployedModelAutomaticResource>(map['automaticResources'], (value) => AiEndpointDeployedModelAutomaticResource.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : map['createTime'] as String,
      dedicatedResources: map['dedicatedResources'] == null ? null : pulumi.Input.decodeList<AiEndpointDeployedModelDedicatedResource>(map['dedicatedResources'], (value) => AiEndpointDeployedModelDedicatedResource.fromMap((value as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      enableAccessLogging: map['enableAccessLogging'] == null ? null : map['enableAccessLogging'] as bool,
      enableContainerLogging: map['enableContainerLogging'] == null ? null : map['enableContainerLogging'] as bool,
      id: map['id'] == null ? null : map['id'] as String,
      model: map['model'] == null ? null : map['model'] as String,
      modelVersionId: map['modelVersionId'] == null ? null : map['modelVersionId'] as String,
      privateEndpoints: map['privateEndpoints'] == null ? null : pulumi.Input.decodeList<AiEndpointDeployedModelPrivateEndpoint>(map['privateEndpoints'], (value) => AiEndpointDeployedModelPrivateEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      serviceAccount: map['serviceAccount'] == null ? null : map['serviceAccount'] as String,
      sharedResources: map['sharedResources'] == null ? null : map['sharedResources'] as String,
    );
  }
}

