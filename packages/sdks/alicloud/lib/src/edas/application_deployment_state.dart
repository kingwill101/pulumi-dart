// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationDeployment resources.
class ApplicationDeploymentState {
  /// The ID of the application that you want to deploy.
  final pulumi.Input<String>? appId;
  /// The ID of the instance group where the application is going to be deployed. Set this parameter to all if you want to deploy the application to all groups.
  final pulumi.Input<String>? groupId;
  /// Last package version deployed.
  final pulumi.Input<String>? lastPackageVersion;
  /// The version of the application that you want to deploy. It must be unique for every application. The length cannot exceed 64 characters. We recommended you to use a timestamp.
  final pulumi.Input<String>? packageVersion;
  /// The address to store the uploaded web application (WAR) package for application deployment. This parameter is required when the deployType parameter is set as url.
  final pulumi.Input<String>? warUrl;

  /// Creates a new [ApplicationDeploymentState].
  /// [appId] The ID of the application that you want to deploy.
  /// [groupId] The ID of the instance group where the application is going to be deployed. Set this parameter to all if you want to deploy the application to all groups.
  /// [lastPackageVersion] Last package version deployed.
  /// [packageVersion] The version of the application that you want to deploy. It must be unique for every application. The length cannot exceed 64 characters. We recommended you to use a timestamp.
  /// [warUrl] The address to store the uploaded web application (WAR) package for application deployment. This parameter is required when the deployType parameter is set as url.
  ApplicationDeploymentState({
    this.appId,
    this.groupId,
    this.lastPackageVersion,
    this.packageVersion,
    this.warUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'groupId': ?groupId,
      'lastPackageVersion': ?lastPackageVersion,
      'packageVersion': ?packageVersion,
      'warUrl': ?warUrl,
    };
  }

  factory ApplicationDeploymentState.fromMap(Map<String, dynamic> map) {
    return ApplicationDeploymentState(
      appId: map['appId'] == null ? null : (map['appId']! as String).input(),
      groupId: map['groupId'] == null ? null : (map['groupId']! as String).input(),
      lastPackageVersion: map['lastPackageVersion'] == null ? null : (map['lastPackageVersion']! as String).input(),
      packageVersion: map['packageVersion'] == null ? null : (map['packageVersion']! as String).input(),
      warUrl: map['warUrl'] == null ? null : (map['warUrl']! as String).input(),
    );
  }
}

