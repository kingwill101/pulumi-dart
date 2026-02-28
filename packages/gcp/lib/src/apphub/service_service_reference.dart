// ignore_for_file: unused_element, unnecessary_cast

class ServiceServiceReference {
  /// (Output)
  /// Output only. The underlying resource URI (For example, URI of Forwarding Rule, URL Map,
  /// and Backend Service).
  final String? uri;

  /// Creates a new [ServiceServiceReference].
  /// [uri] (Output)
  ServiceServiceReference({
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

  factory ServiceServiceReference.fromMap(Map<String, dynamic> map) {
    return ServiceServiceReference(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
