// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for MulticastProducerAssociation.
class MulticastProducerAssociationArgs {
  /// An optional text description of the multicast producer association.
  final pulumi.Input<String>? description;

  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// The resource name of the multicast domain activation that is in the
  /// same zone as this multicast producer association.
  /// Use the following format:
  /// // `projects/*/locations/*/multicastDomainActivations/*`.
  final pulumi.Input<String> multicastDomainActivation;

  /// A unique name for the multicast producer association.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final pulumi.Input<String> multicastProducerAssociationId;

  /// The resource name of the multicast producer VPC network.
  /// Use following format:
  /// `projects/{project}/locations/global/networks/{network}`.
  final pulumi.Input<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  MulticastProducerAssociationArgs({
    this.description,
    this.labels,
    required this.location,
    required this.multicastDomainActivation,
    required this.multicastProducerAssociationId,
    required this.network,
    this.project,
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
    map['multicastDomainActivation'] = multicastDomainActivation;
    map['multicastProducerAssociationId'] = multicastProducerAssociationId;
    map['network'] = network;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory MulticastProducerAssociationArgs.fromMap(Map<String, dynamic> map) {
    return MulticastProducerAssociationArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      multicastDomainActivation:
          pulumi.Input.asInput<String>(map['multicastDomainActivation']),
      multicastProducerAssociationId:
          pulumi.Input.asInput<String>(map['multicastProducerAssociationId']),
      network: pulumi.Input.asInput<String>(map['network']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
