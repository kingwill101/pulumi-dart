// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourceGroupsGroupRegionStatus {
  /// The region ID.
  final pulumi.Input<String> regionId;

  /// The status of the resource group. Valid values: `Creating`, `Deleted`, `Deleting`, `OK` and `PendingDelete`. **NOTE:** From version 1.114.0, `status` can be set to `Deleting`.
  final pulumi.Input<String> status;

  /// Creates a new [GetResourceGroupsGroupRegionStatus].
  /// [regionId] The region ID.
  /// [status] The status of the resource group. Valid values: `Creating`, `Deleted`, `Deleting`, `OK` and `PendingDelete`. **NOTE:** From version 1.114.0, `status` can be set to `Deleting`.
  GetResourceGroupsGroupRegionStatus({
    required this.regionId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'regionId': regionId, 'status': status};
  }

  factory GetResourceGroupsGroupRegionStatus.fromMap(Map<String, dynamic> map) {
    return GetResourceGroupsGroupRegionStatus(
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
