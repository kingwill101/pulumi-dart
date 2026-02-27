// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../destination_endpoint/destination_endpoint.dart';

/// The set of arguments for Destination.
class DestinationArgs {
  /// A description of this resource.
  final pulumi.Input<String>? description;

  /// The list of DestinationEndpoint resources configured for the IP prefix.
  /// Structure is documented below.
  final pulumi.Input<List<DestinationEndpoint>> endpoints;

  /// The IP prefix that represents your workload on another CSP.
  final pulumi.Input<String> ipPrefix;

  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the destination.
  final pulumi.Input<String> location;

  /// The multicloud data transfer config of the destination.
  final pulumi.Input<String> multicloudDataTransferConfig;

  /// The name of the destination.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  DestinationArgs({
    this.description,
    required this.endpoints,
    required this.ipPrefix,
    this.labels,
    required this.location,
    required this.multicloudDataTransferConfig,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['endpoints'] = pulumi.Input.mapInputValue<List<DestinationEndpoint>,
            List<Map<String, dynamic>>>(
        endpoints,
        (value) =>
            pulumi.Input.encodeList<DestinationEndpoint, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['ipPrefix'] = ipPrefix;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    map['multicloudDataTransferConfig'] = multicloudDataTransferConfig;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory DestinationArgs.fromMap(Map<String, dynamic> map) {
    return DestinationArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      endpoints:
          pulumi.Input.asInput<List<DestinationEndpoint>>(map['endpoints']),
      ipPrefix: pulumi.Input.asInput<String>(map['ipPrefix']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      multicloudDataTransferConfig:
          pulumi.Input.asInput<String>(map['multicloudDataTransferConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
