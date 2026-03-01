// ignore_for_file: unused_element, unnecessary_cast

import 'on_error_deployment_type.dart';

/// Deployment on error behavior.
class OnErrorDeployment {
  /// The deployment to be used on error case.
  final String? deploymentName;
  /// The deployment on error behavior type. Possible values are LastSuccessful and SpecificDeployment.
  final OnErrorDeploymentType? type;

  /// Creates a new [OnErrorDeployment].
  /// [deploymentName] The deployment to be used on error case.
  /// [type] The deployment on error behavior type. Possible values are LastSuccessful and SpecificDeployment.
  OnErrorDeployment({
    this.deploymentName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentName': ?deploymentName,
      'type': ?type == null ? null : type!.value,
    };
  }

  factory OnErrorDeployment.fromMap(Map<String, dynamic> map) {
    return OnErrorDeployment(
      deploymentName: map['deploymentName'] == null ? null : map['deploymentName'] as String,
      type: map['type'] == null ? null : OnErrorDeploymentType.fromValue(map['type'] as String),
    );
  }
}

