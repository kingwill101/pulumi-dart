// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_job_definition_eks_property_pod_property/get_job_definition_eks_property_pod_property.dart';

class GetJobDefinitionEksProperty {
  /// The properties for the Kubernetes pod resources of a job.
  final List<GetJobDefinitionEksPropertyPodProperty> podProperties;

  GetJobDefinitionEksProperty({
    required this.podProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['podProperties'] = pulumi.Input.encodeList<
        GetJobDefinitionEksPropertyPodProperty,
        Map<String, dynamic>>(podProperties, (value) => value.toMap());
    return map;
  }

  factory GetJobDefinitionEksProperty.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionEksProperty(
      podProperties:
          pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodProperty>(
              map['podProperties'],
              (value) => GetJobDefinitionEksPropertyPodProperty.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
