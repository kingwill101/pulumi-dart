// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connectivity_tests_connectivity_test_destination.dart';
import 'get_connectivity_tests_connectivity_test_source.dart';

class GetConnectivityTestsConnectivityTest {
  /// Whether the analysis should skip firewall checking.
  final bool bypassFirewallChecks;

  /// The user-supplied description of the Connectivity Test.
  final String description;

  /// Destination specification of the Connectivity Test.
  /// Structure is documented below.
  final List<GetConnectivityTestsConnectivityTestDestination> destinations;
  final Map<String, String> effectiveLabels;

  /// Resource labels to represent user-provided metadata.
  final Map<String, String> labels;

  /// Unique name for the connectivity test.
  final String name;

  /// The ID of the project.
  final String project;

  /// IP Protocol of the test.
  final String protocol;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final Map<String, String> pulumiLabels;

  /// Other projects that may be relevant for reachability analysis.
  final List<String> relatedProjects;

  /// Whether run analysis for the return path from destination to source.
  final bool roundTrip;

  /// Source specification of the Connectivity Test.
  /// Structure is documented below.
  final List<GetConnectivityTestsConnectivityTestSource> sources;

  /// Creates a new [GetConnectivityTestsConnectivityTest].
  /// [bypassFirewallChecks] Whether the analysis should skip firewall checking.
  /// [description] The user-supplied description of the Connectivity Test.
  /// [destinations] Destination specification of the Connectivity Test.
  /// [effectiveLabels] Required.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [name] Unique name for the connectivity test.
  /// [project] The ID of the project.
  /// [protocol] IP Protocol of the test.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [relatedProjects] Other projects that may be relevant for reachability analysis.
  /// [roundTrip] Whether run analysis for the return path from destination to source.
  /// [sources] Source specification of the Connectivity Test.
  GetConnectivityTestsConnectivityTest({
    required this.bypassFirewallChecks,
    required this.description,
    required this.destinations,
    required this.effectiveLabels,
    required this.labels,
    required this.name,
    required this.project,
    required this.protocol,
    required this.pulumiLabels,
    required this.relatedProjects,
    required this.roundTrip,
    required this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypassFirewallChecks': bypassFirewallChecks,
      'description': description,
      'destinations':
          pulumi.Input.encodeList<
            GetConnectivityTestsConnectivityTestDestination,
            Map<String, dynamic>
          >(destinations, (value) => value.toMap()),
      'effectiveLabels': effectiveLabels,
      'labels': labels,
      'name': name,
      'project': project,
      'protocol': protocol,
      'pulumiLabels': pulumiLabels,
      'relatedProjects': relatedProjects,
      'roundTrip': roundTrip,
      'sources':
          pulumi.Input.encodeList<
            GetConnectivityTestsConnectivityTestSource,
            Map<String, dynamic>
          >(sources, (value) => value.toMap()),
    };
  }

  factory GetConnectivityTestsConnectivityTest.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetConnectivityTestsConnectivityTest(
      bypassFirewallChecks: map['bypassFirewallChecks'] as bool,
      description: map['description'] as String,
      destinations:
          pulumi.Input.decodeList<
            GetConnectivityTestsConnectivityTestDestination
          >(
            map['destinations'],
            (value) => GetConnectivityTestsConnectivityTestDestination.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      project: map['project'] as String,
      protocol: map['protocol'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      relatedProjects: (map['relatedProjects'] as List).cast<String>(),
      roundTrip: map['roundTrip'] as bool,
      sources:
          pulumi.Input.decodeList<GetConnectivityTestsConnectivityTestSource>(
            map['sources'],
            (value) => GetConnectivityTestsConnectivityTestSource.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
