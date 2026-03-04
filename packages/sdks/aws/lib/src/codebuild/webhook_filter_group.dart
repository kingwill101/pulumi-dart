// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'webhook_filter_group_filter.dart';

class WebhookFilterGroup {
  /// A webhook filter for the group. See filter for details.
  final pulumi.Input<List<WebhookFilterGroupFilter>>? filters;

  /// Creates a new [WebhookFilterGroup].
  /// [filters] A webhook filter for the group. See filter for details.
  WebhookFilterGroup({this.filters});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<WebhookFilterGroupFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  WebhookFilterGroupFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory WebhookFilterGroup.fromMap(Map<String, dynamic> map) {
    return WebhookFilterGroup(
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WebhookFilterGroupFilter>(
            guardedValue,
            (value) => WebhookFilterGroupFilter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
