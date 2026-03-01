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
    bool? autoReplaceOnFailure,
    required String hostGroupName,
    String? hostName,
    DedicatedHostLicenseTypes? licenseType,
    String? location,
    int? platformFaultDomain,
    required String resourceGroupName,
    required Sku sku,
    Map<String, String>? tags,
  }) :
      autoReplaceOnFailure = pulumi.Input.asOptionalInput<bool>(autoReplaceOnFailure),
      hostGroupName = pulumi.Input.asInput<String>(hostGroupName),
      hostName = pulumi.Input.asOptionalInput<String>(hostName),
      licenseType = pulumi.Input.asOptionalInput<DedicatedHostLicenseTypes>(licenseType),
      location = pulumi.Input.asOptionalInput<String>(location),
      platformFaultDomain = pulumi.Input.asOptionalInput<int>(platformFaultDomain),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoReplaceOnFailure': ?autoReplaceOnFailure,
      'hostGroupName': hostGroupName,
      'hostName': ?hostName,
      'licenseType': ?pulumi.Input.mapOptionalInputValue<DedicatedHostLicenseTypes, String>(licenseType, (value) => value.value),
      'location': ?location,
      'platformFaultDomain': ?platformFaultDomain,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory DedicatedHostArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedHostArgs(
      autoReplaceOnFailure: map['autoReplaceOnFailure'] == null ? null : map['autoReplaceOnFailure'] as bool,
      hostGroupName: map['hostGroupName'] as String,
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      licenseType: map['licenseType'] == null ? null : DedicatedHostLicenseTypes.fromValue(map['licenseType'] as String),
      location: map['location'] == null ? null : map['location'] as String,
      platformFaultDomain: map['platformFaultDomain'] == null ? null : map['platformFaultDomain'] as int,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

