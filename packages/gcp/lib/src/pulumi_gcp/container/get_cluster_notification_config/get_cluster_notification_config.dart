// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cluster_notification_config_pubsub/get_cluster_notification_config_pubsub.dart';

class GetClusterNotificationConfig {
  /// Notification config for Cloud Pub/Sub
  final List<GetClusterNotificationConfigPubsub> pubsubs;

  GetClusterNotificationConfig({
    required this.pubsubs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pubsubs'] = pulumi.Input.encodeList<GetClusterNotificationConfigPubsub,
        Map<String, dynamic>>(pubsubs, (value) => value.toMap());
    return map;
  }

  factory GetClusterNotificationConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNotificationConfig(
      pubsubs: pulumi.Input.decodeList<GetClusterNotificationConfigPubsub>(
          map['pubsubs'],
          (value) => GetClusterNotificationConfigPubsub.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
