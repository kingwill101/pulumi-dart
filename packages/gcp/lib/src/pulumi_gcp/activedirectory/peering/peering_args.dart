// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Peering.
class PeeringArgs {
  /// The full names of the Google Compute Engine networks to which the instance is connected. Caller needs to make sure that CIDR subnets do not overlap between networks, else peering creation will fail.
  final pulumi.Input<String> authorizedNetwork;

  /// Full domain resource path for the Managed AD Domain involved in peering. The resource path should be in the form projects/{projectId}/locations/global/domains/{domainName}
  final pulumi.Input<String> domainResource;

  /// Resource labels that can contain user-provided metadata
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// (Required)
  final pulumi.Input<String> peeringId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The current state of this Peering.
  final pulumi.Input<String>? status;

  /// Additional information about the current status of this peering, if available.
  final pulumi.Input<String>? statusMessage;

  PeeringArgs({
    required this.authorizedNetwork,
    required this.domainResource,
    this.labels,
    required this.peeringId,
    this.project,
    this.status,
    this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizedNetwork'] = authorizedNetwork;
    map['domainResource'] = domainResource;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['peeringId'] = peeringId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final statusMessageValue = statusMessage;
    if (statusMessageValue != null) {
      map['statusMessage'] = statusMessageValue;
    }
    return map;
  }

  factory PeeringArgs.fromMap(Map<String, dynamic> map) {
    return PeeringArgs(
      authorizedNetwork: pulumi.Input.asInput<String>(map['authorizedNetwork']),
      domainResource: pulumi.Input.asInput<String>(map['domainResource']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      peeringId: pulumi.Input.asInput<String>(map['peeringId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      status: pulumi.Input.asOptionalInput<String>(map['status']),
      statusMessage: pulumi.Input.asOptionalInput<String>(map['statusMessage']),
    );
  }
}
