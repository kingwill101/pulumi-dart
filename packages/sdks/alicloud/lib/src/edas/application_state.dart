// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// Name of your EDAS application. Only letters '-' '_' and numbers are allowed. The length cannot exceed 36 characters.
  final pulumi.Input<String>? applicationName;
  /// The package ID of Enterprise Distributed Application Service (EDAS) Container, which can be retrieved by calling container version list interface ListBuildPack or the "Pack ID" column in container version list. When creating High-speed Service Framework (HSF) application, this parameter is required.
  final pulumi.Input<int>? buildPackId;
  /// The ID of the cluster that you want to create the application. The default cluster will be used if you do not specify this parameter.
  final pulumi.Input<String>? clusterId;
  /// The description of the application that you want to create.
  final pulumi.Input<String>? descriotion;
  /// The ID of the Elastic Compute Unit (ECU) where you want to deploy the application. Type: List.
  final pulumi.Input<List<String>>? ecuInfos;
  /// The ID of the instance group where the application is going to be deployed. Set this parameter to all if you want to deploy the application to all groups.
  final pulumi.Input<String>? groupId;
  /// The URL for health checking of the application.
  final pulumi.Input<String>? healthCheckUrl;
  /// The ID of the namespace where you want to create the application. You can call the ListUserDefineRegion operation to query the namespace ID.
  final pulumi.Input<String>? logicalRegionId;
  /// The type of the package for the deployment of the application that you want to create. The valid values are: WAR and JAR. We strongly recommend you to set this parameter when creating the application.
  final pulumi.Input<String>? packageType;
  /// The version of the application that you want to deploy. It must be unique for every application. The length cannot exceed 64 characters. We recommended you to use a timestamp.
  final pulumi.Input<String>? packageVersion;
  /// The address to store the uploaded web application (WAR) package for application deployment. This parameter is required when the deployType parameter is set as url.
  final pulumi.Input<String>? warUrl;

  /// Creates a new [ApplicationState].
  /// [applicationName] Name of your EDAS application. Only letters '-' '_' and numbers are allowed. The length cannot exceed 36 characters.
  /// [buildPackId] The package ID of Enterprise Distributed Application Service (EDAS) Container, which can be retrieved by calling container version list interface ListBuildPack or the "Pack ID" column in container version list. When creating High-speed Service Framework (HSF) application, this parameter is required.
  /// [clusterId] The ID of the cluster that you want to create the application. The default cluster will be used if you do not specify this parameter.
  /// [descriotion] The description of the application that you want to create.
  /// [ecuInfos] The ID of the Elastic Compute Unit (ECU) where you want to deploy the application. Type: List.
  /// [groupId] The ID of the instance group where the application is going to be deployed. Set this parameter to all if you want to deploy the application to all groups.
  /// [healthCheckUrl] The URL for health checking of the application.
  /// [logicalRegionId] The ID of the namespace where you want to create the application. You can call the ListUserDefineRegion operation to query the namespace ID.
  /// [packageType] The type of the package for the deployment of the application that you want to create. The valid values are: WAR and JAR. We strongly recommend you to set this parameter when creating the application.
  /// [packageVersion] The version of the application that you want to deploy. It must be unique for every application. The length cannot exceed 64 characters. We recommended you to use a timestamp.
  /// [warUrl] The address to store the uploaded web application (WAR) package for application deployment. This parameter is required when the deployType parameter is set as url.
  ApplicationState({
    pulumi.Output<String>? applicationName,
    pulumi.Output<int>? buildPackId,
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? descriotion,
    pulumi.Output<List<String>>? ecuInfos,
    pulumi.Output<String>? groupId,
    pulumi.Output<String>? healthCheckUrl,
    pulumi.Output<String>? logicalRegionId,
    pulumi.Output<String>? packageType,
    pulumi.Output<String>? packageVersion,
    pulumi.Output<String>? warUrl,
  }) :
      applicationName = pulumi.Input.asOptionalInput<String>(applicationName),
      buildPackId = pulumi.Input.asOptionalInput<int>(buildPackId),
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      descriotion = pulumi.Input.asOptionalInput<String>(descriotion),
      ecuInfos = pulumi.Input.asOptionalInput<List<String>>(ecuInfos),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      healthCheckUrl = pulumi.Input.asOptionalInput<String>(healthCheckUrl),
      logicalRegionId = pulumi.Input.asOptionalInput<String>(logicalRegionId),
      packageType = pulumi.Input.asOptionalInput<String>(packageType),
      packageVersion = pulumi.Input.asOptionalInput<String>(packageVersion),
      warUrl = pulumi.Input.asOptionalInput<String>(warUrl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': ?applicationName,
      'buildPackId': ?buildPackId,
      'clusterId': ?clusterId,
      'descriotion': ?descriotion,
      'ecuInfos': ?ecuInfos,
      'groupId': ?groupId,
      'healthCheckUrl': ?healthCheckUrl,
      'logicalRegionId': ?logicalRegionId,
      'packageType': ?packageType,
      'packageVersion': ?packageVersion,
      'warUrl': ?warUrl,
    };
  }

  factory ApplicationState.fromMap(Map<String, dynamic> map) {
    return ApplicationState(
      applicationName: map['applicationName'] == null ? null : pulumi.Output.create<String>(map['applicationName'] as String),
      buildPackId: map['buildPackId'] == null ? null : pulumi.Output.create<int>(map['buildPackId'] as int),
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      descriotion: map['descriotion'] == null ? null : pulumi.Output.create<String>(map['descriotion'] as String),
      ecuInfos: map['ecuInfos'] == null ? null : pulumi.Output.create<List<String>>((map['ecuInfos'] as List).cast<String>()),
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      healthCheckUrl: map['healthCheckUrl'] == null ? null : pulumi.Output.create<String>(map['healthCheckUrl'] as String),
      logicalRegionId: map['logicalRegionId'] == null ? null : pulumi.Output.create<String>(map['logicalRegionId'] as String),
      packageType: map['packageType'] == null ? null : pulumi.Output.create<String>(map['packageType'] as String),
      packageVersion: map['packageVersion'] == null ? null : pulumi.Output.create<String>(map['packageVersion'] as String),
      warUrl: map['warUrl'] == null ? null : pulumi.Output.create<String>(map['warUrl'] as String),
    );
  }
}

