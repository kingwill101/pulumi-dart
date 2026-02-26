// ignore_for_file: unused_element, unnecessary_cast

/// Layer holds metadata specific to a layer of a Docker image.
class LayerResponse3 {
  /// The recovered arguments to the Dockerfile directive.
  final String arguments;

  /// The recovered Dockerfile directive used to construct this layer.
  final String directive;

  LayerResponse3({
    required this.arguments,
    required this.directive,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arguments'] = arguments;
    map['directive'] = directive;
    return map;
  }

  factory LayerResponse3.fromMap(Map<String, dynamic> map) {
    return LayerResponse3(
      arguments: map['arguments'] as String,
      directive: map['directive'] as String,
    );
  }
}
