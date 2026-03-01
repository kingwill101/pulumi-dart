// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_eks_property_pod_property.dart';

class GetJobDefinitionEksProperty {
  /// The properties for the Kubernetes pod resources of a job.
  final List<GetJobDefinitionEksPropertyPodProperty> podProperties;

  /// Creates a new [GetJobDefinitionEksProperty].
  /// [podProperties] The properties for the Kubernetes pod resources of a job.
  GetJobDefinitionEksProperty({required this.podProperties});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podProperties':
          pulumi.Input.encodeList<
            GetJobDefinitionEksPropertyPodProperty,
            Map<String, dynamic>
          >(podProperties, (value) => value.toMap()),
    };
  }

  factory GetJobDefinitionEksProperty.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionEksProperty(
      podProperties:
          pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodProperty>(
            map['podProperties'],
            (value) => GetJobDefinitionEksPropertyPodProperty.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
