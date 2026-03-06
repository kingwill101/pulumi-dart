// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filtering_tag_response.dart';

/// Set of rules for sending metrics for the Monitor resource.
class MetricRulesResponse {
  /// List of filtering tags to be used for capturing metrics. If empty, all resources will be captured. If only Exclude action is specified, the rules will apply to the list of all available resources. If Include actions are specified, the rules will only include resources with the associated tags.
  final pulumi.Input<List<FilteringTagResponse>>? filteringTags;

  /// Creates a new [MetricRulesResponse].
  /// [filteringTags] List of filtering tags to be used for capturing metrics. If empty, all resources will be captured. If only Exclude action is specified, the rules will apply to the list of all available resources. If Include actions are specified, the rules will only include resources with the associated tags.
  const MetricRulesResponse({
    this.filteringTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filteringTags': ?pulumi.Input.mapOptionalInputValue<List<FilteringTagResponse>, List<Map<String, dynamic>>>(filteringTags, (value) => pulumi.Input.encodeList<FilteringTagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MetricRulesResponse.fromMap(Map<String, dynamic> map) {
    return MetricRulesResponse(
      filteringTags: (() { final guardedValue = map['filteringTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilteringTagResponse>(guardedValue, (value) => FilteringTagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

