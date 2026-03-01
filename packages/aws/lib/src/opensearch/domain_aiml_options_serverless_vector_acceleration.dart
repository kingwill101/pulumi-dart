// ignore_for_file: unused_element, unnecessary_cast

class DomainAimlOptionsServerlessVectorAcceleration {
  /// Enables GPU-accelerated vector search for improved performance on vector workloads.
  final bool? enabled;

  /// Creates a new [DomainAimlOptionsServerlessVectorAcceleration].
  /// [enabled] Enables GPU-accelerated vector search for improved performance on vector workloads.
  DomainAimlOptionsServerlessVectorAcceleration({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory DomainAimlOptionsServerlessVectorAcceleration.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainAimlOptionsServerlessVectorAcceleration(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
