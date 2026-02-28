// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_mirroring_endpoint_mirroring_endpoint_args_doc}
/// The set of arguments for MirroringEndpoint.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_mirroring_endpoint_mirroring_endpoint_args_doc}
class MirroringEndpointArgs {
  /// User-provided description of the endpoint.
  /// Used as additional context for the endpoint.
  final pulumi.Input<String>? description;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The cloud location of the endpoint, e.g. `us-central1-a` or `asia-south1-b`.
  final pulumi.Input<String> location;
  /// The endpoint group that this endpoint belongs to.
  /// Format is:
  /// `projects/{project}/locations/{location}/mirroringEndpointGroups/{mirroringEndpointGroup}`
  final pulumi.Input<String> mirroringEndpointGroup;
  /// The ID to use for the new endpoint, which will become the final
  /// component of the endpoint's resource name.
  final pulumi.Input<String> mirroringEndpointId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [MirroringEndpointArgs].
  /// [description] User-provided description of the endpoint.
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the endpoint, e.g. `us-central1-a` or `asia-south1-b`.
  /// [mirroringEndpointGroup] The endpoint group that this endpoint belongs to.
  /// [mirroringEndpointId] The ID to use for the new endpoint, which will become the final
  /// [project] The ID of the project in which the resource belongs.
  MirroringEndpointArgs({
    String? description,
    Map<String, String>? labels,
    required String location,
    required String mirroringEndpointGroup,
    required String mirroringEndpointId,
    String? project,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      mirroringEndpointGroup = pulumi.Input.asInput<String>(mirroringEndpointGroup),
      mirroringEndpointId = pulumi.Input.asInput<String>(mirroringEndpointId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'mirroringEndpointGroup': mirroringEndpointGroup,
      'mirroringEndpointId': mirroringEndpointId,
      'project': ?project,
    };
  }

  factory MirroringEndpointArgs.fromMap(Map<String, dynamic> map) {
    return MirroringEndpointArgs(
      description: map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      mirroringEndpointGroup: map['mirroringEndpointGroup'] as String,
      mirroringEndpointId: map['mirroringEndpointId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

