// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for MirroringEndpointGroup.
class MirroringEndpointGroupArgs {
  /// User-provided description of the endpoint group.
  /// Used as additional context for the endpoint group.
  final Input<String>? description;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The cloud location of the endpoint group, currently restricted to <span pulumi-lang-nodejs="`global`" pulumi-lang-dotnet="`Global`" pulumi-lang-go="`global`" pulumi-lang-python="`global`" pulumi-lang-yaml="`global`" pulumi-lang-java="`global`">`global`</span>.
  final Input<String> location;

  /// The deployment group that this DIRECT endpoint group is connected to, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  final Input<String>? mirroringDeploymentGroup;

  /// A list of the deployment groups that this BROKER endpoint group is
  /// connected to, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  final Input<List<String>>? mirroringDeploymentGroups;

  /// The ID to use for the endpoint group, which will become the final component
  /// of the endpoint group's resource name.
  final Input<String> mirroringEndpointGroupId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The type of the endpoint group.
  /// If left unspecified, defaults to DIRECT.
  /// Possible values:
  /// DIRECT
  /// BROKER
  final Input<String>? type;

  MirroringEndpointGroupArgs({
    this.description,
    this.labels,
    required this.location,
    this.mirroringDeploymentGroup,
    this.mirroringDeploymentGroups,
    required this.mirroringEndpointGroupId,
    this.project,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final mirroringDeploymentGroupValue = mirroringDeploymentGroup;
    if (mirroringDeploymentGroupValue != null) {
      map['mirroringDeploymentGroup'] = mirroringDeploymentGroupValue;
    }
    final mirroringDeploymentGroupsValue = mirroringDeploymentGroups;
    if (mirroringDeploymentGroupsValue != null) {
      map['mirroringDeploymentGroups'] = mirroringDeploymentGroupsValue;
    }
    map['mirroringEndpointGroupId'] = mirroringEndpointGroupId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory MirroringEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return MirroringEndpointGroupArgs(
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      mirroringDeploymentGroup:
          Input.asOptionalInput<String>(map['mirroringDeploymentGroup']),
      mirroringDeploymentGroups:
          Input.asOptionalInput<List<String>>(map['mirroringDeploymentGroups']),
      mirroringEndpointGroupId:
          Input.asInput<String>(map['mirroringEndpointGroupId']),
      project: Input.asOptionalInput<String>(map['project']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
