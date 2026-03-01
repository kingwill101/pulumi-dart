// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventarc_enrollment_enrollment_args_doc}
/// The set of arguments for Enrollment.
/// {@endtemplate}
/// {@macro pulumi_eventarc_enrollment_enrollment_args_doc}
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

  /// Creates a new [EnrollmentArgs].
  /// [annotations] Resource annotations.
  /// [celMatch] A CEL expression identifying which messages this enrollment applies to.
  /// [destination] Destination is the Pipeline that the Enrollment is delivering to. It must
  /// [displayName] Resource display name.
  /// [enrollmentId] The user-provided ID to be assigned to the Enrollment. It should match the
  /// [labels] Resource labels.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [messageBus] Resource name of the message bus identifying the source of the messages. It
  /// [project] The ID of the project in which the resource belongs.
  EnrollmentArgs({
    Map<String, String>? annotations,
    required String celMatch,
    required String destination,
    String? displayName,
    required String enrollmentId,
    Map<String, String>? labels,
    required String location,
    required String messageBus,
    String? project,
  }) : annotations = pulumi.Input.asOptionalInput<Map<String, String>>(
         annotations,
       ),
       celMatch = pulumi.Input.asInput<String>(celMatch),
       destination = pulumi.Input.asInput<String>(destination),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       enrollmentId = pulumi.Input.asInput<String>(enrollmentId),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asInput<String>(location),
       messageBus = pulumi.Input.asInput<String>(messageBus),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'celMatch': celMatch,
      'destination': destination,
      'displayName': ?displayName,
      'enrollmentId': enrollmentId,
      'labels': ?labels,
      'location': location,
      'messageBus': messageBus,
      'project': ?project,
    };
  }

  factory EnrollmentArgs.fromMap(Map<String, dynamic> map) {
    return EnrollmentArgs(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      celMatch: map['celMatch'] as String,
      destination: map['destination'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      enrollmentId: map['enrollmentId'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      messageBus: map['messageBus'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
