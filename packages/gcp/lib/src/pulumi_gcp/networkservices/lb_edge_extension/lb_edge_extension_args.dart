// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../lb_edge_extension_extension_chain/lb_edge_extension_extension_chain.dart';

/// The set of arguments for LbEdgeExtension.
class LbEdgeExtensionArgs {
  /// A human-readable description of the resource.
  final Input<String>? description;

  /// A set of ordered extension chains that contain the match conditions and extensions to execute.
  /// Match conditions for each extension chain are evaluated in sequence for a given request.
  /// The first extension chain that has a condition that matches the request is executed.
  /// Any subsequent extension chains do not execute. Limited to 5 extension chains per resource.
  /// Structure is documented below.
  final Input<List<LbEdgeExtensionExtensionChain>> extensionChains;

  /// A list of references to the forwarding rules to which this service extension is attached.
  /// At least one forwarding rule is required. Only one LbEdgeExtension resource can be associated with a forwarding rule.
  final Input<List<String>> forwardingRules;

  /// Set of labels associated with the LbEdgeExtension resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// All forwarding rules referenced by this extension must share the same load balancing scheme.
  /// Possible values are: `EXTERNAL_MANAGED`.
  final Input<String> loadBalancingScheme;

  /// The location of the edge extension
  final Input<String> location;

  /// Name of the LbEdgeExtension resource in the following format: projects/{project}/locations/{location}/lbEdgeExtensions/{lbEdgeExtensions}
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  LbEdgeExtensionArgs({
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
    map['extensionChains'] = Input.mapInputValue<
            List<LbEdgeExtensionExtensionChain>, List<Map<String, dynamic>>>(
        extensionChains,
        (value) => Input.encodeList<LbEdgeExtensionExtensionChain,
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

  factory LbEdgeExtensionArgs.fromMap(Map<String, dynamic> map) {
    return LbEdgeExtensionArgs(
      description: Input.asOptionalInput<String>(map['description']),
      extensionChains: Input.asInput<List<LbEdgeExtensionExtensionChain>>(
          map['extensionChains']),
      forwardingRules: Input.asInput<List<String>>(map['forwardingRules']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      loadBalancingScheme: Input.asInput<String>(map['loadBalancingScheme']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
