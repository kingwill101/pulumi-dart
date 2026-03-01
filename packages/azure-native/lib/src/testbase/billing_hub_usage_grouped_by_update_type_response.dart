// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_hub_usage_group_response.dart';

class BillingHubUsageGroupedByUpdateTypeResponse {
  final double? totalCharges;
  final double? totalUsedBillableHours;
  final double? totalUsedFreeHours;
  final String? updateType;
  final List<BillingHubUsageGroupResponse>? usageGroups;

  /// Creates a new [BillingHubUsageGroupedByUpdateTypeResponse].
  /// [totalCharges] Optional.
  /// [totalUsedBillableHours] Optional.
  /// [totalUsedFreeHours] Optional.
  /// [updateType] Optional.
  /// [usageGroups] Optional.
  BillingHubUsageGroupedByUpdateTypeResponse({
    this.totalCharges,
    this.totalUsedBillableHours,
    this.totalUsedFreeHours,
    this.updateType,
    this.usageGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalCharges': ?totalCharges,
      'totalUsedBillableHours': ?totalUsedBillableHours,
      'totalUsedFreeHours': ?totalUsedFreeHours,
      'updateType': ?updateType,
      'usageGroups': ?usageGroups == null ? null : pulumi.Input.encodeList<BillingHubUsageGroupResponse, Map<String, dynamic>>(usageGroups!, (value) => value.toMap()),
    };
  }

  factory BillingHubUsageGroupedByUpdateTypeResponse.fromMap(Map<String, dynamic> map) {
    return BillingHubUsageGroupedByUpdateTypeResponse(
      totalCharges: map['totalCharges'] == null ? null : map['totalCharges'] as double,
      totalUsedBillableHours: map['totalUsedBillableHours'] == null ? null : map['totalUsedBillableHours'] as double,
      totalUsedFreeHours: map['totalUsedFreeHours'] == null ? null : map['totalUsedFreeHours'] as double,
      updateType: map['updateType'] == null ? null : map['updateType'] as String,
      usageGroups: map['usageGroups'] == null ? null : pulumi.Input.decodeList<BillingHubUsageGroupResponse>(map['usageGroups'], (value) => BillingHubUsageGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

