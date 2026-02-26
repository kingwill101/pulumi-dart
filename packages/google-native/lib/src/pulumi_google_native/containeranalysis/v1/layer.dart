// ignore_for_file: unused_element, unnecessary_cast

/// Layer holds metadata specific to a layer of a Docker image.
class Layer {
  /// The recovered arguments to the Dockerfile directive.
  final String? arguments;

  /// The recovered Dockerfile directive used to construct this layer. See https://docs.docker.com/engine/reference/builder/ for more information.
  final String directive;

  Layer({
    this.arguments,
    required this.directive,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final argumentsValue = arguments;
    if (argumentsValue != null) {
      map['arguments'] = argumentsValue;
    }
    map['directive'] = directive;
    return map;
  }

  factory Layer.fromMap(Map<String, dynamic> map) {
    return Layer(
      arguments: map['arguments'] == null ? null : map['arguments'] as String,
      directive: map['directive'] as String,
    );
  }
}
