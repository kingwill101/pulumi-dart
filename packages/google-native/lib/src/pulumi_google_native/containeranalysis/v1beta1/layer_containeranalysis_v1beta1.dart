// ignore_for_file: unused_element, unnecessary_cast

import 'layer_directive_containeranalysis_v1beta1.dart';

/// Layer holds metadata specific to a layer of a Docker image.
class LayerContaineranalysisV1beta1 {
  /// The recovered arguments to the Dockerfile directive.
  final String? arguments;

  /// The recovered Dockerfile directive used to construct this layer.
  final LayerDirectiveContaineranalysisV1beta1 directive;

  LayerContaineranalysisV1beta1({
    this.arguments,
    required this.directive,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final argumentsValue = arguments;
    if (argumentsValue != null) {
      map['arguments'] = argumentsValue;
    }
    map['directive'] = directive.value;
    return map;
  }

  factory LayerContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return LayerContaineranalysisV1beta1(
      arguments: map['arguments'] == null ? null : map['arguments'] as String,
      directive: LayerDirectiveContaineranalysisV1beta1.fromValue(
          map['directive'] as String),
    );
  }
}
