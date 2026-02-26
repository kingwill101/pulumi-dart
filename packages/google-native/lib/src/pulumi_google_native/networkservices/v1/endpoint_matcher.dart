// ignore_for_file: unused_element, unnecessary_cast

import 'endpoint_matcher_metadata_label_matcher.dart';

/// A definition of a matcher that selects endpoints to which the policies should be applied.
class EndpointMatcher {
  /// The matcher is based on node metadata presented by xDS clients.
  final EndpointMatcherMetadataLabelMatcher? metadataLabelMatcher;

  EndpointMatcher({
    this.metadataLabelMatcher,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metadataLabelMatcherValue = metadataLabelMatcher;
    if (metadataLabelMatcherValue != null) {
      map['metadataLabelMatcher'] = metadataLabelMatcherValue.toMap();
    }
    return map;
  }

  factory EndpointMatcher.fromMap(Map<String, dynamic> map) {
    return EndpointMatcher(
      metadataLabelMatcher: map['metadataLabelMatcher'] == null
          ? null
          : EndpointMatcherMetadataLabelMatcher.fromMap(
              (map['metadataLabelMatcher'] as Map).cast<String, dynamic>()),
    );
  }
}
