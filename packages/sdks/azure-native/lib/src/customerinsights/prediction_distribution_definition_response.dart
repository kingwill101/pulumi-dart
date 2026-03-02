// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prediction_distribution_definition_response_distributions.dart';

/// The definition of the prediction distribution.
class PredictionDistributionDefinitionResponse {
  /// Distributions of the prediction.
  final pulumi.Input<List<PredictionDistributionDefinitionResponseDistributions>>? distributions;
  /// Total negatives in the distribution.
  final pulumi.Input<double>? totalNegatives;
  /// Total positive in the distribution.
  final pulumi.Input<double>? totalPositives;

  /// Creates a new [PredictionDistributionDefinitionResponse].
  /// [distributions] Distributions of the prediction.
  /// [totalNegatives] Total negatives in the distribution.
  /// [totalPositives] Total positive in the distribution.
  PredictionDistributionDefinitionResponse({
    this.distributions,
    this.totalNegatives,
    this.totalPositives,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributions': ?pulumi.Input.mapOptionalInputValue<List<PredictionDistributionDefinitionResponseDistributions>, List<Map<String, dynamic>>>(distributions, (value) => pulumi.Input.encodeList<PredictionDistributionDefinitionResponseDistributions, Map<String, dynamic>>(value, (value) => value.toMap())),
      'totalNegatives': ?totalNegatives,
      'totalPositives': ?totalPositives,
    };
  }

  factory PredictionDistributionDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return PredictionDistributionDefinitionResponse(
      distributions: map['distributions'] == null ? null : (pulumi.Input.decodeList<PredictionDistributionDefinitionResponseDistributions>(map['distributions'], (value) => PredictionDistributionDefinitionResponseDistributions.fromMap((value as Map).cast<String, dynamic>()))).input(),
      totalNegatives: map['totalNegatives'] == null ? null : (map['totalNegatives'] as double).input(),
      totalPositives: map['totalPositives'] == null ? null : (map['totalPositives'] as double).input(),
    );
  }
}

