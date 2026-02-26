// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../destination_endpoint/destination_endpoint.dart';

/// The set of arguments for Destination.
class DestinationArgs {
  /// A description of this resource.
  final Input<String>? description;

  /// The list of DestinationEndpoint resources configured for the IP prefix.
  /// Structure is documented below.
  final Input<List<DestinationEndpoint>> endpoints;

  /// The IP prefix that represents your workload on another CSP.
  final Input<String> ipPrefix;

  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location of the destination.
  final Input<String> location;

  /// The multicloud data transfer config of the destination.
  final Input<String> multicloudDataTransferConfig;

  /// The name of the destination.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

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
    map['endpoints'] = Input.mapInputValue<List<DestinationEndpoint>,
            List<Map<String, dynamic>>>(
        endpoints,
        (value) => Input.encodeList<DestinationEndpoint, Map<String, dynamic>>(
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
      description: Input.asOptionalInput<String>(map['description']),
      endpoints: Input.asInput<List<DestinationEndpoint>>(map['endpoints']),
      ipPrefix: Input.asInput<String>(map['ipPrefix']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      multicloudDataTransferConfig:
          Input.asInput<String>(map['multicloudDataTransferConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
