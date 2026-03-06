// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'canonical_profile_definition_response.dart';
import 'prediction_distribution_definition_response.dart';

/// Result data returned by getPredictionTrainingResults.
class GetPredictionTrainingResultsResult {
  /// Canonical profiles.
  final List<CanonicalProfileDefinitionResponse> canonicalProfiles;
  /// Prediction distribution.
  final PredictionDistributionDefinitionResponse predictionDistribution;
  /// Instance count of the primary profile.
  final double primaryProfileInstanceCount;
  /// Score name.
  final String scoreName;
  /// The hub name.
  final String tenantId;

  /// Creates a new [GetPredictionTrainingResultsResult].
  /// [canonicalProfiles] Canonical profiles.
  /// [predictionDistribution] Prediction distribution.
  /// [primaryProfileInstanceCount] Instance count of the primary profile.
  /// [scoreName] Score name.
  /// [tenantId] The hub name.
  const GetPredictionTrainingResultsResult({
    required this.canonicalProfiles,
    required this.predictionDistribution,
    required this.primaryProfileInstanceCount,
    required this.scoreName,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canonicalProfiles': pulumi.Input.encodeList<CanonicalProfileDefinitionResponse, Map<String, dynamic>>(canonicalProfiles, (value) => value.toMap()),
      'predictionDistribution': predictionDistribution.toMap(),
      'primaryProfileInstanceCount': primaryProfileInstanceCount,
      'scoreName': scoreName,
      'tenantId': tenantId,
    };
  }

  factory GetPredictionTrainingResultsResult.fromMap(Map<String, dynamic> map) {
    return GetPredictionTrainingResultsResult(
      canonicalProfiles: pulumi.Input.decodeList<CanonicalProfileDefinitionResponse>(map['canonicalProfiles']!, (value) => CanonicalProfileDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
      predictionDistribution: PredictionDistributionDefinitionResponse.fromMap((map['predictionDistribution']! as Map).cast<String, dynamic>()),
      primaryProfileInstanceCount: map['primaryProfileInstanceCount'] as double,
      scoreName: map['scoreName'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

