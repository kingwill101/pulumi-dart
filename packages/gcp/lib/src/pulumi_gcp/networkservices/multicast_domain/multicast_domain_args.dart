// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../multicast_domain_connection_config/multicast_domain_connection_config.dart';

/// The set of arguments for MulticastDomain.
class MulticastDomainArgs {
  /// The resource name of the multicast admin VPC network.
  /// Use the following format:
  /// `projects/{project}/locations/global/networks/{network}`.
  final pulumi.Input<String> adminNetwork;

  /// VPC connectivity information.
  /// Structure is documented below.
  final pulumi.Input<MulticastDomainConnectionConfig> connectionConfig;

  /// An optional text description of the multicast domain.
  final pulumi.Input<String>? description;

  /// Labels as key-value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// The multicast domain group this domain should be associated with.
  /// Use the following format:
  /// `projects/{project}/locations/global/multicastDomainGroups/{multicast_domain_group}`.
  final pulumi.Input<String>? multicastDomainGroup;

  /// A unique name for the multicast domain.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final pulumi.Input<String> multicastDomainId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  MulticastDomainArgs({
    required this.adminNetwork,
    required this.connectionConfig,
    this.description,
    this.labels,
    required this.location,
    this.multicastDomainGroup,
    required this.multicastDomainId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['adminNetwork'] = adminNetwork;
    map['connectionConfig'] = pulumi.Input.mapInputValue<
        MulticastDomainConnectionConfig,
        Map<String, dynamic>>(connectionConfig, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final multicastDomainGroupValue = multicastDomainGroup;
    if (multicastDomainGroupValue != null) {
      map['multicastDomainGroup'] = multicastDomainGroupValue;
    }
    map['multicastDomainId'] = multicastDomainId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory MulticastDomainArgs.fromMap(Map<String, dynamic> map) {
    return MulticastDomainArgs(
      adminNetwork: pulumi.Input.asInput<String>(map['adminNetwork']),
      connectionConfig: pulumi.Input.asInput<MulticastDomainConnectionConfig>(
          map['connectionConfig']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      multicastDomainGroup:
          pulumi.Input.asOptionalInput<String>(map['multicastDomainGroup']),
      multicastDomainId: pulumi.Input.asInput<String>(map['multicastDomainId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
