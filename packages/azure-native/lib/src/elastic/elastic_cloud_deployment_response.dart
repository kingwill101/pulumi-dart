// ignore_for_file: unused_element, unnecessary_cast


/// Details of the user's elastic deployment associated with the monitor resource.
class ElasticCloudDeploymentResponse {
  /// Associated Azure subscription Id for the elastic deployment.
  final String azureSubscriptionId;
  /// Elastic deployment Id
  final String deploymentId;
  /// Region where Deployment at Elastic side took place.
  final String elasticsearchRegion;
  /// Elasticsearch ingestion endpoint of the Elastic deployment.
  final String elasticsearchServiceUrl;
  /// Kibana endpoint of the Elastic deployment.
  final String kibanaServiceUrl;
  /// Kibana dashboard sso URL of the Elastic deployment.
  final String kibanaSsoUrl;
  /// Elastic deployment name
  final String name;

  /// Creates a new [ElasticCloudDeploymentResponse].
  /// [azureSubscriptionId] Associated Azure subscription Id for the elastic deployment.
  /// [deploymentId] Elastic deployment Id
  /// [elasticsearchRegion] Region where Deployment at Elastic side took place.
  /// [elasticsearchServiceUrl] Elasticsearch ingestion endpoint of the Elastic deployment.
  /// [kibanaServiceUrl] Kibana endpoint of the Elastic deployment.
  /// [kibanaSsoUrl] Kibana dashboard sso URL of the Elastic deployment.
  /// [name] Elastic deployment name
  ElasticCloudDeploymentResponse({
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
      azureSubscriptionId: map['azureSubscriptionId'] as String,
      deploymentId: map['deploymentId'] as String,
      elasticsearchRegion: map['elasticsearchRegion'] as String,
      elasticsearchServiceUrl: map['elasticsearchServiceUrl'] as String,
      kibanaServiceUrl: map['kibanaServiceUrl'] as String,
      kibanaSsoUrl: map['kibanaSsoUrl'] as String,
      name: map['name'] as String,
    );
  }
}

