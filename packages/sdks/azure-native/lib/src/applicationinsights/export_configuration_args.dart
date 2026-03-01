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
    pulumi.Output<String>? destinationAccountId,
    pulumi.Output<String>? destinationAddress,
    pulumi.Output<String>? destinationStorageLocationId,
    pulumi.Output<String>? destinationStorageSubscriptionId,
    pulumi.Output<String>? destinationType,
    pulumi.Output<String>? exportId,
    pulumi.Output<String>? isEnabled,
    pulumi.Output<String>? notificationQueueEnabled,
    pulumi.Output<String>? notificationQueueUri,
    pulumi.Output<String>? recordTypes,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      destinationAccountId = pulumi.Input.asOptionalInput<String>(destinationAccountId),
      destinationAddress = pulumi.Input.asOptionalInput<String>(destinationAddress),
      destinationStorageLocationId = pulumi.Input.asOptionalInput<String>(destinationStorageLocationId),
      destinationStorageSubscriptionId = pulumi.Input.asOptionalInput<String>(destinationStorageSubscriptionId),
      destinationType = pulumi.Input.asOptionalInput<String>(destinationType),
      exportId = pulumi.Input.asOptionalInput<String>(exportId),
      isEnabled = pulumi.Input.asOptionalInput<String>(isEnabled),
      notificationQueueEnabled = pulumi.Input.asOptionalInput<String>(notificationQueueEnabled),
      notificationQueueUri = pulumi.Input.asOptionalInput<String>(notificationQueueUri),
      recordTypes = pulumi.Input.asOptionalInput<String>(recordTypes),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

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
      destinationAccountId: map['destinationAccountId'] == null ? null : pulumi.Output.create<String>(map['destinationAccountId'] as String),
      destinationAddress: map['destinationAddress'] == null ? null : pulumi.Output.create<String>(map['destinationAddress'] as String),
      destinationStorageLocationId: map['destinationStorageLocationId'] == null ? null : pulumi.Output.create<String>(map['destinationStorageLocationId'] as String),
      destinationStorageSubscriptionId: map['destinationStorageSubscriptionId'] == null ? null : pulumi.Output.create<String>(map['destinationStorageSubscriptionId'] as String),
      destinationType: map['destinationType'] == null ? null : pulumi.Output.create<String>(map['destinationType'] as String),
      exportId: map['exportId'] == null ? null : pulumi.Output.create<String>(map['exportId'] as String),
      isEnabled: map['isEnabled'] == null ? null : pulumi.Output.create<String>(map['isEnabled'] as String),
      notificationQueueEnabled: map['notificationQueueEnabled'] == null ? null : pulumi.Output.create<String>(map['notificationQueueEnabled'] as String),
      notificationQueueUri: map['notificationQueueUri'] == null ? null : pulumi.Output.create<String>(map['notificationQueueUri'] as String),
      recordTypes: map['recordTypes'] == null ? null : pulumi.Output.create<String>(map['recordTypes'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

