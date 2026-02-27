// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for InterceptEndpointGroupAssociation.
class InterceptEndpointGroupAssociationArgs {
  /// The endpoint group that this association is connected to, for example:
  /// `projects/123456789/locations/global/interceptEndpointGroups/my-eg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> interceptEndpointGroup;

  /// The ID to use for the new association, which will become the final
  /// component of the endpoint group's resource name. If not provided, the
  /// server will generate a unique ID.
  final pulumi.Input<String>? interceptEndpointGroupAssociationId;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The cloud location of the association, currently restricted to `global`.
  final pulumi.Input<String> location;

  /// The VPC network that is associated. for example:
  /// `projects/123456789/global/networks/my-network`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  InterceptEndpointGroupAssociationArgs({
    required this.interceptEndpointGroup,
    this.interceptEndpointGroupAssociationId,
    this.labels,
    required this.location,
    required this.network,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['interceptEndpointGroup'] = interceptEndpointGroup;
    final interceptEndpointGroupAssociationIdValue =
        interceptEndpointGroupAssociationId;
    if (interceptEndpointGroupAssociationIdValue != null) {
      map['interceptEndpointGroupAssociationId'] =
          interceptEndpointGroupAssociationIdValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    map['network'] = network;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory InterceptEndpointGroupAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return InterceptEndpointGroupAssociationArgs(
      interceptEndpointGroup:
          pulumi.Input.asInput<String>(map['interceptEndpointGroup']),
      interceptEndpointGroupAssociationId: pulumi.Input.asOptionalInput<String>(
          map['interceptEndpointGroupAssociationId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      network: pulumi.Input.asInput<String>(map['network']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
