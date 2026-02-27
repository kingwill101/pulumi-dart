// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../lb_traffic_extension_extension_chain/lb_traffic_extension_extension_chain.dart';

/// The set of arguments for LbTrafficExtension.
class LbTrafficExtensionArgs {
  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;

  /// A set of ordered extension chains that contain the match conditions and extensions to execute.
  /// Match conditions for each extension chain are evaluated in sequence for a given request.
  /// The first extension chain that has a condition that matches the request is executed.
  /// Any subsequent extension chains do not execute. Limited to 5 extension chains per resource.
  /// Further information can be found at https://cloud.google.com/service-extensions/docs/reference/rest/v1/ExtensionChain
  /// Structure is documented below.
  final pulumi.Input<List<LbTrafficExtensionExtensionChain>> extensionChains;

  /// A list of references to the forwarding rules to which this service extension is attached to.
  /// At least one forwarding rule is required. There can be only one LBTrafficExtension resource per forwarding rule.
  final pulumi.Input<List<String>> forwardingRules;

  /// Set of labels associated with the LbTrafficExtension resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// All backend services and forwarding rules referenced by this extension must share the same load balancing scheme.
  /// For more information, refer to [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service) and
  /// [Supported application load balancers](https://cloud.google.com/service-extensions/docs/callouts-overview#supported-lbs).
  /// Possible values are: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`.
  final pulumi.Input<String> loadBalancingScheme;

  /// The location of the traffic extension
  final pulumi.Input<String> location;

  /// Name of the LbTrafficExtension resource in the following format: projects/{project}/locations/{location}/lbTrafficExtensions/{lbTrafficExtension}.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  LbTrafficExtensionArgs({
    this.description,
    required this.extensionChains,
    required this.forwardingRules,
    this.labels,
    required this.loadBalancingScheme,
    required this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['extensionChains'] = pulumi.Input.mapInputValue<
            List<LbTrafficExtensionExtensionChain>, List<Map<String, dynamic>>>(
        extensionChains,
        (value) => pulumi.Input.encodeList<LbTrafficExtensionExtensionChain,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['forwardingRules'] = forwardingRules;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['loadBalancingScheme'] = loadBalancingScheme;
    map['location'] = location;
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

  factory LbTrafficExtensionArgs.fromMap(Map<String, dynamic> map) {
    return LbTrafficExtensionArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      extensionChains:
          pulumi.Input.asInput<List<LbTrafficExtensionExtensionChain>>(
              map['extensionChains']),
      forwardingRules:
          pulumi.Input.asInput<List<String>>(map['forwardingRules']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      loadBalancingScheme:
          pulumi.Input.asInput<String>(map['loadBalancingScheme']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
