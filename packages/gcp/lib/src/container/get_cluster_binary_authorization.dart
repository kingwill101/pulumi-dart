// ignore_for_file: unused_element, unnecessary_cast

class GetClusterBinaryAuthorization {
  /// Enable Binary Authorization for this cluster.
  final bool enabled;

  /// Mode of operation for Binary Authorization policy evaluation.
  final String evaluationMode;

  /// Creates a new [GetClusterBinaryAuthorization].
  /// [enabled] Enable Binary Authorization for this cluster.
  /// [evaluationMode] Mode of operation for Binary Authorization policy evaluation.
  GetClusterBinaryAuthorization({
    required this.enabled,
    required this.evaluationMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['evaluationMode'] = evaluationMode;
    return map;
  }

  factory GetClusterBinaryAuthorization.fromMap(Map<String, dynamic> map) {
    return GetClusterBinaryAuthorization(
      enabled: map['enabled'] as bool,
      evaluationMode: map['evaluationMode'] as String,
    );
  }
}
