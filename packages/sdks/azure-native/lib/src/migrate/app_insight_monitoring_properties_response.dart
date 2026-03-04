// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_store_details_response.dart';

/// Class for app insight monitoring properties.
class AppInsightMonitoringPropertiesResponse {
  /// Gets or sets the app insights name.
  final pulumi.Input<String>? appInsightsName;

  /// Gets or sets a value indicating whether monitoring is enabled.
  final pulumi.Input<bool>? isEnabled;

  /// Gets or sets the region.
  final pulumi.Input<String>? region;

  /// Gets or sets the resource group of the resource.
  final pulumi.Input<String>? resourceGroup;
  final pulumi.Input<SecretStoreDetailsResponse>? secretStoreDetails;

  /// Gets or sets the subscription id of the resource.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [AppInsightMonitoringPropertiesResponse].
  /// [appInsightsName] Gets or sets the app insights name.
  /// [isEnabled] Gets or sets a value indicating whether monitoring is enabled.
  /// [region] Gets or sets the region.
  /// [resourceGroup] Gets or sets the resource group of the resource.
  /// [secretStoreDetails] Optional.
  /// [subscriptionId] Gets or sets the subscription id of the resource.
  AppInsightMonitoringPropertiesResponse({
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
      'secretStoreDetails':
          ?pulumi.Input.mapOptionalInputValue<
            SecretStoreDetailsResponse,
            Map<String, dynamic>
          >(secretStoreDetails, (value) => value.toMap()),
      'subscriptionId': ?subscriptionId,
    };
  }

  factory AppInsightMonitoringPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppInsightMonitoringPropertiesResponse(
      appInsightsName: (() {
        final guardedValue = map['appInsightsName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isEnabled: (() {
        final guardedValue = map['isEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroup: (() {
        final guardedValue = map['resourceGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretStoreDetails: (() {
        final guardedValue = map['secretStoreDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecretStoreDetailsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      subscriptionId: (() {
        final guardedValue = map['subscriptionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
