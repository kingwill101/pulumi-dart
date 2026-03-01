// ignore_for_file: unused_element, unnecessary_cast


/// Managed application notification endpoint.
class ApplicationNotificationEndpoint {
  /// The managed application notification endpoint uri.
  final String uri;

  /// Creates a new [ApplicationNotificationEndpoint].
  /// [uri] The managed application notification endpoint uri.
  ApplicationNotificationEndpoint({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory ApplicationNotificationEndpoint.fromMap(Map<String, dynamic> map) {
    return ApplicationNotificationEndpoint(
      uri: map['uri'] as String,
    );
  }
}

