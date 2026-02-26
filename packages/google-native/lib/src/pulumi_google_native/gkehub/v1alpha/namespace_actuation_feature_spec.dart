// ignore_for_file: unused_element, unnecessary_cast

import 'namespace_actuation_feature_spec_actuation_mode.dart';

/// An empty spec for actuation feature. This is required since Feature proto requires a spec.
class NamespaceActuationFeatureSpec {
  /// actuation_mode controls the behavior of the controller
  final NamespaceActuationFeatureSpecActuationMode? actuationMode;

  NamespaceActuationFeatureSpec({
    this.actuationMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actuationModeValue = actuationMode;
    if (actuationModeValue != null) {
      map['actuationMode'] = actuationModeValue.value;
    }
    return map;
  }

  factory NamespaceActuationFeatureSpec.fromMap(Map<String, dynamic> map) {
    return NamespaceActuationFeatureSpec(
      actuationMode: map['actuationMode'] == null
          ? null
          : NamespaceActuationFeatureSpecActuationMode.fromValue(
              map['actuationMode'] as String),
    );
  }
}
