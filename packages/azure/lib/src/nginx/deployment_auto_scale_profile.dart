// ignore_for_file: unused_element, unnecessary_cast


class DeploymentAutoScaleProfile {
  /// Specify the maximum number of NGINX capacity units for this NGINX Deployment.
  ///
  /// > **Note:** If you're using autoscaling with deployments created before v4.0, you may need to use Terraform's `ignore_changes` functionality to ignore changes to the `capacity` field.
  final int maxCapacity;
  /// Specify the minimum number of NGINX capacity units for this NGINX Deployment.
  final int minCapacity;
  /// Specify the name of the autoscaling profile.
  final String name;

  /// Creates a new [DeploymentAutoScaleProfile].
  /// [maxCapacity] Specify the maximum number of NGINX capacity units for this NGINX Deployment.
  /// [minCapacity] Specify the minimum number of NGINX capacity units for this NGINX Deployment.
  /// [name] Specify the name of the autoscaling profile.
  DeploymentAutoScaleProfile({
    required this.maxCapacity,
    required this.minCapacity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCapacity': maxCapacity,
      'minCapacity': minCapacity,
      'name': name,
    };
  }

  factory DeploymentAutoScaleProfile.fromMap(Map<String, dynamic> map) {
    return DeploymentAutoScaleProfile(
      maxCapacity: map['maxCapacity'] as int,
      minCapacity: map['minCapacity'] as int,
      name: map['name'] as String,
    );
  }
}

