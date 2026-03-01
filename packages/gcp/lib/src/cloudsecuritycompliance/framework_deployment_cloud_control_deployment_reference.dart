// ignore_for_file: unused_element, unnecessary_cast

class FrameworkDeploymentCloudControlDeploymentReference {
  /// (Output)
  /// The name of the CloudControlDeployment. The format is:
  /// organizations/{org}/locations/{location}/cloudControlDeployments/{cloud_control_deployment_id}
  final String? cloudControlDeployment;

  /// Creates a new [FrameworkDeploymentCloudControlDeploymentReference].
  /// [cloudControlDeployment] (Output)
  FrameworkDeploymentCloudControlDeploymentReference({
    this.cloudControlDeployment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cloudControlDeployment': ?cloudControlDeployment};
  }

  factory FrameworkDeploymentCloudControlDeploymentReference.fromMap(
    Map<String, dynamic> map,
  ) {
    return FrameworkDeploymentCloudControlDeploymentReference(
      cloudControlDeployment: map['cloudControlDeployment'] == null
          ? null
          : map['cloudControlDeployment'] as String,
    );
  }
}
