// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_notification_channel_filter/get_notification_channel_filter.dart';
import '../get_notification_channel_sn/get_notification_channel_sn.dart';

/// Arguments for getNotificationChannel.
class GetNotificationChannelArgs {
  /// Filter configurations for the Amazon SNS notification topic. See the <span pulumi-lang-nodejs="`filters`" pulumi-lang-dotnet="`Filters`" pulumi-lang-go="`filters`" pulumi-lang-python="`filters`" pulumi-lang-yaml="`filters`" pulumi-lang-java="`filters`">`filters`</span> attribute reference below.
  final Input<List<GetNotificationChannelFilter>>? filters;

  /// Unique identifier for the notification channel.
  final Input<String> id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// SNS noficiation channel configurations. See the <span pulumi-lang-nodejs="`sns`" pulumi-lang-dotnet="`Sns`" pulumi-lang-go="`sns`" pulumi-lang-python="`sns`" pulumi-lang-yaml="`sns`" pulumi-lang-java="`sns`">`sns`</span> attribute reference below.
  final Input<List<GetNotificationChannelSn>>? sns;

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
      map['filters'] = Input.mapOptionalInputValue<
              List<GetNotificationChannelFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetNotificationChannelFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['id'] = id;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final snsValue = sns;
    if (snsValue != null) {
      map['sns'] = Input.mapOptionalInputValue<List<GetNotificationChannelSn>,
              List<Map<String, dynamic>>>(
          snsValue,
          (value) =>
              Input.encodeList<GetNotificationChannelSn, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory GetNotificationChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationChannelArgs(
      filters: Input.asOptionalInput<List<GetNotificationChannelFilter>>(
          map['filters']),
      id: Input.asInput<String>(map['id']),
      region: Input.asOptionalInput<String>(map['region']),
      sns: Input.asOptionalInput<List<GetNotificationChannelSn>>(map['sns']),
    );
  }
}
