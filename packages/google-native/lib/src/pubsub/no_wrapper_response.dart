// ignore_for_file: unused_element, unnecessary_cast

/// Sets the `data` field as the HTTP body for delivery.
class NoWrapperResponse {
  /// Optional. When true, writes the Pub/Sub message metadata to `x-goog-pubsub-:` headers of the HTTP request. Writes the Pub/Sub message attributes to `:` headers of the HTTP request.
  final bool writeMetadata;

  /// Creates a new [NoWrapperResponse].
  /// [writeMetadata] Optional. When true, writes the Pub/Sub message metadata to `x-goog-pubsub-:` headers of the HTTP request. Writes the Pub/Sub message attributes to `:` headers of the HTTP request.
  NoWrapperResponse({
    required this.writeMetadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['writeMetadata'] = writeMetadata;
    return map;
  }

  factory NoWrapperResponse.fromMap(Map<String, dynamic> map) {
    return NoWrapperResponse(
      writeMetadata: map['writeMetadata'] as bool,
    );
  }
}
