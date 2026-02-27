// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DnsThreatDetector.
class DnsThreatDetectorArgs {
  /// List of networks that are excluded from detection. Format: projects/{project}/global/networks/{name}.
  final pulumi.Input<List<String>>? excludedNetworks;

  /// Set of label tags associated with the DNS Threat Detector resource.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the DNS Threat Detector. The only supported value is `global`.
  final pulumi.Input<String>? location;

  /// Name of the DnsThreatDetector resource.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// DNS Threat Detection provider. The only supported value is `INFOBLOX`.
  final pulumi.Input<String>? threatDetectorProvider;

  DnsThreatDetectorArgs({
    this.excludedNetworks,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.threatDetectorProvider,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final excludedNetworksValue = excludedNetworks;
    if (excludedNetworksValue != null) {
      map['excludedNetworks'] = excludedNetworksValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final threatDetectorProviderValue = threatDetectorProvider;
    if (threatDetectorProviderValue != null) {
      map['threatDetectorProvider'] = threatDetectorProviderValue;
    }
    return map;
  }

  factory DnsThreatDetectorArgs.fromMap(Map<String, dynamic> map) {
    return DnsThreatDetectorArgs(
      excludedNetworks:
          pulumi.Input.asOptionalInput<List<String>>(map['excludedNetworks']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      threatDetectorProvider:
          pulumi.Input.asOptionalInput<String>(map['threatDetectorProvider']),
    );
  }
}
