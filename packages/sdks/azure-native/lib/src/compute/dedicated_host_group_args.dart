// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_host_group_properties_additional_capabilities.dart';

/// {@template pulumi_compute_dedicated_host_group_args_doc}
/// The set of arguments for DedicatedHostGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_dedicated_host_group_args_doc}
class DedicatedHostGroupArgs {
  /// Enables or disables a capability on the dedicated host group. Minimum api-version: 2022-03-01.
  final pulumi.Input<DedicatedHostGroupPropertiesAdditionalCapabilities>? additionalCapabilities;
  /// The name of the dedicated host group.
  final pulumi.Input<String>? hostGroupName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Number of fault domains that the host group can span.
  final pulumi.Input<int> platformFaultDomainCount;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies whether virtual machines or virtual machine scale sets can be placed automatically on the dedicated host group. Automatic placement means resources are allocated on dedicated hosts, that are chosen by Azure, under the dedicated host group. The value is defaulted to 'false' when not provided. Minimum api-version: 2020-06-01.
  final pulumi.Input<bool>? supportAutomaticPlacement;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The availability zones.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [DedicatedHostGroupArgs].
  /// [additionalCapabilities] Enables or disables a capability on the dedicated host group. Minimum api-version: 2022-03-01.
  /// [hostGroupName] The name of the dedicated host group.
  /// [location] The geo-location where the resource lives
  /// [platformFaultDomainCount] Number of fault domains that the host group can span.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [supportAutomaticPlacement] Specifies whether virtual machines or virtual machine scale sets can be placed automatically on the dedicated host group. Automatic placement means resources are allocated on dedicated hosts, that are chosen by Azure, under the dedicated host group. The value is defaulted to 'false' when not provided. Minimum api-version: 2020-06-01.
  /// [tags] Resource tags.
  /// [zones] The availability zones.
  DedicatedHostGroupArgs({
    this.additionalCapabilities,
    this.hostGroupName,
    this.location,
    required this.platformFaultDomainCount,
    required this.resourceGroupName,
    this.supportAutomaticPlacement,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities': ?pulumi.Input.mapOptionalInputValue<DedicatedHostGroupPropertiesAdditionalCapabilities, Map<String, dynamic>>(additionalCapabilities, (value) => value.toMap()),
      'hostGroupName': ?hostGroupName,
      'location': ?location,
      'platformFaultDomainCount': platformFaultDomainCount,
      'resourceGroupName': resourceGroupName,
      'supportAutomaticPlacement': ?supportAutomaticPlacement,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory DedicatedHostGroupArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedHostGroupArgs(
      additionalCapabilities: (() { final guardedValue = map['additionalCapabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DedicatedHostGroupPropertiesAdditionalCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostGroupName: (() { final guardedValue = map['hostGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platformFaultDomainCount: pulumi.Input.fromValue(map['platformFaultDomainCount'] as int),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      supportAutomaticPlacement: (() { final guardedValue = map['supportAutomaticPlacement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

