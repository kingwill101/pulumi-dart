// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_discovery_config_action_export_data.dart';
import 'prevention_discovery_config_action_pub_sub_notification.dart';
import 'prevention_discovery_config_action_tag_resources.dart';

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

  /// Creates a new [PreventionDiscoveryConfigAction].
  /// [exportData] Export data profiles into a provided location
  /// [pubSubNotification] Publish a message into the Pub/Sub topic.
  /// [publishToDataplexCatalog] Publish a portion of each profile to Dataplex Universal Catalog with the aspect type Sensitive Data Protection Profile.
  /// [tagResources] Tag the profiled resources with the specified tag values.
  PreventionDiscoveryConfigAction({
    this.exportData,
    this.pubSubNotification,
    this.publishToDataplexCatalog,
    this.tagResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportData': ?exportData == null ? null : exportData!.toMap(),
      'pubSubNotification': ?pubSubNotification == null ? null : pubSubNotification!.toMap(),
      'publishToDataplexCatalog': ?publishToDataplexCatalog,
      'tagResources': ?tagResources == null ? null : tagResources!.toMap(),
    };
  }

  factory PreventionDiscoveryConfigAction.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigAction(
      exportData: map['exportData'] == null ? null : PreventionDiscoveryConfigActionExportData.fromMap((map['exportData'] as Map).cast<String, dynamic>()),
      pubSubNotification: map['pubSubNotification'] == null ? null : PreventionDiscoveryConfigActionPubSubNotification.fromMap((map['pubSubNotification'] as Map).cast<String, dynamic>()),
      publishToDataplexCatalog: map['publishToDataplexCatalog'] == null ? null : (map['publishToDataplexCatalog'] as Map).cast<String, dynamic>(),
      tagResources: map['tagResources'] == null ? null : PreventionDiscoveryConfigActionTagResources.fromMap((map['tagResources'] as Map).cast<String, dynamic>()),
    );
  }
}

