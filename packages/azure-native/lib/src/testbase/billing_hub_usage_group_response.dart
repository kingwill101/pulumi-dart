// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_hub_execution_usage_detail_response.dart';

class BillingHubUsageGroupResponse {
  final List<BillingHubExecutionUsageDetailResponse>? executionUsageDetails;
  final String? osBuild;
  final String? productFamily;
  final String? release;
  final String? releaseBuildDate;
  final double? releaseBuildNumber;
  final double? releaseBuildRevision;
  final String? testType;
  final double? totalCharges;
  final double? totalUsedBillableHours;
  final double? totalUsedFreeHours;

  /// Creates a new [BillingHubUsageGroupResponse].
  /// [executionUsageDetails] Optional.
  /// [osBuild] Optional.
  /// [productFamily] Optional.
  /// [release] Optional.
  /// [releaseBuildDate] Optional.
  /// [releaseBuildNumber] Optional.
  /// [releaseBuildRevision] Optional.
  /// [testType] Optional.
  /// [totalCharges] Optional.
  /// [totalUsedBillableHours] Optional.
  /// [totalUsedFreeHours] Optional.
  BillingHubUsageGroupResponse({
    this.executionUsageDetails,
    this.osBuild,
    this.productFamily,
    this.release,
    this.releaseBuildDate,
    this.releaseBuildNumber,
    this.releaseBuildRevision,
    this.testType,
    this.totalCharges,
    this.totalUsedBillableHours,
    this.totalUsedFreeHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionUsageDetails': ?executionUsageDetails == null ? null : pulumi.Input.encodeList<BillingHubExecutionUsageDetailResponse, Map<String, dynamic>>(executionUsageDetails!, (value) => value.toMap()),
      'osBuild': ?osBuild,
      'productFamily': ?productFamily,
      'release': ?release,
      'releaseBuildDate': ?releaseBuildDate,
      'releaseBuildNumber': ?releaseBuildNumber,
      'releaseBuildRevision': ?releaseBuildRevision,
      'testType': ?testType,
      'totalCharges': ?totalCharges,
      'totalUsedBillableHours': ?totalUsedBillableHours,
      'totalUsedFreeHours': ?totalUsedFreeHours,
    };
  }

  factory BillingHubUsageGroupResponse.fromMap(Map<String, dynamic> map) {
    return BillingHubUsageGroupResponse(
      executionUsageDetails: map['executionUsageDetails'] == null ? null : pulumi.Input.decodeList<BillingHubExecutionUsageDetailResponse>(map['executionUsageDetails'], (value) => BillingHubExecutionUsageDetailResponse.fromMap((value as Map).cast<String, dynamic>())),
      osBuild: map['osBuild'] == null ? null : map['osBuild'] as String,
      productFamily: map['productFamily'] == null ? null : map['productFamily'] as String,
      release: map['release'] == null ? null : map['release'] as String,
      releaseBuildDate: map['releaseBuildDate'] == null ? null : map['releaseBuildDate'] as String,
      releaseBuildNumber: map['releaseBuildNumber'] == null ? null : map['releaseBuildNumber'] as double,
      releaseBuildRevision: map['releaseBuildRevision'] == null ? null : map['releaseBuildRevision'] as double,
      testType: map['testType'] == null ? null : map['testType'] as String,
      totalCharges: map['totalCharges'] == null ? null : map['totalCharges'] as double,
      totalUsedBillableHours: map['totalUsedBillableHours'] == null ? null : map['totalUsedBillableHours'] as double,
      totalUsedFreeHours: map['totalUsedFreeHours'] == null ? null : map['totalUsedFreeHours'] as double,
    );
  }
}

