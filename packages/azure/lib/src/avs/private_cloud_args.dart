// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_cloud_management_cluster.dart';

/// {@template pulumi_avs_private_cloud_private_cloud_args_doc}
/// The set of arguments for PrivateCloud.
/// {@endtemplate}
/// {@macro pulumi_avs_private_cloud_private_cloud_args_doc}
class PrivateCloudArgs {
  /// Is the Azure VMware Solution Private Cloud connected to the internet? This field can not be updated with `management_cluster[0].size` together.
  /// > **Note:** `internet_connection_enabled` and `management_cluster[0].size` cannot be updated at the same time.
  final pulumi.Input<bool>? internetConnectionEnabled;
  /// The Azure Region where the Azure VMware Solution Private Cloud should exist. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  final pulumi.Input<String>? location;
  /// A `management_cluster` block as defined below.
  /// > **Note:** `internet_connection_enabled` and `management_cluster[0].size` cannot be updated at the same time.
  final pulumi.Input<PrivateCloudManagementCluster> managementCluster;
  /// The name which should be used for this Azure VMware Solution Private Cloud. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  final pulumi.Input<String>? name;
  /// The subnet which should be unique across virtual network in your subscription as well as on-premise. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  final pulumi.Input<String> networkSubnetCidr;
  /// The password of the VMware NSX Manager cloudadmin. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  final pulumi.Input<String>? nsxtPassword;
  /// The name of the Resource Group where the Azure VMware Solution Private Cloud should exist. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The Name of the SKU used for this Azure VMware Solution Private Cloud. Possible values are `av20`, `av36`, `av36t`, `av36p`, `av36pt`, `av48`, `av48t`, `av52`, `av52t`, and `av64`. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  final pulumi.Input<String> skuName;
  /// A mapping of tags which should be assigned to the Azure VMware Solution Private Cloud.
  final pulumi.Input<Map<String, String>>? tags;
  /// The password of the VMware vCenter Server cloudadmin. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  final pulumi.Input<String>? vcenterPassword;

  /// Creates a new [PrivateCloudArgs].
  /// [internetConnectionEnabled] Is the Azure VMware Solution Private Cloud connected to the internet? This field can not be updated with `management_cluster[0].size` together.
  /// [location] The Azure Region where the Azure VMware Solution Private Cloud should exist. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  /// [managementCluster] A `management_cluster` block as defined below.
  /// [name] The name which should be used for this Azure VMware Solution Private Cloud. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  /// [networkSubnetCidr] The subnet which should be unique across virtual network in your subscription as well as on-premise. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  /// [nsxtPassword] The password of the VMware NSX Manager cloudadmin. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  /// [resourceGroupName] The name of the Resource Group where the Azure VMware Solution Private Cloud should exist. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  /// [skuName] The Name of the SKU used for this Azure VMware Solution Private Cloud. Possible values are `av20`, `av36`, `av36t`, `av36p`, `av36pt`, `av48`, `av48t`, `av52`, `av52t`, and `av64`. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  /// [tags] A mapping of tags which should be assigned to the Azure VMware Solution Private Cloud.
  /// [vcenterPassword] The password of the VMware vCenter Server cloudadmin. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  PrivateCloudArgs({
    bool? internetConnectionEnabled,
    String? location,
    required PrivateCloudManagementCluster managementCluster,
    String? name,
    required String networkSubnetCidr,
    String? nsxtPassword,
    required String resourceGroupName,
    required String skuName,
    Map<String, String>? tags,
    String? vcenterPassword,
  }) :
      internetConnectionEnabled = pulumi.Input.asOptionalInput<bool>(internetConnectionEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      managementCluster = pulumi.Input.asInput<PrivateCloudManagementCluster>(managementCluster),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkSubnetCidr = pulumi.Input.asInput<String>(networkSubnetCidr),
      nsxtPassword = pulumi.Input.asOptionalInput<String>(nsxtPassword),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skuName = pulumi.Input.asInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vcenterPassword = pulumi.Input.asOptionalInput<String>(vcenterPassword);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internetConnectionEnabled': ?internetConnectionEnabled,
      'location': ?location,
      'managementCluster': pulumi.Input.mapInputValue<PrivateCloudManagementCluster, Map<String, dynamic>>(managementCluster, (value) => value.toMap()),
      'name': ?name,
      'networkSubnetCidr': networkSubnetCidr,
      'nsxtPassword': ?nsxtPassword,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': ?tags,
      'vcenterPassword': ?vcenterPassword,
    };
  }

  factory PrivateCloudArgs.fromMap(Map<String, dynamic> map) {
    return PrivateCloudArgs(
      internetConnectionEnabled: map['internetConnectionEnabled'] == null ? null : map['internetConnectionEnabled'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      managementCluster: PrivateCloudManagementCluster.fromMap((map['managementCluster'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      networkSubnetCidr: map['networkSubnetCidr'] as String,
      nsxtPassword: map['nsxtPassword'] == null ? null : map['nsxtPassword'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skuName: map['skuName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vcenterPassword: map['vcenterPassword'] == null ? null : map['vcenterPassword'] as String,
    );
  }
}

