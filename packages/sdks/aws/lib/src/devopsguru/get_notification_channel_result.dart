// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_notification_channel_filter.dart';
import 'get_notification_channel_sn.dart';

/// Result data returned by getNotificationChannel.
class GetNotificationChannelResult {
  /// Filter configurations for the Amazon SNS notification topic. See the `filters` attribute reference below.
  final List<GetNotificationChannelFilter>? filters;
  final String id;
  final String region;
  /// SNS noficiation channel configurations. See the `sns` attribute reference below.
  final List<GetNotificationChannelSn>? sns;

  /// Creates a new [GetNotificationChannelResult].
  /// [filters] Filter configurations for the Amazon SNS notification topic. See the `filters` attribute reference below.
  /// [id] Required.
  /// [region] Required.
  /// [sns] SNS noficiation channel configurations. See the `sns` attribute reference below.
  const GetNotificationChannelResult({
    this.filters,
    required this.id,
    required this.region,
    this.sns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNotificationChannelFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'region': region,
      'sns': ?(() { final guardedValue = sns; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNotificationChannelSn, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetNotificationChannelResult.fromMap(Map<String, dynamic> map) {
    return GetNotificationChannelResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNotificationChannelFilter>(guardedValue, (value) => GetNotificationChannelFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      region: map['region'] as String,
      sns: (() { final guardedValue = map['sns']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNotificationChannelSn>(guardedValue, (value) => GetNotificationChannelSn.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

