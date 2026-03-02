// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_domainregistration_list_domain_recommendations_args_doc}
/// Arguments for listDomainRecommendations.
/// {@endtemplate}
/// {@macro pulumi_domainregistration_list_domain_recommendations_args_doc}
class ListDomainRecommendationsArgs {
  /// Keywords to be used for generating domain recommendations.
  final pulumi.Input<String>? keywords;
  /// Maximum number of recommendations.
  final pulumi.Input<int>? maxDomainRecommendations;

  /// Creates a new [ListDomainRecommendationsArgs].
  /// [keywords] Keywords to be used for generating domain recommendations.
  /// [maxDomainRecommendations] Maximum number of recommendations.
  ListDomainRecommendationsArgs({
    this.keywords,
    this.maxDomainRecommendations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keywords': ?keywords,
      'maxDomainRecommendations': ?maxDomainRecommendations,
    };
  }

  factory ListDomainRecommendationsArgs.fromMap(Map<String, dynamic> map) {
    return ListDomainRecommendationsArgs(
      keywords: map['keywords'] == null ? null : (map['keywords']! as String).input(),
      maxDomainRecommendations: map['maxDomainRecommendations'] == null ? null : (map['maxDomainRecommendations']! as int).input(),
    );
  }
}

