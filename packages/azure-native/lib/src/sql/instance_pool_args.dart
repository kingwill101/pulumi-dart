// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku.dart';

/// {@template pulumi_sql_instance_pool_args_doc}
/// The set of arguments for InstancePool.
/// {@endtemplate}
/// {@macro pulumi_sql_instance_pool_args_doc}
class InstancePoolArgs {
  /// The name of the instance pool to be created or updated.
  final pulumi.Input<String>? instancePoolName;
  /// The license type. Possible values are 'LicenseIncluded' (price for SQL license is included) and 'BasePrice' (without SQL license price).
  final pulumi.Input<String> licenseType;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Specifies maintenance configuration id to apply to this managed instance.
  final pulumi.Input<String>? maintenanceConfigurationId;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name and tier of the SKU.
  final pulumi.Input<Sku>? sku;
  /// Resource ID of the subnet to place this instance pool in.
  final pulumi.Input<String> subnetId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Count of vCores belonging to this instance pool.
  final pulumi.Input<int> vCores;

  /// Creates a new [InstancePoolArgs].
  /// [instancePoolName] The name of the instance pool to be created or updated.
  /// [licenseType] The license type. Possible values are 'LicenseIncluded' (price for SQL license is included) and 'BasePrice' (without SQL license price).
  /// [location] Resource location.
  /// [maintenanceConfigurationId] Specifies maintenance configuration id to apply to this managed instance.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [sku] The name and tier of the SKU.
  /// [subnetId] Resource ID of the subnet to place this instance pool in.
  /// [tags] Resource tags.
  /// [vCores] Count of vCores belonging to this instance pool.
  InstancePoolArgs({
    String? instancePoolName,
    required String licenseType,
    String? location,
    String? maintenanceConfigurationId,
    required String resourceGroupName,
    Sku? sku,
    required String subnetId,
    Map<String, String>? tags,
    required int vCores,
  }) :
      instancePoolName = pulumi.Input.asOptionalInput<String>(instancePoolName),
      licenseType = pulumi.Input.asInput<String>(licenseType),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceConfigurationId = pulumi.Input.asOptionalInput<String>(maintenanceConfigurationId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      subnetId = pulumi.Input.asInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vCores = pulumi.Input.asInput<int>(vCores);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instancePoolName': ?instancePoolName,
      'licenseType': licenseType,
      'location': ?location,
      'maintenanceConfigurationId': ?maintenanceConfigurationId,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'subnetId': subnetId,
      'tags': ?tags,
      'vCores': vCores,
    };
  }

  factory InstancePoolArgs.fromMap(Map<String, dynamic> map) {
    return InstancePoolArgs(
      instancePoolName: map['instancePoolName'] == null ? null : map['instancePoolName'] as String,
      licenseType: map['licenseType'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      maintenanceConfigurationId: map['maintenanceConfigurationId'] == null ? null : map['maintenanceConfigurationId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] == null ? null : Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      subnetId: map['subnetId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vCores: map['vCores'] as int,
    );
  }
}

