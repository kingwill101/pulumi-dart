// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for FirewallEndpointAssociation.
class FirewallEndpointAssociationArgs {
  /// Whether the association is disabled. True indicates that traffic will not be intercepted.
  /// > **Note:** The API will reject the request if this value is set to true when creating the resource,
  /// otherwise on an update the association can be disabled.
  final Input<bool>? disabled;

  /// The URL of the firewall endpoint that is being associated.
  final Input<String> firewallEndpoint;

  /// A map of key/value label pairs to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location (zone) of the firewall endpoint association.
  final Input<String> location;

  /// The name of the firewall endpoint association resource.
  final Input<String>? name;

  /// The URL of the network that is being associated.
  final Input<String> network;

  /// The name of the parent this firewall endpoint association belongs to.
  /// Format: projects/{project_id}.
  final Input<String>? parent;

  /// The URL of the TlsInspectionPolicy that is being associated.
  final Input<String>? tlsInspectionPolicy;

  FirewallEndpointAssociationArgs({
    this.disabled,
    required this.firewallEndpoint,
    this.labels,
    required this.location,
    this.name,
    required this.network,
    this.parent,
    this.tlsInspectionPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    map['firewallEndpoint'] = firewallEndpoint;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['network'] = network;
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    final tlsInspectionPolicyValue = tlsInspectionPolicy;
    if (tlsInspectionPolicyValue != null) {
      map['tlsInspectionPolicy'] = tlsInspectionPolicyValue;
    }
    return map;
  }

  factory FirewallEndpointAssociationArgs.fromMap(Map<String, dynamic> map) {
    return FirewallEndpointAssociationArgs(
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      firewallEndpoint: Input.asInput<String>(map['firewallEndpoint']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asInput<String>(map['network']),
      parent: Input.asOptionalInput<String>(map['parent']),
      tlsInspectionPolicy:
          Input.asOptionalInput<String>(map['tlsInspectionPolicy']),
    );
  }
}
