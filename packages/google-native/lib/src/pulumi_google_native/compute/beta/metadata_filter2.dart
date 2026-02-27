// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'metadata_filter_filter_match_criteria2.dart';
import 'metadata_filter_label_match2.dart';

/// Opaque filter criteria used by load balancers to restrict routing configuration to a limited set of load balancing proxies. Proxies and sidecars involved in load balancing would typically present metadata to the load balancers that need to match criteria specified here. If a match takes place, the relevant configuration is made available to those proxies. For each metadataFilter in this list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the filterLabels must match the corresponding label provided in the metadata. If its filterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match with corresponding labels provided in the metadata. An example for using metadataFilters would be: if load balancing involves Envoys, they receive routing configuration when values in metadataFilters match values supplied in of their XDS requests to loadbalancers.
class MetadataFilter2 {
  /// The list of label value pairs that must match labels in the provided metadata based on filterMatchCriteria This list must not be empty and can have at the most 64 entries.
  final List<MetadataFilterLabelMatch2>? filterLabels;

  /// Specifies how individual filter label matches within the list of filterLabels and contributes toward the overall metadataFilter match. Supported values are: - MATCH_ANY: at least one of the filterLabels must have a matching label in the provided metadata. - MATCH_ALL: all filterLabels must have matching labels in the provided metadata.
  final MetadataFilterFilterMatchCriteria2? filterMatchCriteria;

  MetadataFilter2({
    this.filterLabels,
    this.filterMatchCriteria,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterLabelsValue = filterLabels;
    if (filterLabelsValue != null) {
      map['filterLabels'] =
          Input.encodeList<MetadataFilterLabelMatch2, Map<String, dynamic>>(
              filterLabelsValue, (value) => value.toMap());
    }
    final filterMatchCriteriaValue = filterMatchCriteria;
    if (filterMatchCriteriaValue != null) {
      map['filterMatchCriteria'] = filterMatchCriteriaValue.value;
    }
    return map;
  }

  factory MetadataFilter2.fromMap(Map<String, dynamic> map) {
    return MetadataFilter2(
      filterLabels: map['filterLabels'] == null
          ? null
          : Input.decodeList<MetadataFilterLabelMatch2>(
              map['filterLabels'],
              (value) => MetadataFilterLabelMatch2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      filterMatchCriteria: map['filterMatchCriteria'] == null
          ? null
          : MetadataFilterFilterMatchCriteria2.fromValue(
              map['filterMatchCriteria'] as String),
    );
  }
}
