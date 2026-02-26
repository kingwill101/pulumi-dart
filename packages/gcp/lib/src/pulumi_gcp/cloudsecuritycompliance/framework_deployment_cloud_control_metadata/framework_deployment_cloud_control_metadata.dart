// ignore_for_file: unused_element, unnecessary_cast

import '../framework_deployment_cloud_control_metadata_cloud_control_details/framework_deployment_cloud_control_metadata_cloud_control_details.dart';

class FrameworkDeploymentCloudControlMetadata {
  /// CloudControlDetails contains the details of a CloudControl.
  /// Structure is documented below.
  final FrameworkDeploymentCloudControlMetadataCloudControlDetails
      cloudControlDetails;

  /// Enforcement mode for the framework deployment.
  /// Possible values:
  /// PREVENTIVE
  /// DETECTIVE
  /// AUDIT
  final String enforcementMode;

  FrameworkDeploymentCloudControlMetadata({
    required this.cloudControlDetails,
    required this.enforcementMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudControlDetails'] = cloudControlDetails.toMap();
    map['enforcementMode'] = enforcementMode;
    return map;
  }

  factory FrameworkDeploymentCloudControlMetadata.fromMap(
      Map<String, dynamic> map) {
    return FrameworkDeploymentCloudControlMetadata(
      cloudControlDetails:
          FrameworkDeploymentCloudControlMetadataCloudControlDetails.fromMap(
              (map['cloudControlDetails'] as Map).cast<String, dynamic>()),
      enforcementMode: map['enforcementMode'] as String,
    );
  }
}
