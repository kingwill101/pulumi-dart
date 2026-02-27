// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../connectivity_test_destination/connectivity_test_destination.dart';
import '../connectivity_test_source/connectivity_test_source.dart';

/// The set of arguments for ConnectivityTest.
class ConnectivityTestArgs {
  /// Whether the analysis should skip firewall checking. Default value is false.
  final pulumi.Input<bool>? bypassFirewallChecks;

  /// The user-supplied description of the Connectivity Test.
  /// Maximum of 512 characters.
  final pulumi.Input<String>? description;

  /// Required. Destination specification of the Connectivity Test.
  /// You can use a combination of destination IP address, URI of a supported
  /// endpoint, project ID, or VPC network to identify the destination location.
  /// Reachability analysis proceeds even if the destination location is
  /// ambiguous. However, the test result might include endpoints or use a
  /// destination that you don't intend to test.
  /// Structure is documented below.
  final pulumi.Input<ConnectivityTestDestination> destination;

  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Unique name for the connectivity test.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// IP Protocol of the test. When not provided, "TCP" is assumed.
  final pulumi.Input<String>? protocol;

  /// Other projects that may be relevant for reachability analysis.
  /// This is applicable to scenarios where a test can cross project
  /// boundaries.
  final pulumi.Input<List<String>>? relatedProjects;

  /// Whether run analysis for the return path from destination to source.
  /// Default value is false.
  final pulumi.Input<bool>? roundTrip;

  /// Required. Source specification of the Connectivity Test.
  /// You can use a combination of source IP address, URI of a supported
  /// endpoint, project ID, or VPC network to identify the source location.
  /// Reachability analysis might proceed even if the source location is
  /// ambiguous. However, the test result might include endpoints or use a source
  /// that you don't intend to test.
  /// Structure is documented below.
  final pulumi.Input<ConnectivityTestSource> source;

  ConnectivityTestArgs({
    this.bypassFirewallChecks,
    this.description,
    required this.destination,
    this.labels,
    this.name,
    this.project,
    this.protocol,
    this.relatedProjects,
    this.roundTrip,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bypassFirewallChecksValue = bypassFirewallChecks;
    if (bypassFirewallChecksValue != null) {
      map['bypassFirewallChecks'] = bypassFirewallChecksValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['destination'] = pulumi.Input.mapInputValue<ConnectivityTestDestination,
        Map<String, dynamic>>(destination, (value) => value.toMap());
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    final relatedProjectsValue = relatedProjects;
    if (relatedProjectsValue != null) {
      map['relatedProjects'] = relatedProjectsValue;
    }
    final roundTripValue = roundTrip;
    if (roundTripValue != null) {
      map['roundTrip'] = roundTripValue;
    }
    map['source'] = pulumi.Input.mapInputValue<ConnectivityTestSource,
        Map<String, dynamic>>(source, (value) => value.toMap());
    return map;
  }

  factory ConnectivityTestArgs.fromMap(Map<String, dynamic> map) {
    return ConnectivityTestArgs(
      bypassFirewallChecks:
          pulumi.Input.asOptionalInput<bool>(map['bypassFirewallChecks']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      destination:
          pulumi.Input.asInput<ConnectivityTestDestination>(map['destination']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      protocol: pulumi.Input.asOptionalInput<String>(map['protocol']),
      relatedProjects:
          pulumi.Input.asOptionalInput<List<String>>(map['relatedProjects']),
      roundTrip: pulumi.Input.asOptionalInput<bool>(map['roundTrip']),
      source: pulumi.Input.asInput<ConnectivityTestSource>(map['source']),
    );
  }
}
