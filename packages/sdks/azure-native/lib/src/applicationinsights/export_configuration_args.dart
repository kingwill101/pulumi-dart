// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_applicationinsights_export_configuration_args_doc}
/// The set of arguments for ExportConfiguration.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_export_configuration_args_doc}
class ExportConfigurationArgs {
  /// The name of destination storage account.
  final pulumi.Input<String>? destinationAccountId;

  /// The SAS URL for the destination storage container. It must grant write permission.
  final pulumi.Input<String>? destinationAddress;

  /// The location ID of the destination storage container.
  final pulumi.Input<String>? destinationStorageLocationId;

  /// The subscription ID of the destination storage container.
  final pulumi.Input<String>? destinationStorageSubscriptionId;

  /// The Continuous Export destination type. This has to be 'Blob'.
  final pulumi.Input<String>? destinationType;

  /// The Continuous Export configuration ID. This is unique within a Application Insights component.
  final pulumi.Input<String>? exportId;

  /// Set to 'true' to create a Continuous Export configuration as enabled, otherwise set it to 'false'.
  final pulumi.Input<String>? isEnabled;

  /// Deprecated
  final pulumi.Input<String>? notificationQueueEnabled;

  /// Deprecated
  final pulumi.Input<String>? notificationQueueUri;

  /// The document types to be exported, as comma separated values. Allowed values include 'Requests', 'Event', 'Exceptions', 'Metrics', 'PageViews', 'PageViewPerformance', 'Rdd', 'PerformanceCounters', 'Availability', 'Messages'.
  final pulumi.Input<String>? recordTypes;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the Application Insights component resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ExportConfigurationArgs].
  /// [destinationAccountId] The name of destination storage account.
  /// [destinationAddress] The SAS URL for the destination storage container. It must grant write permission.
  /// [destinationStorageLocationId] The location ID of the destination storage container.
  /// [destinationStorageSubscriptionId] The subscription ID of the destination storage container.
  /// [destinationType] The Continuous Export destination type. This has to be 'Blob'.
  /// [exportId] The Continuous Export configuration ID. This is unique within a Application Insights component.
  /// [isEnabled] Set to 'true' to create a Continuous Export configuration as enabled, otherwise set it to 'false'.
  /// [notificationQueueEnabled] Deprecated
  /// [notificationQueueUri] Deprecated
  /// [recordTypes] The document types to be exported, as comma separated values. Allowed values include 'Requests', 'Event', 'Exceptions', 'Metrics', 'PageViews', 'PageViewPerformance', 'Rdd', 'PerformanceCounters', 'Availability', 'Messages'.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the Application Insights component resource.
  ExportConfigurationArgs({
    this.destinationAccountId,
    this.destinationAddress,
    this.destinationStorageLocationId,
    this.destinationStorageSubscriptionId,
    this.destinationType,
    this.exportId,
    this.isEnabled,
    this.notificationQueueEnabled,
    this.notificationQueueUri,
    this.recordTypes,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationAccountId': ?destinationAccountId,
      'destinationAddress': ?destinationAddress,
      'destinationStorageLocationId': ?destinationStorageLocationId,
      'destinationStorageSubscriptionId': ?destinationStorageSubscriptionId,
      'destinationType': ?destinationType,
      'exportId': ?exportId,
      'isEnabled': ?isEnabled,
      'notificationQueueEnabled': ?notificationQueueEnabled,
      'notificationQueueUri': ?notificationQueueUri,
      'recordTypes': ?recordTypes,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ExportConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ExportConfigurationArgs(
      destinationAccountId: (() {
        final guardedValue = map['destinationAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationAddress: (() {
        final guardedValue = map['destinationAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationStorageLocationId: (() {
        final guardedValue = map['destinationStorageLocationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationStorageSubscriptionId: (() {
        final guardedValue = map['destinationStorageSubscriptionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationType: (() {
        final guardedValue = map['destinationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      exportId: (() {
        final guardedValue = map['exportId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isEnabled: (() {
        final guardedValue = map['isEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notificationQueueEnabled: (() {
        final guardedValue = map['notificationQueueEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notificationQueueUri: (() {
        final guardedValue = map['notificationQueueUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recordTypes: (() {
        final guardedValue = map['recordTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
