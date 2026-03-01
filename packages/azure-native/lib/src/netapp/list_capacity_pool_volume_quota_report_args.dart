// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_list_capacity_pool_volume_quota_report_args_doc}
/// Arguments for listCapacityPoolVolumeQuotaReport.
/// {@endtemplate}
/// {@macro pulumi_netapp_list_capacity_pool_volume_quota_report_args_doc}
class ListCapacityPoolVolumeQuotaReportArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// The name of the capacity pool
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the volume
  final pulumi.Input<String> volumeName;

  /// Creates a new [ListCapacityPoolVolumeQuotaReportArgs].
  /// [accountName] The name of the NetApp account
  /// [poolName] The name of the capacity pool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [volumeName] The name of the volume
  ListCapacityPoolVolumeQuotaReportArgs({
    required String accountName,
    required String poolName,
    required String resourceGroupName,
    required String volumeName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      volumeName = pulumi.Input.asInput<String>(volumeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'volumeName': volumeName,
    };
  }

  factory ListCapacityPoolVolumeQuotaReportArgs.fromMap(Map<String, dynamic> map) {
    return ListCapacityPoolVolumeQuotaReportArgs(
      accountName: map['accountName'] as String,
      poolName: map['poolName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      volumeName: map['volumeName'] as String,
    );
  }
}

