// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'webhook_filter.dart';

/// Definition of FilterGroup
class FilterGroup {
  /// Property webhookFilter
  final pulumi.Input<WebhookFilter>? webhookFilter;

  /// Creates a new [FilterGroup].
  /// [webhookFilter] Property webhookFilter
  FilterGroup({
    this.webhookFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'webhookFilter': ?pulumi.Input.mapOptionalInputValue<WebhookFilter, Map<String, dynamic>>(webhookFilter, (value) => value.toMap()),
    };
  }

  factory FilterGroup.fromMap(Map<String, dynamic> map) {
    return FilterGroup(
      webhookFilter: map['webhookFilter'] == null ? null : (WebhookFilter.fromMap((map['webhookFilter'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

