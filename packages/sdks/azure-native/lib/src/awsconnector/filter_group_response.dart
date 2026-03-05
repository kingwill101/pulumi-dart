// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'webhook_filter_response.dart';

/// Definition of FilterGroup
class FilterGroupResponse {
  /// Property webhookFilter
  final pulumi.Input<WebhookFilterResponse>? webhookFilter;

  /// Creates a new [FilterGroupResponse].
  /// [webhookFilter] Property webhookFilter
  FilterGroupResponse({
    this.webhookFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'webhookFilter': ?pulumi.Input.mapOptionalInputValue<WebhookFilterResponse, Map<String, dynamic>>(webhookFilter, (value) => value.toMap()),
    };
  }

  factory FilterGroupResponse.fromMap(Map<String, dynamic> map) {
    return FilterGroupResponse(
      webhookFilter: (() { final guardedValue = map['webhookFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebhookFilterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

