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
  ApplicationDeploymentArgs({
    required pulumi.Output<String> appId,
    required pulumi.Output<String> groupId,
    pulumi.Output<String>? packageVersion,
    required pulumi.Output<String> warUrl,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      groupId = pulumi.Input.asInput<String>(groupId),
      packageVersion = pulumi.Input.asOptionalInput<String>(packageVersion),
      warUrl = pulumi.Input.asInput<String>(warUrl);

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
      appId: pulumi.Output.create<String>(map['appId'] as String),
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
      packageVersion: map['packageVersion'] == null ? null : pulumi.Output.create<String>(map['packageVersion'] as String),
      warUrl: pulumi.Output.create<String>(map['warUrl'] as String),
    );
  }
}

