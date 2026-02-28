// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_specialist_pool_aiplatform_v1beta1_args_doc}
/// The set of arguments for SpecialistPool.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_specialist_pool_aiplatform_v1beta1_args_doc}
class SpecialistPoolAiplatformV1beta1Args {
  /// The user-defined name of the SpecialistPool. The name can be up to 128 characters long and can consist of any UTF-8 characters. This field should be unique on project-level.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String>? location;

  /// The resource name of the SpecialistPool.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The email addresses of the managers in the SpecialistPool.
  final pulumi.Input<List<String>>? specialistManagerEmails;

  /// The email addresses of workers in the SpecialistPool.
  final pulumi.Input<List<String>>? specialistWorkerEmails;

  /// Creates a new [SpecialistPoolAiplatformV1beta1Args].
  /// [displayName] The user-defined name of the SpecialistPool. The name can be up to 128 characters long and can consist of any UTF-8 characters. This field should be unique on project-level.
  /// [location] Optional.
  /// [name] The resource name of the SpecialistPool.
  /// [project] Optional.
  /// [specialistManagerEmails] The email addresses of the managers in the SpecialistPool.
  /// [specialistWorkerEmails] The email addresses of workers in the SpecialistPool.
  SpecialistPoolAiplatformV1beta1Args({
    required String displayName,
    String? location,
    String? name,
    String? project,
    List<String>? specialistManagerEmails,
    List<String>? specialistWorkerEmails,
  })  : displayName = pulumi.Input.asInput<String>(displayName),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        specialistManagerEmails =
            pulumi.Input.asOptionalInput<List<String>>(specialistManagerEmails),
        specialistWorkerEmails =
            pulumi.Input.asOptionalInput<List<String>>(specialistWorkerEmails);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final specialistManagerEmailsValue = specialistManagerEmails;
    if (specialistManagerEmailsValue != null) {
      map['specialistManagerEmails'] = specialistManagerEmailsValue;
    }
    final specialistWorkerEmailsValue = specialistWorkerEmails;
    if (specialistWorkerEmailsValue != null) {
      map['specialistWorkerEmails'] = specialistWorkerEmailsValue;
    }
    return map;
  }

  factory SpecialistPoolAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return SpecialistPoolAiplatformV1beta1Args(
      displayName: map['displayName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      specialistManagerEmails: map['specialistManagerEmails'] == null
          ? null
          : (map['specialistManagerEmails'] as List).cast<String>(),
      specialistWorkerEmails: map['specialistWorkerEmails'] == null
          ? null
          : (map['specialistWorkerEmails'] as List).cast<String>(),
    );
  }
}
