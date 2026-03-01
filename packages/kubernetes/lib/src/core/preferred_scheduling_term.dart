// ignore_for_file: unused_element, unnecessary_cast

import 'node_selector_term.dart';

/// An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).
class PreferredSchedulingTerm {
  /// A node selector term, associated with the corresponding weight.
  final NodeSelectorTerm preference;
  /// Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.
  final int weight;

  /// Creates a new [PreferredSchedulingTerm].
  /// [preference] A node selector term, associated with the corresponding weight.
  /// [weight] Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.
  PreferredSchedulingTerm({
    required this.preference,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preference': preference.toMap(),
      'weight': weight,
    };
  }

  factory PreferredSchedulingTerm.fromMap(Map<String, dynamic> map) {
    return PreferredSchedulingTerm(
      preference: NodeSelectorTerm.fromMap((map['preference'] as Map).cast<String, dynamic>()),
      weight: map['weight'] as int,
    );
  }
}

