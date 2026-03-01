// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationsApplication {
  /// The ID of the application that you want to deploy.
  final String appId;
  /// The name of your EDAS application. Only letters '-' '_' and numbers are allowed. The length cannot exceed 36 characters.
  final String appName;
  /// The type of the package for the deployment of the application that you want to create. The valid values are: WAR and JAR. We strongly recommend you to set this parameter when creating the application.
  final String applicationType;
  /// The package ID of Enterprise Distributed Application Service (EDAS) Container.
  final int buildPackageId;
  /// The ID of the cluster that you want to create the application.
  final String clusterId;
  /// The type of the cluster that you want to create. Valid values: 1: Swarm cluster. 2: ECS cluster. 3: Kubernetes cluster.
  final int clusterType;
  /// The ID of the namespace the application belongs to.
  final String regionId;

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
      appId: map['appId'] as String,
      appName: map['appName'] as String,
      applicationType: map['applicationType'] as String,
      buildPackageId: map['buildPackageId'] as int,
      clusterId: map['clusterId'] as String,
      clusterType: map['clusterType'] as int,
      regionId: map['regionId'] as String,
    );
  }
}

