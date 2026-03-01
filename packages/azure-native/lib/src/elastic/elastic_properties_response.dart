// ignore_for_file: unused_element, unnecessary_cast

import 'elastic_cloud_deployment_response.dart';
import 'elastic_cloud_user_response.dart';

/// Elastic Resource Properties.
class ElasticPropertiesResponse {
  /// Details of the elastic cloud deployment.
  final ElasticCloudDeploymentResponse? elasticCloudDeployment;
  /// Details of the user's elastic account.
  final ElasticCloudUserResponse? elasticCloudUser;

  /// Creates a new [ElasticPropertiesResponse].
  /// [elasticCloudDeployment] Details of the elastic cloud deployment.
  /// [elasticCloudUser] Details of the user's elastic account.
  ElasticPropertiesResponse({
    this.elasticCloudDeployment,
    this.elasticCloudUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticCloudDeployment': ?elasticCloudDeployment == null ? null : elasticCloudDeployment!.toMap(),
      'elasticCloudUser': ?elasticCloudUser == null ? null : elasticCloudUser!.toMap(),
    };
  }

  factory ElasticPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticPropertiesResponse(
      elasticCloudDeployment: map['elasticCloudDeployment'] == null ? null : ElasticCloudDeploymentResponse.fromMap((map['elasticCloudDeployment'] as Map).cast<String, dynamic>()),
      elasticCloudUser: map['elasticCloudUser'] == null ? null : ElasticCloudUserResponse.fromMap((map['elasticCloudUser'] as Map).cast<String, dynamic>()),
    );
  }
}

