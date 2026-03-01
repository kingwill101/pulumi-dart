// ignore_for_file: unused_element, unnecessary_cast

import 'webhook_filter_response.dart';

/// Definition of FilterGroup
class FilterGroupResponse {
  /// Property webhookFilter
  final WebhookFilterResponse? webhookFilter;

  /// Creates a new [FilterGroupResponse].
  /// [webhookFilter] Property webhookFilter
  FilterGroupResponse({
    this.webhookFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'webhookFilter': ?webhookFilter == null ? null : webhookFilter!.toMap(),
    };
  }

  factory FilterGroupResponse.fromMap(Map<String, dynamic> map) {
    return FilterGroupResponse(
      webhookFilter: map['webhookFilter'] == null ? null : WebhookFilterResponse.fromMap((map['webhookFilter'] as Map).cast<String, dynamic>()),
    );
  }
}

