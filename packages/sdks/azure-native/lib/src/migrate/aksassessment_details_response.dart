// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data model of AKS Assessment Details.
class AKSAssessmentDetailsResponse {
  /// Gets Confidence score.
  final pulumi.Input<double> confidenceRatingInPercentage;
  /// Gets date and time when assessment was created.
  final pulumi.Input<String> createdTimestamp;
  /// Gets the number of machines.
  final pulumi.Input<int> machineCount;
  /// Gets last time when rates were queried.
  final pulumi.Input<String> pricesTimestamp;
  /// Gets assessment status.
  final pulumi.Input<String> status;
  /// Gets the total monthly cost.
  final pulumi.Input<double> totalMonthlyCost;
  /// Gets date and time when assessment was last updated.
  final pulumi.Input<String> updatedTimestamp;
  /// Gets the number of web apps.
  final pulumi.Input<int> webAppCount;
  /// Gets the number of web servers.
  final pulumi.Input<int> webServerCount;

  /// Creates a new [AKSAssessmentDetailsResponse].
  /// [confidenceRatingInPercentage] Gets Confidence score.
  /// [createdTimestamp] Gets date and time when assessment was created.
  /// [machineCount] Gets the number of machines.
  /// [pricesTimestamp] Gets last time when rates were queried.
  /// [status] Gets assessment status.
  /// [totalMonthlyCost] Gets the total monthly cost.
  /// [updatedTimestamp] Gets date and time when assessment was last updated.
  /// [webAppCount] Gets the number of web apps.
  /// [webServerCount] Gets the number of web servers.
  AKSAssessmentDetailsResponse({
    required this.confidenceRatingInPercentage,
    required this.createdTimestamp,
    required this.machineCount,
    required this.pricesTimestamp,
    required this.status,
    required this.totalMonthlyCost,
    required this.updatedTimestamp,
    required this.webAppCount,
    required this.webServerCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceRatingInPercentage': confidenceRatingInPercentage,
      'createdTimestamp': createdTimestamp,
      'machineCount': machineCount,
      'pricesTimestamp': pricesTimestamp,
      'status': status,
      'totalMonthlyCost': totalMonthlyCost,
      'updatedTimestamp': updatedTimestamp,
      'webAppCount': webAppCount,
      'webServerCount': webServerCount,
    };
  }

  factory AKSAssessmentDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AKSAssessmentDetailsResponse(
      confidenceRatingInPercentage: (map['confidenceRatingInPercentage'] as double).input(),
      createdTimestamp: (map['createdTimestamp'] as String).input(),
      machineCount: (map['machineCount'] as int).input(),
      pricesTimestamp: (map['pricesTimestamp'] as String).input(),
      status: (map['status'] as String).input(),
      totalMonthlyCost: (map['totalMonthlyCost'] as double).input(),
      updatedTimestamp: (map['updatedTimestamp'] as String).input(),
      webAppCount: (map['webAppCount'] as int).input(),
      webServerCount: (map['webServerCount'] as int).input(),
    );
  }
}

