// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_notification_channel_filter/get_notification_channel_filter.dart';
import '../get_notification_channel_sn/get_notification_channel_sn.dart';

/// Arguments for getNotificationChannel.
class GetNotificationChannelArgs {
  /// Filter configurations for the Amazon SNS notification topic. See the `filters` attribute reference below.
  final pulumi.Input<List<GetNotificationChannelFilter>>? filters;

  /// Unique identifier for the notification channel.
  final pulumi.Input<String> id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// SNS noficiation channel configurations. See the `sns` attribute reference below.
  final pulumi.Input<List<GetNotificationChannelSn>>? sns;

  GetNotificationChannelArgs({
    this.filters,
    required this.id,
    this.region,
    this.sns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetNotificationChannelFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetNotificationChannelFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['id'] = id;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final snsValue = sns;
    if (snsValue != null) {
      map['sns'] = pulumi.Input.mapOptionalInputValue<
              List<GetNotificationChannelSn>, List<Map<String, dynamic>>>(
          snsValue,
          (value) => pulumi.Input.encodeList<GetNotificationChannelSn,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory GetNotificationChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationChannelArgs(
      filters: pulumi.Input.asOptionalInput<List<GetNotificationChannelFilter>>(
          map['filters']),
      id: pulumi.Input.asInput<String>(map['id']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sns: pulumi.Input.asOptionalInput<List<GetNotificationChannelSn>>(
          map['sns']),
    );
  }
}
