// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Peering.
class PeeringArgs {
  /// The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. Caller needs to make sure that CIDR subnets do not overlap between networks, else peering creation will fail.
  final Input<String> authorizedNetwork;

  /// Full domain resource path for the Managed AD Domain involved in peering. The resource path should be in the form: `projects/{project_id}/locations/global/domains/{domain_name}`
  final Input<String> domainResource;

  /// Optional. Resource labels to represent user-provided metadata.
  final Input<Map<String, String>>? labels;

  /// Required. Peering Id, unique name to identify peering. It should follow the regex format "^(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?)$"
  final Input<String> peeringId;
  final Input<String>? project;

  PeeringArgs({
    required this.authorizedNetwork,
    required this.domainResource,
    this.labels,
    required this.peeringId,
    this.project,
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
    return map;
  }

  factory PeeringArgs.fromMap(Map<String, dynamic> map) {
    return PeeringArgs(
      authorizedNetwork: Input.asInput<String>(map['authorizedNetwork']),
      domainResource: Input.asInput<String>(map['domainResource']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      peeringId: Input.asInput<String>(map['peeringId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
