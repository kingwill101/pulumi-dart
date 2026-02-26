// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for MulticastGroupProducerActivation.
class MulticastGroupProducerActivationArgs {
  /// An optional text description of the multicast group producer activation.
  final Input<String>? description;

  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// A unique name for the multicast group producer activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final Input<String> multicastGroupProducerActivationId;

  /// The resource name of the multicast group range activationcreated by the
  /// admin in the same zone as this multicast group producer activation. Use the
  /// following format:
  /// // `projects/*/locations/*/multicastGroupRangeActivations/*`.
  final Input<String> multicastGroupRangeActivation;

  /// The resource name of the multicast producer association that is in the
  /// same zone as this multicast group producer activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastProducerAssociations/*`.
  final Input<String> multicastProducerAssociation;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

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
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      multicastGroupProducerActivationId:
          Input.asInput<String>(map['multicastGroupProducerActivationId']),
      multicastGroupRangeActivation:
          Input.asInput<String>(map['multicastGroupRangeActivation']),
      multicastProducerAssociation:
          Input.asInput<String>(map['multicastProducerAssociation']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
