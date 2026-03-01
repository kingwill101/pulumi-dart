// ignore_for_file: unused_element, unnecessary_cast


class GetDeploymentAutoScaleProfile {
  /// The maximum number of NGINX capacity units for this NGINX Deployment.
  final int maxCapacity;
  /// The minimum number of NGINX capacity units for this NGINX Deployment.
  final int minCapacity;
  /// The name of this NGINX Deployment.
  final String name;

  /// Creates a new [GetDeploymentAutoScaleProfile].
  /// [maxCapacity] The maximum number of NGINX capacity units for this NGINX Deployment.
  /// [minCapacity] The minimum number of NGINX capacity units for this NGINX Deployment.
  /// [name] The name of this NGINX Deployment.
  GetDeploymentAutoScaleProfile({
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

  factory GetDeploymentAutoScaleProfile.fromMap(Map<String, dynamic> map) {
    return GetDeploymentAutoScaleProfile(
      maxCapacity: map['maxCapacity'] as int,
      minCapacity: map['minCapacity'] as int,
      name: map['name'] as String,
    );
  }
}

