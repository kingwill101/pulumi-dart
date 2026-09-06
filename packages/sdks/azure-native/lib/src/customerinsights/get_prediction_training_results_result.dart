// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'canonical_profile_definition_response.dart';
import 'prediction_distribution_definition_response.dart';

/// Result data returned by getPredictionTrainingResults.
class GetPredictionTrainingResultsResult {
  /// Canonical profiles.
  final List<CanonicalProfileDefinitionResponse>? canonicalProfiles;
  /// Prediction distribution.
  final PredictionDistributionDefinitionResponse? predictionDistribution;
  /// Instance count of the primary profile.
  final double? primaryProfileInstanceCount;
  /// Score name.
  final String? scoreName;
  /// The hub name.
  final String? tenantId;

  /// Creates a new [GetPredictionTrainingResultsResult].
  /// [canonicalProfiles] Canonical profiles.
  /// [predictionDistribution] Prediction distribution.
  /// [primaryProfileInstanceCount] Instance count of the primary profile.
  /// [scoreName] Score name.
  /// [tenantId] The hub name.
  const GetPredictionTrainingResultsResult({
    this.canonicalProfiles,
    this.predictionDistribution,
    this.primaryProfileInstanceCount,
    this.scoreName,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canonicalProfiles': ?(() { final guardedValue = canonicalProfiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<CanonicalProfileDefinitionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'predictionDistribution': ?predictionDistribution?.toMap(),
      'primaryProfileInstanceCount': ?primaryProfileInstanceCount,
      'scoreName': ?scoreName,
      'tenantId': ?tenantId,
    };
  }

  factory GetPredictionTrainingResultsResult.fromMap(Map<String, dynamic> map) {
    return GetPredictionTrainingResultsResult(
      canonicalProfiles: (() { final guardedValue = map['canonicalProfiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CanonicalProfileDefinitionResponse>(guardedValue, (value) => CanonicalProfileDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      predictionDistribution: (() { final guardedValue = map['predictionDistribution']; if (guardedValue == null) return null; return PredictionDistributionDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      primaryProfileInstanceCount: (() { final guardedValue = map['primaryProfileInstanceCount']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      scoreName: (() { final guardedValue = map['scoreName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
