// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testbase_get_billing_hub_service_usage_args_doc}
/// Arguments for getBillingHubServiceUsage.
/// {@endtemplate}
/// {@macro pulumi_testbase_get_billing_hub_service_usage_args_doc}
class GetBillingHubServiceUsageArgs {
  final pulumi.Input<String> endTimeStamp;
  final pulumi.Input<int>? pageIndex;
  final pulumi.Input<int>? pageSize;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String> startTimeStamp;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;

  /// Creates a new [GetBillingHubServiceUsageArgs].
  /// [endTimeStamp] Required.
  /// [pageIndex] Optional.
  /// [pageSize] Optional.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [startTimeStamp] Required.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  GetBillingHubServiceUsageArgs({
    required String endTimeStamp,
    int? pageIndex,
    int? pageSize,
    required String resourceGroupName,
    required String startTimeStamp,
    required String testBaseAccountName,
  }) :
      endTimeStamp = pulumi.Input.asInput<String>(endTimeStamp),
      pageIndex = pulumi.Input.asOptionalInput<int>(pageIndex),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      startTimeStamp = pulumi.Input.asInput<String>(startTimeStamp),
      testBaseAccountName = pulumi.Input.asInput<String>(testBaseAccountName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTimeStamp': endTimeStamp,
      'pageIndex': ?pageIndex,
      'pageSize': ?pageSize,
      'resourceGroupName': resourceGroupName,
      'startTimeStamp': startTimeStamp,
      'testBaseAccountName': testBaseAccountName,
    };
  }

  factory GetBillingHubServiceUsageArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingHubServiceUsageArgs(
      endTimeStamp: map['endTimeStamp'] as String,
      pageIndex: map['pageIndex'] == null ? null : map['pageIndex'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      resourceGroupName: map['resourceGroupName'] as String,
      startTimeStamp: map['startTimeStamp'] as String,
      testBaseAccountName: map['testBaseAccountName'] as String,
    );
  }
}

