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
    pulumi.Output<String>? keywords,
    pulumi.Output<int>? maxDomainRecommendations,
  }) :
      keywords = pulumi.Input.asOptionalInput<String>(keywords),
      maxDomainRecommendations = pulumi.Input.asOptionalInput<int>(maxDomainRecommendations);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keywords': ?keywords,
      'maxDomainRecommendations': ?maxDomainRecommendations,
    };
  }

  factory ListDomainRecommendationsArgs.fromMap(Map<String, dynamic> map) {
    return ListDomainRecommendationsArgs(
      keywords: map['keywords'] == null ? null : pulumi.Output.create<String>(map['keywords'] as String),
      maxDomainRecommendations: map['maxDomainRecommendations'] == null ? null : pulumi.Output.create<int>(map['maxDomainRecommendations'] as int),
    );
  }
}

