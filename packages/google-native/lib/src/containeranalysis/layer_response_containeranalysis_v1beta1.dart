// ignore_for_file: unused_element, unnecessary_cast

/// Layer holds metadata specific to a layer of a Docker image.
class LayerResponseContaineranalysisV1beta1 {
  /// The recovered arguments to the Dockerfile directive.
  final String arguments;

  /// The recovered Dockerfile directive used to construct this layer.
  final String directive;

  /// Creates a new [LayerResponseContaineranalysisV1beta1].
  /// [arguments] The recovered arguments to the Dockerfile directive.
  /// [directive] The recovered Dockerfile directive used to construct this layer.
  LayerResponseContaineranalysisV1beta1({
    required this.arguments,
    required this.directive,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arguments'] = arguments;
    map['directive'] = directive;
    return map;
  }

  factory LayerResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return LayerResponseContaineranalysisV1beta1(
      arguments: map['arguments'] as String,
      directive: map['directive'] as String,
    );
  }
}
