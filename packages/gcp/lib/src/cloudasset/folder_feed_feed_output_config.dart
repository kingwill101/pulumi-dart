// ignore_for_file: unused_element, unnecessary_cast

import 'folder_feed_feed_output_config_pubsub_destination.dart';

class FolderFeedFeedOutputConfig {
  /// Destination on Cloud Pubsub.
  /// Structure is documented below.
  final FolderFeedFeedOutputConfigPubsubDestination pubsubDestination;

  /// Creates a new [FolderFeedFeedOutputConfig].
  /// [pubsubDestination] Destination on Cloud Pubsub.
  FolderFeedFeedOutputConfig({required this.pubsubDestination});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pubsubDestination': pubsubDestination.toMap()};
  }

  factory FolderFeedFeedOutputConfig.fromMap(Map<String, dynamic> map) {
    return FolderFeedFeedOutputConfig(
      pubsubDestination: FolderFeedFeedOutputConfigPubsubDestination.fromMap(
        (map['pubsubDestination'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
