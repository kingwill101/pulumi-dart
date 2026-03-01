// ignore_for_file: unused_element, unnecessary_cast

import 'secret_store_details.dart';

/// Class for app insight monitoring properties.
class AppInsightMonitoringProperties {
  /// Gets or sets the app insights name.
  final String? appInsightsName;
  /// Gets or sets a value indicating whether monitoring is enabled.
  final bool? isEnabled;
  /// Gets or sets the region.
  final String? region;
  /// Gets or sets the resource group of the resource.
  final String? resourceGroup;
  final SecretStoreDetails? secretStoreDetails;
  /// Gets or sets the subscription id of the resource.
  final String? subscriptionId;

  /// Creates a new [AppInsightMonitoringProperties].
  /// [appInsightsName] Gets or sets the app insights name.
  /// [isEnabled] Gets or sets a value indicating whether monitoring is enabled.
  /// [region] Gets or sets the region.
  /// [resourceGroup] Gets or sets the resource group of the resource.
  /// [secretStoreDetails] Optional.
  /// [subscriptionId] Gets or sets the subscription id of the resource.
  AppInsightMonitoringProperties({
    this.appInsightsName,
    this.isEnabled,
    this.region,
    this.resourceGroup,
    this.secretStoreDetails,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appInsightsName': ?appInsightsName,
      'isEnabled': ?isEnabled,
      'region': ?region,
      'resourceGroup': ?resourceGroup,
      'secretStoreDetails': ?secretStoreDetails == null ? null : secretStoreDetails!.toMap(),
      'subscriptionId': ?subscriptionId,
    };
  }

  factory AppInsightMonitoringProperties.fromMap(Map<String, dynamic> map) {
    return AppInsightMonitoringProperties(
      appInsightsName: map['appInsightsName'] == null ? null : map['appInsightsName'] as String,
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      resourceGroup: map['resourceGroup'] == null ? null : map['resourceGroup'] as String,
      secretStoreDetails: map['secretStoreDetails'] == null ? null : SecretStoreDetails.fromMap((map['secretStoreDetails'] as Map).cast<String, dynamic>()),
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
    );
  }
}

