// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_volume_group_sap_hana_get_volume_group_sap_hana_args_doc}
/// Arguments for getVolumeGroupSapHana.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_volume_group_sap_hana_get_volume_group_sap_hana_args_doc}
class GetVolumeGroupSapHanaArgs {
  /// Name of the account where the application volume group belong to.
  final pulumi.Input<String> accountName;
  /// The name of this Application Volume Group for SAP HANA application.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Application Volume Group exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetVolumeGroupSapHanaArgs].
  /// [accountName] Name of the account where the application volume group belong to.
  /// [name] The name of this Application Volume Group for SAP HANA application.
  /// [resourceGroupName] The name of the Resource Group where the Application Volume Group exists.
  GetVolumeGroupSapHanaArgs({
    required String accountName,
    required String name,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetVolumeGroupSapHanaArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupSapHanaArgs(
      accountName: map['accountName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

