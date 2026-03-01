// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_get_fhir_service_get_fhir_service_args_doc}
/// Arguments for getFhirService.
/// {@endtemplate}
/// {@macro pulumi_healthcare_get_fhir_service_get_fhir_service_args_doc}
class GetFhirServiceArgs {
  /// The name of the Healthcare FHIR Service.
  final pulumi.Input<String> name;
  /// The map of tags assigned to the Healthcare FHIR Service.
  final pulumi.Input<Map<String, String>>? tags;
  /// The id of the Healthcare Workspace in which the Healthcare FHIR Service exists.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [GetFhirServiceArgs].
  /// [name] The name of the Healthcare FHIR Service.
  /// [tags] The map of tags assigned to the Healthcare FHIR Service.
  /// [workspaceId] The id of the Healthcare Workspace in which the Healthcare FHIR Service exists.
  GetFhirServiceArgs({
    required String name,
    Map<String, String>? tags,
    required String workspaceId,
  }) :
      name = pulumi.Input.asInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tags': ?tags,
      'workspaceId': workspaceId,
    };
  }

  factory GetFhirServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetFhirServiceArgs(
      name: map['name'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      workspaceId: map['workspaceId'] as String,
    );
  }
}

