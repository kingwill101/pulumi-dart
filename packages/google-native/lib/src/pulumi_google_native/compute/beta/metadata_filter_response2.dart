// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'metadata_filter_label_match_response2.dart';

/// Opaque filter criteria used by load balancers to restrict routing configuration to a limited set of load balancing proxies. Proxies and sidecars involved in load balancing would typically present metadata to the load balancers that need to match criteria specified here. If a match takes place, the relevant configuration is made available to those proxies. For each metadataFilter in this list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the filterLabels must match the corresponding label provided in the metadata. If its filterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match with corresponding labels provided in the metadata. An example for using metadataFilters would be: if load balancing involves Envoys, they receive routing configuration when values in metadataFilters match values supplied in of their XDS requests to loadbalancers.
class MetadataFilterResponse2 {
  /// The list of label value pairs that must match labels in the provided metadata based on filterMatchCriteria This list must not be empty and can have at the most 64 entries.
  final List<MetadataFilterLabelMatchResponse2> filterLabels;

  /// Specifies how individual filter label matches within the list of filterLabels and contributes toward the overall metadataFilter match. Supported values are: - MATCH_ANY: at least one of the filterLabels must have a matching label in the provided metadata. - MATCH_ALL: all filterLabels must have matching labels in the provided metadata.
  final String filterMatchCriteria;

  MetadataFilterResponse2({
    required this.filterLabels,
    required this.filterMatchCriteria,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filterLabels'] = Input.encodeList<MetadataFilterLabelMatchResponse2,
        Map<String, dynamic>>(filterLabels, (value) => value.toMap());
    map['filterMatchCriteria'] = filterMatchCriteria;
    return map;
  }

  factory MetadataFilterResponse2.fromMap(Map<String, dynamic> map) {
    return MetadataFilterResponse2(
      filterLabels: Input.decodeList<MetadataFilterLabelMatchResponse2>(
          map['filterLabels'],
          (value) => MetadataFilterLabelMatchResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      filterMatchCriteria: map['filterMatchCriteria'] as String,
    );
  }
}
