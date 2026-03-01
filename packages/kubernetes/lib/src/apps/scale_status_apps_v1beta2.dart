// ignore_for_file: unused_element, unnecessary_cast


/// ScaleStatus represents the current status of a scale subresource.
class ScaleStatusAppsV1beta2 {
  /// actual number of observed instances of the scaled object.
  final int replicas;
  /// label query over pods that should match the replicas count. More info: http://kubernetes.io/docs/user-guide/labels#label-selectors
  final Map<String, String>? selector;
  /// label selector for pods that should match the replicas count. This is a serializated version of both map-based and more expressive set-based selectors. This is done to avoid introspection in the clients. The string will be in the same format as the query-param syntax. If the target type only supports map-based selectors, both this field and map-based selector field are populated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  final String? targetSelector;

  /// Creates a new [ScaleStatusAppsV1beta2].
  /// [replicas] actual number of observed instances of the scaled object.
  /// [selector] label query over pods that should match the replicas count. More info: http://kubernetes.io/docs/user-guide/labels#label-selectors
  /// [targetSelector] label selector for pods that should match the replicas count. This is a serializated version of both map-based and more expressive set-based selectors. This is done to avoid introspection in the clients. The string will be in the same format as the query-param syntax. If the target type only supports map-based selectors, both this field and map-based selector field are populated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  ScaleStatusAppsV1beta2({
    required this.replicas,
    this.selector,
    this.targetSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': replicas,
      'selector': ?selector,
      'targetSelector': ?targetSelector,
    };
  }

  factory ScaleStatusAppsV1beta2.fromMap(Map<String, dynamic> map) {
    return ScaleStatusAppsV1beta2(
      replicas: map['replicas'] as int,
      selector: map['selector'] == null ? null : (map['selector'] as Map).cast<String, String>(),
      targetSelector: map['targetSelector'] == null ? null : map['targetSelector'] as String,
    );
  }
}

