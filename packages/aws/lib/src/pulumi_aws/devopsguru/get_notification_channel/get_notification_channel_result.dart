// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_notification_channel_filter/get_notification_channel_filter.dart';
import '../get_notification_channel_sn/get_notification_channel_sn.dart';

/// Result data returned by getNotificationChannel.
class GetNotificationChannelResult {
  /// Filter configurations for the Amazon SNS notification topic. See the `filters` attribute reference below.
  final List<GetNotificationChannelFilter>? filters;
  final String id;
  final String region;

  /// SNS noficiation channel configurations. See the `sns` attribute reference below.
  final List<GetNotificationChannelSn>? sns;

  GetNotificationChannelResult({
    this.filters,
    required this.id,
    required this.region,
    this.sns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<GetNotificationChannelFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['region'] = region;
    final snsValue = sns;
    if (snsValue != null) {
      map['sns'] = pulumi.Input.encodeList<GetNotificationChannelSn,
          Map<String, dynamic>>(snsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GetNotificationChannelResult.fromMap(Map<String, dynamic> map) {
    return GetNotificationChannelResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetNotificationChannelFilter>(
              map['filters'],
              (value) => GetNotificationChannelFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
      sns: map['sns'] == null
          ? null
          : pulumi.Input.decodeList<GetNotificationChannelSn>(
              map['sns'],
              (value) => GetNotificationChannelSn.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
