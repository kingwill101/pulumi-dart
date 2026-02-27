// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../notification_channel_filters/notification_channel_filters.dart';
import '../notification_channel_sns/notification_channel_sns.dart';

/// The set of arguments for NotificationChannel.
class NotificationChannelArgs {
  /// Filter configurations for the Amazon SNS notification topic. See the `filters` argument reference below.
  final pulumi.Input<NotificationChannelFilters>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// SNS noficiation channel configurations. See the `sns` argument reference below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<NotificationChannelSns> sns;

  NotificationChannelArgs({
    this.filters,
    this.region,
    required this.sns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
          NotificationChannelFilters,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['sns'] = pulumi.Input.mapInputValue<NotificationChannelSns,
        Map<String, dynamic>>(sns, (value) => value.toMap());
    return map;
  }

  factory NotificationChannelArgs.fromMap(Map<String, dynamic> map) {
    return NotificationChannelArgs(
      filters: pulumi.Input.asOptionalInput<NotificationChannelFilters>(
          map['filters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sns: pulumi.Input.asInput<NotificationChannelSns>(map['sns']),
    );
  }
}
