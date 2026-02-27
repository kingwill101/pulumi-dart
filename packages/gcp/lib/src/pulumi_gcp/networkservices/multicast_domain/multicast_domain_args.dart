// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../multicast_domain_connection_config/multicast_domain_connection_config.dart';

/// The set of arguments for MulticastDomain.
class MulticastDomainArgs {
  /// The resource name of the multicast admin VPC network.
  /// Use the following format:
  /// `projects/{project}/locations/global/networks/{network}`.
  final Input<String> adminNetwork;

  /// VPC connectivity information.
  /// Structure is documented below.
  final Input<MulticastDomainConnectionConfig> connectionConfig;

  /// An optional text description of the multicast domain.
  final Input<String>? description;

  /// Labels as key-value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// The multicast domain group this domain should be associated with.
  /// Use the following format:
  /// `projects/{project}/locations/global/multicastDomainGroups/{multicast_domain_group}`.
  final Input<String>? multicastDomainGroup;

  /// A unique name for the multicast domain.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final Input<String> multicastDomainId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

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
    map['connectionConfig'] = Input.mapInputValue<
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
      adminNetwork: Input.asInput<String>(map['adminNetwork']),
      connectionConfig: Input.asInput<MulticastDomainConnectionConfig>(
          map['connectionConfig']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      multicastDomainGroup:
          Input.asOptionalInput<String>(map['multicastDomainGroup']),
      multicastDomainId: Input.asInput<String>(map['multicastDomainId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
