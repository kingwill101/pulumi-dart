// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_dns_threat_detector_dns_threat_detector_args_doc}
/// The set of arguments for DnsThreatDetector.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_dns_threat_detector_dns_threat_detector_args_doc}
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

  /// Creates a new [DnsThreatDetectorArgs].
  /// [excludedNetworks] List of networks that are excluded from detection. Format: projects/{project}/global/networks/{name}.
  /// [labels] Set of label tags associated with the DNS Threat Detector resource.
  /// [location] The location of the DNS Threat Detector. The only supported value is `global`.
  /// [name] Name of the DnsThreatDetector resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [threatDetectorProvider] DNS Threat Detection provider. The only supported value is `INFOBLOX`.
  DnsThreatDetectorArgs({
    List<String>? excludedNetworks,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
    String? threatDetectorProvider,
  })  : excludedNetworks =
            pulumi.Input.asOptionalInput<List<String>>(excludedNetworks),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        threatDetectorProvider =
            pulumi.Input.asOptionalInput<String>(threatDetectorProvider);

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
      excludedNetworks: map['excludedNetworks'] == null
          ? null
          : (map['excludedNetworks'] as List).cast<String>(),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      threatDetectorProvider: map['threatDetectorProvider'] == null
          ? null
          : map['threatDetectorProvider'] as String,
    );
  }
}
