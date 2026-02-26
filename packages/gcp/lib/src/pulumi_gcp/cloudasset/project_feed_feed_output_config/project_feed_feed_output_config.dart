// ignore_for_file: unused_element, unnecessary_cast

import '../project_feed_feed_output_config_pubsub_destination/project_feed_feed_output_config_pubsub_destination.dart';

class ProjectFeedFeedOutputConfig {
  /// Destination on Cloud Pubsub.
  /// Structure is documented below.
  final ProjectFeedFeedOutputConfigPubsubDestination pubsubDestination;

  ProjectFeedFeedOutputConfig({
    required this.pubsubDestination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pubsubDestination'] = pubsubDestination.toMap();
    return map;
  }

  factory ProjectFeedFeedOutputConfig.fromMap(Map<String, dynamic> map) {
    return ProjectFeedFeedOutputConfig(
      pubsubDestination: ProjectFeedFeedOutputConfigPubsubDestination.fromMap(
          (map['pubsubDestination'] as Map).cast<String, dynamic>()),
    );
  }
}
