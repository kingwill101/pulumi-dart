// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_matcher_metadata_label_matcher_metadata_label_match_criteria.dart';
import 'endpoint_matcher_metadata_label_matcher_metadata_labels.dart';

/// The matcher that is based on node metadata presented by xDS clients.
class EndpointMatcherMetadataLabelMatcher {
  /// Specifies how matching should be done. Supported values are: MATCH_ANY: At least one of the Labels specified in the matcher should match the metadata presented by xDS client. MATCH_ALL: The metadata presented by the xDS client should contain all of the labels specified here. The selection is determined based on the best match. For example, suppose there are three EndpointPolicy resources P1, P2 and P3 and if P1 has a the matcher as MATCH_ANY , P2 has MATCH_ALL , and P3 has MATCH_ALL . If a client with label connects, the config from P1 will be selected. If a client with label connects, the config from P2 will be selected. If a client with label connects, the config from P3 will be selected. If there is more than one best match, (for example, if a config P4 with selector exists and if a client with label connects), an error will be thrown.
  final EndpointMatcherMetadataLabelMatcherMetadataLabelMatchCriteria?
      metadataLabelMatchCriteria;

  /// The list of label value pairs that must match labels in the provided metadata based on filterMatchCriteria This list can have at most 64 entries. The list can be empty if the match criteria is MATCH_ANY, to specify a wildcard match (i.e this matches any client).
  final List<EndpointMatcherMetadataLabelMatcherMetadataLabels>? metadataLabels;

  EndpointMatcherMetadataLabelMatcher({
    this.metadataLabelMatchCriteria,
    this.metadataLabels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metadataLabelMatchCriteriaValue = metadataLabelMatchCriteria;
    if (metadataLabelMatchCriteriaValue != null) {
      map['metadataLabelMatchCriteria'] = metadataLabelMatchCriteriaValue.value;
    }
    final metadataLabelsValue = metadataLabels;
    if (metadataLabelsValue != null) {
      map['metadataLabels'] = pulumi.Input.encodeList<
          EndpointMatcherMetadataLabelMatcherMetadataLabels,
          Map<String, dynamic>>(metadataLabelsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EndpointMatcherMetadataLabelMatcher.fromMap(
      Map<String, dynamic> map) {
    return EndpointMatcherMetadataLabelMatcher(
      metadataLabelMatchCriteria: map['metadataLabelMatchCriteria'] == null
          ? null
          : EndpointMatcherMetadataLabelMatcherMetadataLabelMatchCriteria
              .fromValue(map['metadataLabelMatchCriteria'] as String),
      metadataLabels: map['metadataLabels'] == null
          ? null
          : pulumi.Input.decodeList<
                  EndpointMatcherMetadataLabelMatcherMetadataLabels>(
              map['metadataLabels'],
              (value) =>
                  EndpointMatcherMetadataLabelMatcherMetadataLabels.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
