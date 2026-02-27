// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_global_forwarding_rule_metadata_filter_filter_label/get_global_forwarding_rule_metadata_filter_filter_label.dart';

class GetGlobalForwardingRuleMetadataFilter {
  /// The list of label value pairs that must match labels in the
  /// provided metadata based on filterMatchCriteria
  ///
  /// This list must not be empty and can have at the most 64 entries.
  final List<GetGlobalForwardingRuleMetadataFilterFilterLabel> filterLabels;

  /// Specifies how individual filterLabel matches within the list of
  /// filterLabels contribute towards the overall metadataFilter match.
  ///
  /// MATCH_ANY - At least one of the filterLabels must have a matching
  /// label in the provided metadata.
  /// MATCH_ALL - All filterLabels must have matching labels in the
  /// provided metadata. Possible values: ["MATCH_ANY", "MATCH_ALL"]
  final String filterMatchCriteria;

  GetGlobalForwardingRuleMetadataFilter({
    required this.filterLabels,
    required this.filterMatchCriteria,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filterLabels'] = pulumi.Input.encodeList<
        GetGlobalForwardingRuleMetadataFilterFilterLabel,
        Map<String, dynamic>>(filterLabels, (value) => value.toMap());
    map['filterMatchCriteria'] = filterMatchCriteria;
    return map;
  }

  factory GetGlobalForwardingRuleMetadataFilter.fromMap(
      Map<String, dynamic> map) {
    return GetGlobalForwardingRuleMetadataFilter(
      filterLabels: pulumi.Input.decodeList<
              GetGlobalForwardingRuleMetadataFilterFilterLabel>(
          map['filterLabels'],
          (value) => GetGlobalForwardingRuleMetadataFilterFilterLabel.fromMap(
              (value as Map).cast<String, dynamic>())),
      filterMatchCriteria: map['filterMatchCriteria'] as String,
    );
  }
}
