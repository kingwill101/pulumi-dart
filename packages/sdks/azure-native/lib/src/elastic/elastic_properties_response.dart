// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_cloud_deployment_response.dart';
import 'elastic_cloud_user_response.dart';

/// Elastic Resource Properties.
class ElasticPropertiesResponse {
  /// Details of the elastic cloud deployment.
  final pulumi.Input<ElasticCloudDeploymentResponse>? elasticCloudDeployment;
  /// Details of the user's elastic account.
  final pulumi.Input<ElasticCloudUserResponse>? elasticCloudUser;

  /// Creates a new [ElasticPropertiesResponse].
  /// [elasticCloudDeployment] Details of the elastic cloud deployment.
  /// [elasticCloudUser] Details of the user's elastic account.
  ElasticPropertiesResponse({
    this.elasticCloudDeployment,
    this.elasticCloudUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticCloudDeployment': ?pulumi.Input.mapOptionalInputValue<ElasticCloudDeploymentResponse, Map<String, dynamic>>(elasticCloudDeployment, (value) => value.toMap()),
      'elasticCloudUser': ?pulumi.Input.mapOptionalInputValue<ElasticCloudUserResponse, Map<String, dynamic>>(elasticCloudUser, (value) => value.toMap()),
    };
  }

  factory ElasticPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticPropertiesResponse(
      elasticCloudDeployment: map['elasticCloudDeployment'] == null ? null : (ElasticCloudDeploymentResponse.fromMap((map['elasticCloudDeployment'] as Map).cast<String, dynamic>())).input(),
      elasticCloudUser: map['elasticCloudUser'] == null ? null : (ElasticCloudUserResponse.fromMap((map['elasticCloudUser'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

