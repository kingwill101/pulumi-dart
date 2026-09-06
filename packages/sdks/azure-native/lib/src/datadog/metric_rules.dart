// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filtering_tag.dart';

/// Set of rules for sending metrics for the Monitor resource.
class MetricRules {
  /// List of filtering tags to be used for capturing metrics. If empty, all resources will be captured. If only Exclude action is specified, the rules will apply to the list of all available resources. If Include actions are specified, the rules will only include resources with the associated tags.
  final pulumi.Input<List<FilteringTag>?>? filteringTags;

  /// Creates a new [MetricRules].
  /// [filteringTags] List of filtering tags to be used for capturing metrics. If empty, all resources will be captured. If only Exclude action is specified, the rules will apply to the list of all available resources. If Include actions are specified, the rules will only include resources with the associated tags.
  const MetricRules({
    this.filteringTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filteringTags': ?pulumi.Input.mapOptionalInputValue<List<FilteringTag>, List<Map<String, dynamic>>>(filteringTags, (value) => pulumi.Input.encodeList<FilteringTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MetricRules.fromMap(Map<String, dynamic> map) {
    return MetricRules(
      filteringTags: (() { final guardedValue = map['filteringTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilteringTag>(guardedValue, (value) => FilteringTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
