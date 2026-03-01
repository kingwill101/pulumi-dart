// ignore_for_file: unused_element, unnecessary_cast

import 'webhook_filter.dart';

/// Definition of FilterGroup
class FilterGroup {
  /// Property webhookFilter
  final WebhookFilter? webhookFilter;

  /// Creates a new [FilterGroup].
  /// [webhookFilter] Property webhookFilter
  FilterGroup({
    this.webhookFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'webhookFilter': ?webhookFilter == null ? null : webhookFilter!.toMap(),
    };
  }

  factory FilterGroup.fromMap(Map<String, dynamic> map) {
    return FilterGroup(
      webhookFilter: map['webhookFilter'] == null ? null : WebhookFilter.fromMap((map['webhookFilter'] as Map).cast<String, dynamic>()),
    );
  }
}

