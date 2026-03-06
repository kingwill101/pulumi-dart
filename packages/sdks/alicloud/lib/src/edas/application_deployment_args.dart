// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edas_application_deployment_application_deployment_args_doc}
/// The set of arguments for ApplicationDeployment.
/// {@endtemplate}
/// {@macro pulumi_edas_application_deployment_application_deployment_args_doc}
class ApplicationDeploymentArgs {
  /// The ID of the application that you want to deploy.
  final pulumi.Input<String> appId;
  /// The ID of the instance group where the application is going to be deployed. Set this parameter to all if you want to deploy the application to all groups.
  final pulumi.Input<String> groupId;
  /// The version of the application that you want to deploy. It must be unique for every application. The length cannot exceed 64 characters. We recommended you to use a timestamp.
  final pulumi.Input<String>? packageVersion;
  /// The address to store the uploaded web application (WAR) package for application deployment. This parameter is required when the deployType parameter is set as url.
  final pulumi.Input<String> warUrl;

  /// Creates a new [ApplicationDeploymentArgs].
  /// [appId] The ID of the application that you want to deploy.
  /// [groupId] The ID of the instance group where the application is going to be deployed. Set this parameter to all if you want to deploy the application to all groups.
  /// [packageVersion] The version of the application that you want to deploy. It must be unique for every application. The length cannot exceed 64 characters. We recommended you to use a timestamp.
  /// [warUrl] The address to store the uploaded web application (WAR) package for application deployment. This parameter is required when the deployType parameter is set as url.
  const ApplicationDeploymentArgs({
    required this.appId,
    required this.groupId,
    this.packageVersion,
    required this.warUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'groupId': groupId,
      'packageVersion': ?packageVersion,
      'warUrl': warUrl,
    };
  }

  factory ApplicationDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationDeploymentArgs(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      packageVersion: (() { final guardedValue = map['packageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      warUrl: pulumi.Input.fromValue(map['warUrl'] as String),
    );
  }
}

