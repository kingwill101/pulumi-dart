// ignore_for_file: unused_element, unnecessary_cast

import 'pubsub_destination.dart';

/// Output configuration for asset feed destination.
class FeedOutputConfig {
  /// Destination on Pub/Sub.
  final PubsubDestination? pubsubDestination;

  /// Creates a new [FeedOutputConfig].
  /// [pubsubDestination] Destination on Pub/Sub.
  FeedOutputConfig({
    this.pubsubDestination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pubsubDestinationValue = pubsubDestination;
    if (pubsubDestinationValue != null) {
      map['pubsubDestination'] = pubsubDestinationValue.toMap();
    }
    return map;
  }

  factory FeedOutputConfig.fromMap(Map<String, dynamic> map) {
    return FeedOutputConfig(
      pubsubDestination: map['pubsubDestination'] == null
          ? null
          : PubsubDestination.fromMap(
              (map['pubsubDestination'] as Map).cast<String, dynamic>()),
    );
  }
}
