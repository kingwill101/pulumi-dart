import 'package:pulumi/pulumi.dart';
import '../connectivity_test_destination/connectivity_test_destination.dart';
import '../connectivity_test_source/connectivity_test_source.dart';
import 'connectivity_test_args.dart';

/// A connectivity test are a static analysis of your resource configurations
/// that enables you to evaluate connectivity to and from Google Cloud
/// resources in your Virtual Private Cloud (VPC) network.
///
///
/// To get more information about ConnectivityTest, see:
///
/// * [API documentation](https://cloud.google.com/network-intelligence-center/docs/connectivity-tests/reference/networkmanagement/rest/v1/projects.locations.global.connectivityTests)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/network-intelligence-center/docs)
///
/// ## Example Usage
///
/// ### Network Management Connectivity Test Instances
///
///
///
/// ### Network Management Connectivity Test Addresses
///
///
///
/// ### Network Management Connectivity Test Endpoints
///
///
///
///
/// ## Import
///
/// ConnectivityTest can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/connectivityTests/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ConnectivityTest can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkmanagement/connectivityTest:ConnectivityTest default projects/{{project}}/locations/global/connectivityTests/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkmanagement/connectivityTest:ConnectivityTest default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkmanagement/connectivityTest:ConnectivityTest default {{name}}
/// ```
class ConnectivityTest extends CustomResource {
  /// Whether the analysis should skip firewall checking. Default value is false.
  late final Output<bool?> bypassFirewallChecks;

  /// The user-supplied description of the Connectivity Test.
  /// Maximum of 512 characters.
  late final Output<String?> description;

  /// Required. Destination specification of the Connectivity Test.
  /// You can use a combination of destination IP address, URI of a supported
  /// endpoint, project ID, or VPC network to identify the destination location.
  /// Reachability analysis proceeds even if the destination location is
  /// ambiguous. However, the test result might include endpoints or use a
  /// destination that you don't intend to test.
  /// Structure is documented below.
  late final Output<ConnectivityTestDestination> destination;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Unique name for the connectivity test.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// IP Protocol of the test. When not provided, "TCP" is assumed.
  late final Output<String?> protocol;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Other projects that may be relevant for reachability analysis.
  /// This is applicable to scenarios where a test can cross project
  /// boundaries.
  late final Output<List<String>?> relatedProjects;

  /// Whether run analysis for the return path from destination to source.
  /// Default value is false.
  late final Output<bool?> roundTrip;

  /// Required. Source specification of the Connectivity Test.
  /// You can use a combination of source IP address, URI of a supported
  /// endpoint, project ID, or VPC network to identify the source location.
  /// Reachability analysis might proceed even if the source location is
  /// ambiguous. However, the test result might include endpoints or use a source
  /// that you don't intend to test.
  /// Structure is documented below.
  late final Output<ConnectivityTestSource> source;

  ConnectivityTest(
    String name, {
    ConnectivityTestArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networkmanagement/connectivityTest:ConnectivityTest',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bypassFirewallChecks = registerOutput<bool?>('bypassFirewallChecks');
    this.description = registerOutput<String?>('description');
    this.destination =
        registerOutput<ConnectivityTestDestination>('destination');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.protocol = registerOutput<String?>('protocol');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.relatedProjects = registerOutput<List<String>?>('relatedProjects');
    this.roundTrip = registerOutput<bool?>('roundTrip');
    this.source = registerOutput<ConnectivityTestSource>('source');
  }
}
