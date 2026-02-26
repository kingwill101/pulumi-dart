// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../global_forwarding_rule_metadata_filter_filter_label/global_forwarding_rule_metadata_filter_filter_label.dart';

class GlobalForwardingRuleMetadataFilter {
  /// The list of label value pairs that must match labels in the
  /// provided metadata based on filterMatchCriteria
  /// This list must not be empty and can have at the most 64 entries.
  /// Structure is documented below.
  final List<GlobalForwardingRuleMetadataFilterFilterLabel> filterLabels;

  /// Specifies how individual filterLabel matches within the list of
  /// filterLabels contribute towards the overall metadataFilter match.
  /// MATCH_ANY - At least one of the filterLabels must have a matching
  /// label in the provided metadata.
  /// MATCH_ALL - All filterLabels must have matching labels in the
  /// provided metadata.
  /// Possible values are: `MATCH_ANY`, `MATCH_ALL`.
  final String filterMatchCriteria;

  GlobalForwardingRuleMetadataFilter({
    required this.filterLabels,
    required this.filterMatchCriteria,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filterLabels'] = Input.encodeList<
        GlobalForwardingRuleMetadataFilterFilterLabel,
        Map<String, dynamic>>(filterLabels, (value) => value.toMap());
    map['filterMatchCriteria'] = filterMatchCriteria;
    return map;
  }

  factory GlobalForwardingRuleMetadataFilter.fromMap(Map<String, dynamic> map) {
    return GlobalForwardingRuleMetadataFilter(
      filterLabels:
          Input.decodeList<GlobalForwardingRuleMetadataFilterFilterLabel>(
              map['filterLabels'],
              (value) => GlobalForwardingRuleMetadataFilterFilterLabel.fromMap(
                  (value as Map).cast<String, dynamic>())),
      filterMatchCriteria: map['filterMatchCriteria'] as String,
    );
  }
}
