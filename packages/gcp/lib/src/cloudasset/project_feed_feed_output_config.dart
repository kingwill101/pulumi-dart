// ignore_for_file: unused_element, unnecessary_cast

import 'project_feed_feed_output_config_pubsub_destination.dart';

class ProjectFeedFeedOutputConfig {
  /// Destination on Cloud Pubsub.
  /// Structure is documented below.
  final ProjectFeedFeedOutputConfigPubsubDestination pubsubDestination;

  /// Creates a new [ProjectFeedFeedOutputConfig].
  /// [pubsubDestination] Destination on Cloud Pubsub.
  ProjectFeedFeedOutputConfig({required this.pubsubDestination});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pubsubDestination': pubsubDestination.toMap()};
  }

  factory ProjectFeedFeedOutputConfig.fromMap(Map<String, dynamic> map) {
    return ProjectFeedFeedOutputConfig(
      pubsubDestination: ProjectFeedFeedOutputConfigPubsubDestination.fromMap(
        (map['pubsubDestination'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
