// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the user's elastic deployment associated with the monitor resource.
class ElasticCloudDeploymentResponse {
  /// Associated Azure subscription Id for the elastic deployment.
  final pulumi.Input<String> azureSubscriptionId;
  /// Elastic deployment Id
  final pulumi.Input<String> deploymentId;
  /// Region where Deployment at Elastic side took place.
  final pulumi.Input<String> elasticsearchRegion;
  /// Elasticsearch ingestion endpoint of the Elastic deployment.
  final pulumi.Input<String> elasticsearchServiceUrl;
  /// Kibana endpoint of the Elastic deployment.
  final pulumi.Input<String> kibanaServiceUrl;
  /// Kibana dashboard sso URL of the Elastic deployment.
  final pulumi.Input<String> kibanaSsoUrl;
  /// Elastic deployment name
  final pulumi.Input<String> name;

  /// Creates a new [ElasticCloudDeploymentResponse].
  /// [azureSubscriptionId] Associated Azure subscription Id for the elastic deployment.
  /// [deploymentId] Elastic deployment Id
  /// [elasticsearchRegion] Region where Deployment at Elastic side took place.
  /// [elasticsearchServiceUrl] Elasticsearch ingestion endpoint of the Elastic deployment.
  /// [kibanaServiceUrl] Kibana endpoint of the Elastic deployment.
  /// [kibanaSsoUrl] Kibana dashboard sso URL of the Elastic deployment.
  /// [name] Elastic deployment name
  const ElasticCloudDeploymentResponse({
    required this.azureSubscriptionId,
    required this.deploymentId,
    required this.elasticsearchRegion,
    required this.elasticsearchServiceUrl,
    required this.kibanaServiceUrl,
    required this.kibanaSsoUrl,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureSubscriptionId': azureSubscriptionId,
      'deploymentId': deploymentId,
      'elasticsearchRegion': elasticsearchRegion,
      'elasticsearchServiceUrl': elasticsearchServiceUrl,
      'kibanaServiceUrl': kibanaServiceUrl,
      'kibanaSsoUrl': kibanaSsoUrl,
      'name': name,
    };
  }

  factory ElasticCloudDeploymentResponse.fromMap(Map<String, dynamic> map) {
    return ElasticCloudDeploymentResponse(
      azureSubscriptionId: pulumi.Input.fromValue(map['azureSubscriptionId'] as String),
      deploymentId: pulumi.Input.fromValue(map['deploymentId'] as String),
      elasticsearchRegion: pulumi.Input.fromValue(map['elasticsearchRegion'] as String),
      elasticsearchServiceUrl: pulumi.Input.fromValue(map['elasticsearchServiceUrl'] as String),
      kibanaServiceUrl: pulumi.Input.fromValue(map['kibanaServiceUrl'] as String),
      kibanaSsoUrl: pulumi.Input.fromValue(map['kibanaSsoUrl'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

