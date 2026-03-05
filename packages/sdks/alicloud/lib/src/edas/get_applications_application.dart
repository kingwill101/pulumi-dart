// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationsApplication {
  /// The ID of the application that you want to deploy.
  final pulumi.Input<String> appId;
  /// The name of your EDAS application. Only letters '-' '_' and numbers are allowed. The length cannot exceed 36 characters.
  final pulumi.Input<String> appName;
  /// The type of the package for the deployment of the application that you want to create. The valid values are: WAR and JAR. We strongly recommend you to set this parameter when creating the application.
  final pulumi.Input<String> applicationType;
  /// The package ID of Enterprise Distributed Application Service (EDAS) Container.
  final pulumi.Input<int> buildPackageId;
  /// The ID of the cluster that you want to create the application.
  final pulumi.Input<String> clusterId;
  /// The type of the cluster that you want to create. Valid values: 1: Swarm cluster. 2: ECS cluster. 3: Kubernetes cluster.
  final pulumi.Input<int> clusterType;
  /// The ID of the namespace the application belongs to.
  final pulumi.Input<String> regionId;

  /// Creates a new [GetApplicationsApplication].
  /// [appId] The ID of the application that you want to deploy.
  /// [appName] The name of your EDAS application. Only letters '-' '_' and numbers are allowed. The length cannot exceed 36 characters.
  /// [applicationType] The type of the package for the deployment of the application that you want to create. The valid values are: WAR and JAR. We strongly recommend you to set this parameter when creating the application.
  /// [buildPackageId] The package ID of Enterprise Distributed Application Service (EDAS) Container.
  /// [clusterId] The ID of the cluster that you want to create the application.
  /// [clusterType] The type of the cluster that you want to create. Valid values: 1: Swarm cluster. 2: ECS cluster. 3: Kubernetes cluster.
  /// [regionId] The ID of the namespace the application belongs to.
  GetApplicationsApplication({
    required this.appId,
    required this.appName,
    required this.applicationType,
    required this.buildPackageId,
    required this.clusterId,
    required this.clusterType,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appName': appName,
      'applicationType': applicationType,
      'buildPackageId': buildPackageId,
      'clusterId': clusterId,
      'clusterType': clusterType,
      'regionId': regionId,
    };
  }

  factory GetApplicationsApplication.fromMap(Map<String, dynamic> map) {
    return GetApplicationsApplication(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      appName: pulumi.Input.fromValue(map['appName'] as String),
      applicationType: pulumi.Input.fromValue(map['applicationType'] as String),
      buildPackageId: pulumi.Input.fromValue(map['buildPackageId'] as int),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      clusterType: pulumi.Input.fromValue(map['clusterType'] as int),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
    );
  }
}

