// ignore_for_file: unused_element, unnecessary_cast

class GetDiscoveredWorkloadWorkloadReference {
  /// The underlying resource URI.
  final String uri;

  GetDiscoveredWorkloadWorkloadReference({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory GetDiscoveredWorkloadWorkloadReference.fromMap(
      Map<String, dynamic> map) {
    return GetDiscoveredWorkloadWorkloadReference(
      uri: map['uri'] as String,
    );
  }
}
