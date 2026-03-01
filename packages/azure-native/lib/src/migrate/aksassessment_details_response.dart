// ignore_for_file: unused_element, unnecessary_cast


/// Data model of AKS Assessment Details.
class AKSAssessmentDetailsResponse {
  /// Gets Confidence score.
  final double confidenceRatingInPercentage;
  /// Gets date and time when assessment was created.
  final String createdTimestamp;
  /// Gets the number of machines.
  final int machineCount;
  /// Gets last time when rates were queried.
  final String pricesTimestamp;
  /// Gets assessment status.
  final String status;
  /// Gets the total monthly cost.
  final double totalMonthlyCost;
  /// Gets date and time when assessment was last updated.
  final String updatedTimestamp;
  /// Gets the number of web apps.
  final int webAppCount;
  /// Gets the number of web servers.
  final int webServerCount;

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
      confidenceRatingInPercentage: map['confidenceRatingInPercentage'] as double,
      createdTimestamp: map['createdTimestamp'] as String,
      machineCount: map['machineCount'] as int,
      pricesTimestamp: map['pricesTimestamp'] as String,
      status: map['status'] as String,
      totalMonthlyCost: map['totalMonthlyCost'] as double,
      updatedTimestamp: map['updatedTimestamp'] as String,
      webAppCount: map['webAppCount'] as int,
      webServerCount: map['webServerCount'] as int,
    );
  }
}

