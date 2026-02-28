// ignore_for_file: unused_element, unnecessary_cast

class WorkloadWorkloadReference {
  /// (Output)
  /// Output only. The underlying compute resource uri.
  final String? uri;

  /// Creates a new [WorkloadWorkloadReference].
  /// [uri] (Output)
  WorkloadWorkloadReference({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory WorkloadWorkloadReference.fromMap(Map<String, dynamic> map) {
    return WorkloadWorkloadReference(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
