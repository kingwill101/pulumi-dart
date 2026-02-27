// ignore_for_file: unused_element, unnecessary_cast

import 'layer_directive.dart';

/// Layer holds metadata specific to a layer of a Docker image.
class LayerContaineranalysisV1alpha1 {
  /// The recovered arguments to the Dockerfile directive.
  final String? arguments;

  /// The recovered Dockerfile directive used to construct this layer.
  final LayerDirective? directive;

  LayerContaineranalysisV1alpha1({
    this.arguments,
    this.directive,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final argumentsValue = arguments;
    if (argumentsValue != null) {
      map['arguments'] = argumentsValue;
    }
    final directiveValue = directive;
    if (directiveValue != null) {
      map['directive'] = directiveValue.value;
    }
    return map;
  }

  factory LayerContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return LayerContaineranalysisV1alpha1(
      arguments: map['arguments'] == null ? null : map['arguments'] as String,
      directive: map['directive'] == null
          ? null
          : LayerDirective.fromValue(map['directive'] as String),
    );
  }
}
