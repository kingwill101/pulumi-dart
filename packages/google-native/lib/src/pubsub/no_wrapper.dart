// ignore_for_file: unused_element, unnecessary_cast

/// Sets the `data` field as the HTTP body for delivery.
class NoWrapper {
  /// Optional. When true, writes the Pub/Sub message metadata to `x-goog-pubsub-:` headers of the HTTP request. Writes the Pub/Sub message attributes to `:` headers of the HTTP request.
  final bool? writeMetadata;

  /// Creates a new [NoWrapper].
  /// [writeMetadata] Optional. When true, writes the Pub/Sub message metadata to `x-goog-pubsub-:` headers of the HTTP request. Writes the Pub/Sub message attributes to `:` headers of the HTTP request.
  NoWrapper({
    this.writeMetadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final writeMetadataValue = writeMetadata;
    if (writeMetadataValue != null) {
      map['writeMetadata'] = writeMetadataValue;
    }
    return map;
  }

  factory NoWrapper.fromMap(Map<String, dynamic> map) {
    return NoWrapper(
      writeMetadata:
          map['writeMetadata'] == null ? null : map['writeMetadata'] as bool,
    );
  }
}
