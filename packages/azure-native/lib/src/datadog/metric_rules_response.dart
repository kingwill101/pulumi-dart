// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filtering_tag_response.dart';

/// Set of rules for sending metrics for the Monitor resource.
class MetricRulesResponse {
  /// List of filtering tags to be used for capturing metrics. If empty, all resources will be captured. If only Exclude action is specified, the rules will apply to the list of all available resources. If Include actions are specified, the rules will only include resources with the associated tags.
  final List<FilteringTagResponse>? filteringTags;

  /// Creates a new [MetricRulesResponse].
  /// [filteringTags] List of filtering tags to be used for capturing metrics. If empty, all resources will be captured. If only Exclude action is specified, the rules will apply to the list of all available resources. If Include actions are specified, the rules will only include resources with the associated tags.
  MetricRulesResponse({
    this.filteringTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filteringTags': ?filteringTags == null ? null : pulumi.Input.encodeList<FilteringTagResponse, Map<String, dynamic>>(filteringTags!, (value) => value.toMap()),
    };
  }

  factory MetricRulesResponse.fromMap(Map<String, dynamic> map) {
    return MetricRulesResponse(
      filteringTags: map['filteringTags'] == null ? null : pulumi.Input.decodeList<FilteringTagResponse>(map['filteringTags'], (value) => FilteringTagResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

