// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../saa_slocation/saa_slocation.dart';

/// The set of arguments for SaaS.
class SaaSArgs {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// List of locations that the service is available in. Rollout refers to the
  /// list to generate a rollout plan.
  /// Structure is documented below.
  final pulumi.Input<List<SaaSLocation>>? locations;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The ID value for the new saas.
  final pulumi.Input<String> saasId;

  SaaSArgs({
    this.annotations,
    this.labels,
    required this.location,
    this.locations,
    this.project,
    required this.saasId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final locationsValue = locations;
    if (locationsValue != null) {
      map['locations'] = pulumi.Input.mapOptionalInputValue<List<SaaSLocation>,
              List<Map<String, dynamic>>>(
          locationsValue,
          (value) =>
              pulumi.Input.encodeList<SaaSLocation, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['saasId'] = saasId;
    return map;
  }

  factory SaaSArgs.fromMap(Map<String, dynamic> map) {
    return SaaSArgs(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      locations:
          pulumi.Input.asOptionalInput<List<SaaSLocation>>(map['locations']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      saasId: pulumi.Input.asInput<String>(map['saasId']),
    );
  }
}
