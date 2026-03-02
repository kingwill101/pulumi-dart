// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Assessment details class.
class AssessmentDetailsResponse {
  /// Confidence Rating in Percentage.
  final pulumi.Input<double> confidenceRatingInPercentage;
  /// Date and Time when assessment was created.
  final pulumi.Input<String> createdTimestamp;
  /// Last time when rates were queried.
  final pulumi.Input<String> pricesTimestamp;
  /// Whether assessment is in valid state and all machines have been assessed.
  final pulumi.Input<String> status;
  /// Date and Time when assessment was last updated.
  final pulumi.Input<String> updatedTimestamp;

  /// Creates a new [AssessmentDetailsResponse].
  /// [confidenceRatingInPercentage] Confidence Rating in Percentage.
  /// [createdTimestamp] Date and Time when assessment was created.
  /// [pricesTimestamp] Last time when rates were queried.
  /// [status] Whether assessment is in valid state and all machines have been assessed.
  /// [updatedTimestamp] Date and Time when assessment was last updated.
  AssessmentDetailsResponse({
    required this.confidenceRatingInPercentage,
    required this.createdTimestamp,
    required this.pricesTimestamp,
    required this.status,
    required this.updatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceRatingInPercentage': confidenceRatingInPercentage,
      'createdTimestamp': createdTimestamp,
      'pricesTimestamp': pricesTimestamp,
      'status': status,
      'updatedTimestamp': updatedTimestamp,
    };
  }

  factory AssessmentDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AssessmentDetailsResponse(
      confidenceRatingInPercentage: (map['confidenceRatingInPercentage'] as double).input(),
      createdTimestamp: (map['createdTimestamp'] as String).input(),
      pricesTimestamp: (map['pricesTimestamp'] as String).input(),
      status: (map['status'] as String).input(),
      updatedTimestamp: (map['updatedTimestamp'] as String).input(),
    );
  }
}

