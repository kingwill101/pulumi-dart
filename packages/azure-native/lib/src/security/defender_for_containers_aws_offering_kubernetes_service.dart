// ignore_for_file: unused_element, unnecessary_cast


/// The kubernetes service connection configuration
class DefenderForContainersAwsOfferingKubernetesService {
  /// The cloud role ARN in AWS for this feature used for provisioning resources
  final String? cloudRoleArn;

  /// Creates a new [DefenderForContainersAwsOfferingKubernetesService].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature used for provisioning resources
  DefenderForContainersAwsOfferingKubernetesService({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderForContainersAwsOfferingKubernetesService.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOfferingKubernetesService(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : map['cloudRoleArn'] as String,
    );
  }
}

