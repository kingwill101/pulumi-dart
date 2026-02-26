// ignore_for_file: unused_element, unnecessary_cast

import '../job_definition_eks_properties_pod_properties/job_definition_eks_properties_pod_properties.dart';

class JobDefinitionEksProperties {
  /// Properties for the Kubernetes pod resources of a job. See <span pulumi-lang-nodejs="`podProperties`" pulumi-lang-dotnet="`PodProperties`" pulumi-lang-go="`podProperties`" pulumi-lang-python="`pod_properties`" pulumi-lang-yaml="`podProperties`" pulumi-lang-java="`podProperties`">`pod_properties`</span> below.
  final JobDefinitionEksPropertiesPodProperties podProperties;

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
