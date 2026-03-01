// ignore_for_file: unused_element, unnecessary_cast

import 'node_selector_term_patch.dart';

/// An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).
class PreferredSchedulingTermPatch {
  /// A node selector term, associated with the corresponding weight.
  final NodeSelectorTermPatch? preference;
  /// Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.
  final int? weight;

  /// Creates a new [PreferredSchedulingTermPatch].
  /// [preference] A node selector term, associated with the corresponding weight.
  /// [weight] Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.
  PreferredSchedulingTermPatch({
    this.preference,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preference': ?preference == null ? null : preference!.toMap(),
      'weight': ?weight,
    };
  }

  factory PreferredSchedulingTermPatch.fromMap(Map<String, dynamic> map) {
    return PreferredSchedulingTermPatch(
      preference: map['preference'] == null ? null : NodeSelectorTermPatch.fromMap((map['preference'] as Map).cast<String, dynamic>()),
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

