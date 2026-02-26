// ignore_for_file: unused_element, unnecessary_cast

import 'metadata_label_matcher.dart';

/// A definition of a matcher that selects endpoints to which the policies should be applied.
class EndpointMatcher2 {
  /// The matcher is based on node metadata presented by xDS clients.
  final MetadataLabelMatcher? metadataLabelMatcher;

  EndpointMatcher2({
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

  factory EndpointMatcher2.fromMap(Map<String, dynamic> map) {
    return EndpointMatcher2(
      metadataLabelMatcher: map['metadataLabelMatcher'] == null
          ? null
          : MetadataLabelMatcher.fromMap(
              (map['metadataLabelMatcher'] as Map).cast<String, dynamic>()),
    );
  }
}
