// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_discovery_config_action_export_data/prevention_discovery_config_action_export_data.dart';
import '../prevention_discovery_config_action_pub_sub_notification/prevention_discovery_config_action_pub_sub_notification.dart';
import '../prevention_discovery_config_action_tag_resources/prevention_discovery_config_action_tag_resources.dart';

class PreventionDiscoveryConfigAction {
  /// Export data profiles into a provided location
  /// Structure is documented below.
  final PreventionDiscoveryConfigActionExportData? exportData;

  /// Publish a message into the Pub/Sub topic.
  /// Structure is documented below.
  final PreventionDiscoveryConfigActionPubSubNotification? pubSubNotification;

  /// Publish a portion of each profile to Dataplex Universal Catalog with the aspect type Sensitive Data Protection Profile.
  final Map<String, dynamic>? publishToDataplexCatalog;

  /// Tag the profiled resources with the specified tag values.
  /// Structure is documented below.
  final PreventionDiscoveryConfigActionTagResources? tagResources;

  PreventionDiscoveryConfigAction({
    this.exportData,
    this.pubSubNotification,
    this.publishToDataplexCatalog,
    this.tagResources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exportDataValue = exportData;
    if (exportDataValue != null) {
      map['exportData'] = exportDataValue.toMap();
    }
    final pubSubNotificationValue = pubSubNotification;
    if (pubSubNotificationValue != null) {
      map['pubSubNotification'] = pubSubNotificationValue.toMap();
    }
    final publishToDataplexCatalogValue = publishToDataplexCatalog;
    if (publishToDataplexCatalogValue != null) {
      map['publishToDataplexCatalog'] = publishToDataplexCatalogValue;
    }
    final tagResourcesValue = tagResources;
    if (tagResourcesValue != null) {
      map['tagResources'] = tagResourcesValue.toMap();
    }
    return map;
  }

  factory PreventionDiscoveryConfigAction.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigAction(
      exportData: map['exportData'] == null
          ? null
          : PreventionDiscoveryConfigActionExportData.fromMap(
              (map['exportData'] as Map).cast<String, dynamic>()),
      pubSubNotification: map['pubSubNotification'] == null
          ? null
          : PreventionDiscoveryConfigActionPubSubNotification.fromMap(
              (map['pubSubNotification'] as Map).cast<String, dynamic>()),
      publishToDataplexCatalog: map['publishToDataplexCatalog'] == null
          ? null
          : (map['publishToDataplexCatalog'] as Map).cast<String, dynamic>(),
      tagResources: map['tagResources'] == null
          ? null
          : PreventionDiscoveryConfigActionTagResources.fromMap(
              (map['tagResources'] as Map).cast<String, dynamic>()),
    );
  }
}
