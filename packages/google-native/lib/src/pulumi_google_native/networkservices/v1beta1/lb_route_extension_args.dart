// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_chain.dart';
import 'lb_route_extension_load_balancing_scheme.dart';

/// The set of arguments for LbRouteExtension.
class LbRouteExtensionArgs {
  /// Optional. A human-readable description of the resource.
  final pulumi.Input<String>? description;

  /// A set of ordered extension chains that contain the match conditions and extensions to execute. Match conditions for each extension chain are evaluated in sequence for a given request. The first extension chain that has a condition that matches the request is executed. Any subsequent extension chains do not execute. Limited to 5 extension chains per resource.
  final pulumi.Input<List<ExtensionChain>> extensionChains;

  /// A list of references to the forwarding rules to which this service extension is attached to. At least one forwarding rule is required. There can be only one `LbRouteExtension` resource per forwarding rule.
  final pulumi.Input<List<String>> forwardingRules;

  /// Optional. Set of labels associated with the `LbRouteExtension` resource. The format must comply with [the following requirements](/compute/docs/labeling-resources#requirements).
  final pulumi.Input<Map<String, String>>? labels;

  /// Required. User-provided ID of the `LbRouteExtension` resource to be created.
  final pulumi.Input<String> lbRouteExtensionId;

  /// All backend services and forwarding rules referenced by this extension must share the same load balancing scheme. Supported values: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`. For more information, refer to [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service).
  final pulumi.Input<LbRouteExtensionLoadBalancingScheme> loadBalancingScheme;
  final pulumi.Input<String>? location;

  /// Name of the `LbRouteExtension` resource in the following format: `projects/{project}/locations/{location}/lbRouteExtensions/{lb_route_extension}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server can ignore the request if it has already been completed. The server guarantees that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, ignores the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  LbRouteExtensionArgs({
    this.description,
    required this.extensionChains,
    required this.forwardingRules,
    this.labels,
    required this.lbRouteExtensionId,
    required this.loadBalancingScheme,
    this.location,
    this.name,
    this.project,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['extensionChains'] = pulumi.Input.mapInputValue<List<ExtensionChain>,
            List<Map<String, dynamic>>>(
        extensionChains,
        (value) =>
            pulumi.Input.encodeList<ExtensionChain, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['forwardingRules'] = forwardingRules;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['lbRouteExtensionId'] = lbRouteExtensionId;
    map['loadBalancingScheme'] =
        pulumi.Input.mapInputValue<LbRouteExtensionLoadBalancingScheme, String>(
            loadBalancingScheme, (value) => value.value);
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
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory LbRouteExtensionArgs.fromMap(Map<String, dynamic> map) {
    return LbRouteExtensionArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      extensionChains:
          pulumi.Input.asInput<List<ExtensionChain>>(map['extensionChains']),
      forwardingRules:
          pulumi.Input.asInput<List<String>>(map['forwardingRules']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      lbRouteExtensionId:
          pulumi.Input.asInput<String>(map['lbRouteExtensionId']),
      loadBalancingScheme:
          pulumi.Input.asInput<LbRouteExtensionLoadBalancingScheme>(
              map['loadBalancingScheme']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
