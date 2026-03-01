// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_hub_free_hour_increment_entry_response.dart';

/// Result data returned by getBillingHubServiceFreeHourBalance.
class GetBillingHubServiceFreeHourBalanceResult {
  final List<BillingHubFreeHourIncrementEntryResponse>? incrementEntries;
  final double? totalRemainingFreeHours;

  /// Creates a new [GetBillingHubServiceFreeHourBalanceResult].
  /// [incrementEntries] Optional.
  /// [totalRemainingFreeHours] Optional.
  GetBillingHubServiceFreeHourBalanceResult({
    this.incrementEntries,
    this.totalRemainingFreeHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'incrementEntries': ?incrementEntries == null ? null : pulumi.Input.encodeList<BillingHubFreeHourIncrementEntryResponse, Map<String, dynamic>>(incrementEntries!, (value) => value.toMap()),
      'totalRemainingFreeHours': ?totalRemainingFreeHours,
    };
  }

  factory GetBillingHubServiceFreeHourBalanceResult.fromMap(Map<String, dynamic> map) {
    return GetBillingHubServiceFreeHourBalanceResult(
      incrementEntries: map['incrementEntries'] == null ? null : pulumi.Input.decodeList<BillingHubFreeHourIncrementEntryResponse>(map['incrementEntries'], (value) => BillingHubFreeHourIncrementEntryResponse.fromMap((value as Map).cast<String, dynamic>())),
      totalRemainingFreeHours: map['totalRemainingFreeHours'] == null ? null : map['totalRemainingFreeHours'] as double,
    );
  }
}

