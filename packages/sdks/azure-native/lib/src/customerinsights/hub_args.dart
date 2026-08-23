// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_billing_info_format.dart';

/// {@template pulumi_customerinsights_hub_args_doc}
/// The set of arguments for Hub.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_hub_args_doc}
class HubArgs {
  /// Billing settings of the hub.
  final pulumi.Input<HubBillingInfoFormat>? hubBillingInfo;
  /// The name of the Hub.
  final pulumi.Input<String>? hubName;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The bit flags for enabled hub features. Bit 0 is set to 1 indicates graph is enabled, or disabled if set to 0. Bit 1 is set to 1 indicates the hub is disabled, or enabled if set to 0.
  final pulumi.Input<int>? tenantFeatures;

  /// Creates a new [HubArgs].
  /// [hubBillingInfo] Billing settings of the hub.
  /// [hubName] The name of the Hub.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  /// [tenantFeatures] The bit flags for enabled hub features. Bit 0 is set to 1 indicates graph is enabled, or disabled if set to 0. Bit 1 is set to 1 indicates the hub is disabled, or enabled if set to 0.
  const HubArgs({
    this.hubBillingInfo,
    this.hubName,
    this.location,
    required this.resourceGroupName,
    this.tags,
    this.tenantFeatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubBillingInfo': ?pulumi.Input.mapOptionalInputValue<HubBillingInfoFormat, Map<String, dynamic>>(hubBillingInfo, (value) => value.toMap()),
      'hubName': ?hubName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'tenantFeatures': ?tenantFeatures,
    };
  }

  factory HubArgs.fromMap(Map<String, dynamic> map) {
    return HubArgs(
      hubBillingInfo: (() { final guardedValue = map['hubBillingInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HubBillingInfoFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hubName: (() { final guardedValue = map['hubName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenantFeatures: (() { final guardedValue = map['tenantFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
