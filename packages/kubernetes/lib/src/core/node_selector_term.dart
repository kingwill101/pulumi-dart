// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_selector_requirement.dart';

/// A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.
class NodeSelectorTerm {
  /// A list of node selector requirements by node's labels.
  final List<NodeSelectorRequirement>? matchExpressions;
  /// A list of node selector requirements by node's fields.
  final List<NodeSelectorRequirement>? matchFields;

  /// Creates a new [NodeSelectorTerm].
  /// [matchExpressions] A list of node selector requirements by node's labels.
  /// [matchFields] A list of node selector requirements by node's fields.
  NodeSelectorTerm({
    this.matchExpressions,
    this.matchFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchExpressions': ?matchExpressions == null ? null : pulumi.Input.encodeList<NodeSelectorRequirement, Map<String, dynamic>>(matchExpressions!, (value) => value.toMap()),
      'matchFields': ?matchFields == null ? null : pulumi.Input.encodeList<NodeSelectorRequirement, Map<String, dynamic>>(matchFields!, (value) => value.toMap()),
    };
  }

  factory NodeSelectorTerm.fromMap(Map<String, dynamic> map) {
    return NodeSelectorTerm(
      matchExpressions: map['matchExpressions'] == null ? null : pulumi.Input.decodeList<NodeSelectorRequirement>(map['matchExpressions'], (value) => NodeSelectorRequirement.fromMap((value as Map).cast<String, dynamic>())),
      matchFields: map['matchFields'] == null ? null : pulumi.Input.decodeList<NodeSelectorRequirement>(map['matchFields'], (value) => NodeSelectorRequirement.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

