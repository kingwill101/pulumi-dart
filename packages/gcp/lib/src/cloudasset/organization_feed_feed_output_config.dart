// ignore_for_file: unused_element, unnecessary_cast

import 'organization_feed_feed_output_config_pubsub_destination.dart';

class OrganizationFeedFeedOutputConfig {
  /// Destination on Cloud Pubsub.
  /// Structure is documented below.
  final OrganizationFeedFeedOutputConfigPubsubDestination pubsubDestination;

  /// Creates a new [OrganizationFeedFeedOutputConfig].
  /// [pubsubDestination] Destination on Cloud Pubsub.
  OrganizationFeedFeedOutputConfig({required this.pubsubDestination});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pubsubDestination': pubsubDestination.toMap()};
  }

  factory OrganizationFeedFeedOutputConfig.fromMap(Map<String, dynamic> map) {
    return OrganizationFeedFeedOutputConfig(
      pubsubDestination:
          OrganizationFeedFeedOutputConfigPubsubDestination.fromMap(
            (map['pubsubDestination'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
