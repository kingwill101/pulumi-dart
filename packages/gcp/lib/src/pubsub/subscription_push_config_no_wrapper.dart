// ignore_for_file: unused_element, unnecessary_cast


class SubscriptionPushConfigNoWrapper {
  /// When true, writes the Pub/Sub message metadata to
  /// `x-goog-pubsub-<KEY>:<VAL>` headers of the HTTP request. Writes the
  /// Pub/Sub message attributes to `<KEY>:<VAL>` headers of the HTTP request.
  final bool writeMetadata;

  /// Creates a new [SubscriptionPushConfigNoWrapper].
  /// [writeMetadata] When true, writes the Pub/Sub message metadata to
  SubscriptionPushConfigNoWrapper({
    required this.writeMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'writeMetadata': writeMetadata,
    };
  }

  factory SubscriptionPushConfigNoWrapper.fromMap(Map<String, dynamic> map) {
    return SubscriptionPushConfigNoWrapper(
      writeMetadata: map['writeMetadata'] as bool,
    );
  }
}

