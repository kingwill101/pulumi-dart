// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Enrollment.
class EnrollmentArgs {
  /// Resource annotations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// A CEL expression identifying which messages this enrollment applies to.
  final pulumi.Input<String> celMatch;

  /// Destination is the Pipeline that the Enrollment is delivering to. It must
  /// point to the full resource name of a Pipeline. Format:
  /// "projects/{PROJECT_ID}/locations/{region}/pipelines/{PIPELINE_ID)"
  final pulumi.Input<String> destination;

  /// Resource display name.
  final pulumi.Input<String>? displayName;

  /// The user-provided ID to be assigned to the Enrollment. It should match the
  /// format `^a-z?$`.
  final pulumi.Input<String> enrollmentId;

  /// Resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// Resource name of the message bus identifying the source of the messages. It
  /// matches the form
  /// projects/{project}/locations/{location}/messageBuses/{messageBus}.
  final pulumi.Input<String> messageBus;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  EnrollmentArgs({
    this.annotations,
    required this.celMatch,
    required this.destination,
    this.displayName,
    required this.enrollmentId,
    this.labels,
    required this.location,
    required this.messageBus,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['celMatch'] = celMatch;
    map['destination'] = destination;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['enrollmentId'] = enrollmentId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    map['messageBus'] = messageBus;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory EnrollmentArgs.fromMap(Map<String, dynamic> map) {
    return EnrollmentArgs(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      celMatch: pulumi.Input.asInput<String>(map['celMatch']),
      destination: pulumi.Input.asInput<String>(map['destination']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      enrollmentId: pulumi.Input.asInput<String>(map['enrollmentId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      messageBus: pulumi.Input.asInput<String>(map['messageBus']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
