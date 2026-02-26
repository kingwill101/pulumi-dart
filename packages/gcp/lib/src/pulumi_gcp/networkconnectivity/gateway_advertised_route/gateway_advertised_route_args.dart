// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for GatewayAdvertisedRoute.
class GatewayAdvertisedRouteArgs {
  /// An optional description of the gateway advertised route.
  final Input<String>? description;

  /// This route's advertised IP address range. Must be a valid CIDR-formatted prefix.
  /// If an IP address is provided without a subnet mask, it is interpreted as, for IPv4, a /32 singular IP address range, and, for IPv6, /128
  final Input<String>? ipRange;

  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location for the resource
  final Input<String> location;

  /// The name of the gateway advertised route. Route names must be unique.
  final Input<String>? name;

  /// The priority of this advertised route. You can choose a value from 0 to 65335.
  /// If you don't provide a value, Google Cloud assigns a priority of 100 to the ranges.
  final Input<int>? priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// the recipient of this advertised route
  /// Possible values are: `RECIPIENT_UNSPECIFIED`, `ADVERTISE_TO_HUB`.
  final Input<String>? recipient;

  /// The name of the spoke
  final Input<String> spoke;

  GatewayAdvertisedRouteArgs({
    this.description,
    this.ipRange,
    this.labels,
    required this.location,
    this.name,
    this.priority,
    this.project,
    this.recipient,
    required this.spoke,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final ipRangeValue = ipRange;
    if (ipRangeValue != null) {
      map['ipRange'] = ipRangeValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final recipientValue = recipient;
    if (recipientValue != null) {
      map['recipient'] = recipientValue;
    }
    map['spoke'] = spoke;
    return map;
  }

  factory GatewayAdvertisedRouteArgs.fromMap(Map<String, dynamic> map) {
    return GatewayAdvertisedRouteArgs(
      description: Input.asOptionalInput<String>(map['description']),
      ipRange: Input.asOptionalInput<String>(map['ipRange']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      priority: Input.asOptionalInput<int>(map['priority']),
      project: Input.asOptionalInput<String>(map['project']),
      recipient: Input.asOptionalInput<String>(map['recipient']),
      spoke: Input.asInput<String>(map['spoke']),
    );
  }
}
