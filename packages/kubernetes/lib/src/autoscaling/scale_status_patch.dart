// ignore_for_file: unused_element, unnecessary_cast


/// ScaleStatus represents the current status of a scale subresource.
class ScaleStatusPatch {
  /// replicas is the actual number of observed instances of the scaled object.
  final int? replicas;
  /// selector is the label query over pods that should match the replicas count. This is same as the label selector but in the string format to avoid introspection by clients. The string will be in the same format as the query-param syntax. More info about label selectors: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  final String? selector;

  /// Creates a new [ScaleStatusPatch].
  /// [replicas] replicas is the actual number of observed instances of the scaled object.
  /// [selector] selector is the label query over pods that should match the replicas count. This is same as the label selector but in the string format to avoid introspection by clients. The string will be in the same format as the query-param syntax. More info about label selectors: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  ScaleStatusPatch({
    this.replicas,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': ?replicas,
      'selector': ?selector,
    };
  }

  factory ScaleStatusPatch.fromMap(Map<String, dynamic> map) {
    return ScaleStatusPatch(
      replicas: map['replicas'] == null ? null : map['replicas'] as int,
      selector: map['selector'] == null ? null : map['selector'] as String,
    );
  }
}

