// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'webhook_filter_group_filter.dart';

class WebhookFilterGroup {
  /// A webhook filter for the group. See filter for details.
  final List<WebhookFilterGroupFilter>? filters;

  /// Creates a new [WebhookFilterGroup].
  /// [filters] A webhook filter for the group. See filter for details.
  WebhookFilterGroup({this.filters});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null
          ? null
          : pulumi.Input.encodeList<
              WebhookFilterGroupFilter,
              Map<String, dynamic>
            >(filters!, (value) => value.toMap()),
    };
  }

  factory WebhookFilterGroup.fromMap(Map<String, dynamic> map) {
    return WebhookFilterGroup(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<WebhookFilterGroupFilter>(
              map['filters'],
              (value) => WebhookFilterGroupFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
