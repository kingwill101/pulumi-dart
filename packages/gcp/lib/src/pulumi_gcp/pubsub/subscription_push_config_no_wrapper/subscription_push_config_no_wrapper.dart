// ignore_for_file: unused_element, unnecessary_cast

class SubscriptionPushConfigNoWrapper {
  /// When true, writes the Pub/Sub message metadata to
  /// `x-goog-pubsub-<KEY>:<VAL>` headers of the HTTP request. Writes the
  /// Pub/Sub message attributes to `<KEY>:<VAL>` headers of the HTTP request.
  final bool writeMetadata;

  SubscriptionPushConfigNoWrapper({
    required this.writeMetadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['writeMetadata'] = writeMetadata;
    return map;
  }

  factory SubscriptionPushConfigNoWrapper.fromMap(Map<String, dynamic> map) {
    return SubscriptionPushConfigNoWrapper(
      writeMetadata: map['writeMetadata'] as bool,
    );
  }
}
