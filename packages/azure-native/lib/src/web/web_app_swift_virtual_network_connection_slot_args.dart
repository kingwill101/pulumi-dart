// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_swift_virtual_network_connection_slot_args_doc}
/// The set of arguments for WebAppSwiftVirtualNetworkConnectionSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_swift_virtual_network_connection_slot_args_doc}
class WebAppSwiftVirtualNetworkConnectionSlotArgs {
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. If a slot is not specified, the API will add or update connections for the production slot.
  final pulumi.Input<String> slot;
  /// The Virtual Network subnet's resource ID. This is the subnet that this Web App will join. This subnet must have a delegation to Microsoft.Web/serverFarms defined first.
  final pulumi.Input<String>? subnetResourceId;
  /// A flag that specifies if the scale unit this Web App is on supports Swift integration.
  final pulumi.Input<bool>? swiftSupported;

  /// Creates a new [WebAppSwiftVirtualNetworkConnectionSlotArgs].
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will add or update connections for the production slot.
  /// [subnetResourceId] The Virtual Network subnet's resource ID. This is the subnet that this Web App will join. This subnet must have a delegation to Microsoft.Web/serverFarms defined first.
  /// [swiftSupported] A flag that specifies if the scale unit this Web App is on supports Swift integration.
  WebAppSwiftVirtualNetworkConnectionSlotArgs({
    String? kind,
    required String name,
    required String resourceGroupName,
    required String slot,
    String? subnetResourceId,
    bool? swiftSupported,
  }) :
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      slot = pulumi.Input.asInput<String>(slot),
      subnetResourceId = pulumi.Input.asOptionalInput<String>(subnetResourceId),
      swiftSupported = pulumi.Input.asOptionalInput<bool>(swiftSupported);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
      'subnetResourceId': ?subnetResourceId,
      'swiftSupported': ?swiftSupported,
    };
  }

  factory WebAppSwiftVirtualNetworkConnectionSlotArgs.fromMap(Map<String, dynamic> map) {
    return WebAppSwiftVirtualNetworkConnectionSlotArgs(
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      slot: map['slot'] as String,
      subnetResourceId: map['subnetResourceId'] == null ? null : map['subnetResourceId'] as String,
      swiftSupported: map['swiftSupported'] == null ? null : map['swiftSupported'] as bool,
    );
  }
}

