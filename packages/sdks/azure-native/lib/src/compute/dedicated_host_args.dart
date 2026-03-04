// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_host_license_types.dart';
import 'sku.dart';

/// {@template pulumi_compute_dedicated_host_args_doc}
/// The set of arguments for DedicatedHost.
/// {@endtemplate}
/// {@macro pulumi_compute_dedicated_host_args_doc}
class DedicatedHostArgs {
  /// Specifies whether the dedicated host should be replaced automatically in case of a failure. The value is defaulted to 'true' when not provided.
  final pulumi.Input<bool>? autoReplaceOnFailure;

  /// The name of the dedicated host group.
  final pulumi.Input<String> hostGroupName;

  /// The name of the dedicated host.
  final pulumi.Input<String>? hostName;

  /// Specifies the software license type that will be applied to the VMs deployed on the dedicated host. Possible values are: **None,** **Windows_Server_Hybrid,** **Windows_Server_Perpetual.** The default value is: **None.**
  final pulumi.Input<DedicatedHostLicenseTypes>? licenseType;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// Fault domain of the dedicated host within a dedicated host group.
  final pulumi.Input<int>? platformFaultDomain;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// SKU of the dedicated host for Hardware Generation and VM family. Only name is required to be set. List Microsoft.Compute SKUs for a list of possible values.
  final pulumi.Input<Sku> sku;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DedicatedHostArgs].
  /// [autoReplaceOnFailure] Specifies whether the dedicated host should be replaced automatically in case of a failure. The value is defaulted to 'true' when not provided.
  /// [hostGroupName] The name of the dedicated host group.
  /// [hostName] The name of the dedicated host.
  /// [licenseType] Specifies the software license type that will be applied to the VMs deployed on the dedicated host. Possible values are: **None,** **Windows_Server_Hybrid,** **Windows_Server_Perpetual.** The default value is: **None.**
  /// [location] The geo-location where the resource lives
  /// [platformFaultDomain] Fault domain of the dedicated host within a dedicated host group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] SKU of the dedicated host for Hardware Generation and VM family. Only name is required to be set. List Microsoft.Compute SKUs for a list of possible values.
  /// [tags] Resource tags.
  DedicatedHostArgs({
    this.autoReplaceOnFailure,
    required this.hostGroupName,
    this.hostName,
    this.licenseType,
    this.location,
    this.platformFaultDomain,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoReplaceOnFailure': ?autoReplaceOnFailure,
      'hostGroupName': hostGroupName,
      'hostName': ?hostName,
      'licenseType':
          ?pulumi.Input.mapOptionalInputValue<
            DedicatedHostLicenseTypes,
            String
          >(licenseType, (value) => value.wireValue),
      'location': ?location,
      'platformFaultDomain': ?platformFaultDomain,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(
        sku,
        (value) => value.toMap(),
      ),
      'tags': ?tags,
    };
  }

  factory DedicatedHostArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedHostArgs(
      autoReplaceOnFailure: (() {
        final guardedValue = map['autoReplaceOnFailure'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      hostGroupName: pulumi.Input.fromValue(map['hostGroupName'] as String),
      hostName: (() {
        final guardedValue = map['hostName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      licenseType: (() {
        final guardedValue = map['licenseType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DedicatedHostLicenseTypes.fromValue(guardedValue as String),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      platformFaultDomain: (() {
        final guardedValue = map['platformFaultDomain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sku: pulumi.Input.fromValue(
        Sku.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
