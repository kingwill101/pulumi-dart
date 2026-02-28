// ignore_for_file: unused_element, unnecessary_cast


class GetDiscoveredWorkloadWorkloadReference {
  /// The underlying resource URI.
  final String uri;

  /// Creates a new [GetDiscoveredWorkloadWorkloadReference].
  /// [uri] The underlying resource URI.
  GetDiscoveredWorkloadWorkloadReference({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory GetDiscoveredWorkloadWorkloadReference.fromMap(Map<String, dynamic> map) {
    return GetDiscoveredWorkloadWorkloadReference(
      uri: map['uri'] as String,
    );
  }
}

