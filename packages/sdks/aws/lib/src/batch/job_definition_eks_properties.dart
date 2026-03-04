// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_definition_eks_properties_pod_properties.dart';

class JobDefinitionEksProperties {
  /// Properties for the Kubernetes pod resources of a job. See `pod_properties` below.
  final pulumi.Input<JobDefinitionEksPropertiesPodProperties> podProperties;

  /// Creates a new [JobDefinitionEksProperties].
  /// [podProperties] Properties for the Kubernetes pod resources of a job. See `pod_properties` below.
  JobDefinitionEksProperties({required this.podProperties});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podProperties':
          pulumi.Input.mapInputValue<
            JobDefinitionEksPropertiesPodProperties,
            Map<String, dynamic>
          >(podProperties, (value) => value.toMap()),
    };
  }

  factory JobDefinitionEksProperties.fromMap(Map<String, dynamic> map) {
    return JobDefinitionEksProperties(
      podProperties: pulumi.Input.fromValue(
        JobDefinitionEksPropertiesPodProperties.fromMap(
          (map['podProperties']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
