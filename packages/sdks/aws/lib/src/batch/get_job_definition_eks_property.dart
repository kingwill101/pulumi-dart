// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_eks_property_pod_property.dart';

class GetJobDefinitionEksProperty {
  /// The properties for the Kubernetes pod resources of a job.
  final pulumi.Input<List<GetJobDefinitionEksPropertyPodProperty>> podProperties;

  /// Creates a new [GetJobDefinitionEksProperty].
  /// [podProperties] The properties for the Kubernetes pod resources of a job.
  GetJobDefinitionEksProperty({
    required this.podProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podProperties': pulumi.Input.mapInputValue<List<GetJobDefinitionEksPropertyPodProperty>, List<Map<String, dynamic>>>(podProperties, (value) => pulumi.Input.encodeList<GetJobDefinitionEksPropertyPodProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetJobDefinitionEksProperty.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionEksProperty(
      podProperties: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodProperty>(map['podProperties']!, (value) => GetJobDefinitionEksPropertyPodProperty.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

