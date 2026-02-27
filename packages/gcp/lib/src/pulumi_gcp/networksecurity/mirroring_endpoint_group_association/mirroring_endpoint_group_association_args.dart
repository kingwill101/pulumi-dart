// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for MirroringEndpointGroupAssociation.
class MirroringEndpointGroupAssociationArgs {
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The cloud location of the association, currently restricted to `global`.
  final pulumi.Input<String> location;

  /// The endpoint group that this association is connected to, for example:
  /// `projects/123456789/locations/global/mirroringEndpointGroups/my-eg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> mirroringEndpointGroup;

  /// The ID to use for the new association, which will become the final
  /// component of the endpoint group's resource name. If not provided, the
  /// server will generate a unique ID.
  final pulumi.Input<String>? mirroringEndpointGroupAssociationId;

  /// The VPC network that is associated. for example:
  /// `projects/123456789/global/networks/my-network`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  MirroringEndpointGroupAssociationArgs({
    this.labels,
    required this.location,
    required this.mirroringEndpointGroup,
    this.mirroringEndpointGroupAssociationId,
    required this.network,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    map['mirroringEndpointGroup'] = mirroringEndpointGroup;
    final mirroringEndpointGroupAssociationIdValue =
        mirroringEndpointGroupAssociationId;
    if (mirroringEndpointGroupAssociationIdValue != null) {
      map['mirroringEndpointGroupAssociationId'] =
          mirroringEndpointGroupAssociationIdValue;
    }
    map['network'] = network;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory MirroringEndpointGroupAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return MirroringEndpointGroupAssociationArgs(
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      mirroringEndpointGroup:
          pulumi.Input.asInput<String>(map['mirroringEndpointGroup']),
      mirroringEndpointGroupAssociationId: pulumi.Input.asOptionalInput<String>(
          map['mirroringEndpointGroupAssociationId']),
      network: pulumi.Input.asInput<String>(map['network']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
