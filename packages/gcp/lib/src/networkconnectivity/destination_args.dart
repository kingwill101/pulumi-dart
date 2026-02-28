// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination_endpoint.dart';

/// {@template pulumi_networkconnectivity_destination_destination_args_doc}
/// The set of arguments for Destination.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_destination_destination_args_doc}
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

  /// Creates a new [DestinationArgs].
  /// [description] A description of this resource.
  /// [endpoints] The list of DestinationEndpoint resources configured for the IP prefix.
  /// [ipPrefix] The IP prefix that represents your workload on another CSP.
  /// [labels] User-defined labels.
  /// [location] The location of the destination.
  /// [multicloudDataTransferConfig] The multicloud data transfer config of the destination.
  /// [name] The name of the destination.
  /// [project] The ID of the project in which the resource belongs.
  DestinationArgs({
    String? description,
    required List<DestinationEndpoint> endpoints,
    required String ipPrefix,
    Map<String, String>? labels,
    required String location,
    required String multicloudDataTransferConfig,
    String? name,
    String? project,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        endpoints = pulumi.Input.asInput<List<DestinationEndpoint>>(endpoints),
        ipPrefix = pulumi.Input.asInput<String>(ipPrefix),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        multicloudDataTransferConfig =
            pulumi.Input.asInput<String>(multicloudDataTransferConfig),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      description:
          map['description'] == null ? null : map['description'] as String,
      endpoints: pulumi.Input.decodeList<DestinationEndpoint>(
          map['endpoints'],
          (value) => DestinationEndpoint.fromMap(
              (value as Map).cast<String, dynamic>())),
      ipPrefix: map['ipPrefix'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      multicloudDataTransferConfig:
          map['multicloudDataTransferConfig'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
