// ignore_for_file: unused_element, unnecessary_cast

import 'layer_directive2.dart';

/// Layer holds metadata specific to a layer of a Docker image.
class Layer3 {
  /// The recovered arguments to the Dockerfile directive.
  final String? arguments;

  /// The recovered Dockerfile directive used to construct this layer.
  final LayerDirective2 directive;

  Layer3({
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

  factory Layer3.fromMap(Map<String, dynamic> map) {
    return Layer3(
      arguments: map['arguments'] == null ? null : map['arguments'] as String,
      directive: LayerDirective2.fromValue(map['directive'] as String),
    );
  }
}
