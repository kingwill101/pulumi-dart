// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for MirroringEndpointGroupAssociation.
class MirroringEndpointGroupAssociationArgs {
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The cloud location of the association, currently restricted to <span pulumi-lang-nodejs="`global`" pulumi-lang-dotnet="`Global`" pulumi-lang-go="`global`" pulumi-lang-python="`global`" pulumi-lang-yaml="`global`" pulumi-lang-java="`global`">`global`</span>.
  final Input<String> location;

  /// The endpoint group that this association is connected to, for example:
  /// `projects/123456789/locations/global/mirroringEndpointGroups/my-eg`.
  /// See https://google.aip.dev/124.
  final Input<String> mirroringEndpointGroup;

  /// The ID to use for the new association, which will become the final
  /// component of the endpoint group's resource name. If not provided, the
  /// server will generate a unique ID.
  final Input<String>? mirroringEndpointGroupAssociationId;

  /// The VPC network that is associated. for example:
  /// `projects/123456789/global/networks/my-network`.
  /// See https://google.aip.dev/124.
  final Input<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

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
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      mirroringEndpointGroup:
          Input.asInput<String>(map['mirroringEndpointGroup']),
      mirroringEndpointGroupAssociationId: Input.asOptionalInput<String>(
          map['mirroringEndpointGroupAssociationId']),
      network: Input.asInput<String>(map['network']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
