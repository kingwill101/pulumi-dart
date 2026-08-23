// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'webhook_filter.dart';

/// Definition of FilterGroup
class FilterGroup {
  /// Property webhookFilter
  final pulumi.Input<WebhookFilter>? webhookFilter;

  /// Creates a new [FilterGroup].
  /// [webhookFilter] Property webhookFilter
  const FilterGroup({
    this.webhookFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'webhookFilter': ?pulumi.Input.mapOptionalInputValue<WebhookFilter, Map<String, dynamic>>(webhookFilter, (value) => value.toMap()),
    };
  }

  factory FilterGroup.fromMap(Map<String, dynamic> map) {
    return FilterGroup(
      webhookFilter: (() { final guardedValue = map['webhookFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebhookFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
