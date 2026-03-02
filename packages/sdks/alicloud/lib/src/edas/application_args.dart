// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edas_application_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_edas_application_application_args_doc}
class ApplicationArgs {
  /// Name of your EDAS application. Only letters '-' '_' and numbers are allowed. The length cannot exceed 36 characters.
  final pulumi.Input<String> applicationName;
  /// The package ID of Enterprise Distributed Application Service (EDAS) Container, which can be retrieved by calling container version list interface ListBuildPack or the "Pack ID" column in container version list. When creating High-speed Service Framework (HSF) application, this parameter is required.
  final pulumi.Input<int>? buildPackId;
  /// The ID of the cluster that you want to create the application. The default cluster will be used if you do not specify this parameter.
  final pulumi.Input<String> clusterId;
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
  final pulumi.Input<String> packageType;
  /// The version of the application that you want to deploy. It must be unique for every application. The length cannot exceed 64 characters. We recommended you to use a timestamp.
  final pulumi.Input<String>? packageVersion;
  /// The address to store the uploaded web application (WAR) package for application deployment. This parameter is required when the deployType parameter is set as url.
  final pulumi.Input<String>? warUrl;

  /// Creates a new [ApplicationArgs].
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
  ApplicationArgs({
    required this.applicationName,
    this.buildPackId,
    required this.clusterId,
    this.descriotion,
    this.ecuInfos,
    this.groupId,
    this.healthCheckUrl,
    this.logicalRegionId,
    required this.packageType,
    this.packageVersion,
    this.warUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'buildPackId': ?buildPackId,
      'clusterId': clusterId,
      'descriotion': ?descriotion,
      'ecuInfos': ?ecuInfos,
      'groupId': ?groupId,
      'healthCheckUrl': ?healthCheckUrl,
      'logicalRegionId': ?logicalRegionId,
      'packageType': packageType,
      'packageVersion': ?packageVersion,
      'warUrl': ?warUrl,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      applicationName: (map['applicationName'] as String).input(),
      buildPackId: map['buildPackId'] == null ? null : (map['buildPackId'] as int).input(),
      clusterId: (map['clusterId'] as String).input(),
      descriotion: map['descriotion'] == null ? null : (map['descriotion'] as String).input(),
      ecuInfos: map['ecuInfos'] == null ? null : ((map['ecuInfos'] as List).cast<String>()).input(),
      groupId: map['groupId'] == null ? null : (map['groupId'] as String).input(),
      healthCheckUrl: map['healthCheckUrl'] == null ? null : (map['healthCheckUrl'] as String).input(),
      logicalRegionId: map['logicalRegionId'] == null ? null : (map['logicalRegionId'] as String).input(),
      packageType: (map['packageType'] as String).input(),
      packageVersion: map['packageVersion'] == null ? null : (map['packageVersion'] as String).input(),
      warUrl: map['warUrl'] == null ? null : (map['warUrl'] as String).input(),
    );
  }
}

