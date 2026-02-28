// ignore_for_file: unused_element, unnecessary_cast

import 'job_definition_eks_properties_pod_properties.dart';

class JobDefinitionEksProperties {
  /// Properties for the Kubernetes pod resources of a job. See `pod_properties` below.
  final JobDefinitionEksPropertiesPodProperties podProperties;

  /// Creates a new [JobDefinitionEksProperties].
  /// [podProperties] Properties for the Kubernetes pod resources of a job. See `pod_properties` below.
  JobDefinitionEksProperties({
    required this.podProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['podProperties'] = podProperties.toMap();
    return map;
  }

  factory JobDefinitionEksProperties.fromMap(Map<String, dynamic> map) {
    return JobDefinitionEksProperties(
      podProperties: JobDefinitionEksPropertiesPodProperties.fromMap(
          (map['podProperties'] as Map).cast<String, dynamic>()),
    );
  }
}
