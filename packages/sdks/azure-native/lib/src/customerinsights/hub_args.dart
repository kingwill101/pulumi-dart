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
  HubArgs({
    pulumi.Output<HubBillingInfoFormat>? hubBillingInfo,
    pulumi.Output<String>? hubName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? tenantFeatures,
  }) :
      hubBillingInfo = pulumi.Input.asOptionalInput<HubBillingInfoFormat>(hubBillingInfo),
      hubName = pulumi.Input.asOptionalInput<String>(hubName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tenantFeatures = pulumi.Input.asOptionalInput<int>(tenantFeatures);

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
      hubBillingInfo: map['hubBillingInfo'] == null ? null : pulumi.Output.create<HubBillingInfoFormat>(HubBillingInfoFormat.fromMap((map['hubBillingInfo'] as Map).cast<String, dynamic>())),
      hubName: map['hubName'] == null ? null : pulumi.Output.create<String>(map['hubName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tenantFeatures: map['tenantFeatures'] == null ? null : pulumi.Output.create<int>(map['tenantFeatures'] as int),
    );
  }
}

