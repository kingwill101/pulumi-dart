// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for MulticastGroupProducerActivation.
class MulticastGroupProducerActivationArgs {
  /// An optional text description of the multicast group producer activation.
  final pulumi.Input<String>? description;

  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// A unique name for the multicast group producer activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final pulumi.Input<String> multicastGroupProducerActivationId;

  /// The resource name of the multicast group range activationcreated by the
  /// admin in the same zone as this multicast group producer activation. Use the
  /// following format:
  /// // `projects/*/locations/*/multicastGroupRangeActivations/*`.
  final pulumi.Input<String> multicastGroupRangeActivation;

  /// The resource name of the multicast producer association that is in the
  /// same zone as this multicast group producer activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastProducerAssociations/*`.
  final pulumi.Input<String> multicastProducerAssociation;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  MulticastGroupProducerActivationArgs({
    this.description,
    this.labels,
    required this.location,
    required this.multicastGroupProducerActivationId,
    required this.multicastGroupRangeActivation,
    required this.multicastProducerAssociation,
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
    map['multicastGroupProducerActivationId'] =
        multicastGroupProducerActivationId;
    map['multicastGroupRangeActivation'] = multicastGroupRangeActivation;
    map['multicastProducerAssociation'] = multicastProducerAssociation;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory MulticastGroupProducerActivationArgs.fromMap(
      Map<String, dynamic> map) {
    return MulticastGroupProducerActivationArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      multicastGroupProducerActivationId: pulumi.Input.asInput<String>(
          map['multicastGroupProducerActivationId']),
      multicastGroupRangeActivation:
          pulumi.Input.asInput<String>(map['multicastGroupRangeActivation']),
      multicastProducerAssociation:
          pulumi.Input.asInput<String>(map['multicastProducerAssociation']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
