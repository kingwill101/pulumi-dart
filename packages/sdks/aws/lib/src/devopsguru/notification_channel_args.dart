// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_channel_filters.dart';
import 'notification_channel_sns.dart';

/// {@template pulumi_devopsguru_notification_channel_notification_channel_args_doc}
/// The set of arguments for NotificationChannel.
/// {@endtemplate}
/// {@macro pulumi_devopsguru_notification_channel_notification_channel_args_doc}
class NotificationChannelArgs {
  /// Filter configurations for the Amazon SNS notification topic. See the `filters` argument reference below.
  final pulumi.Input<NotificationChannelFilters>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// SNS noficiation channel configurations. See the `sns` argument reference below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<NotificationChannelSns> sns;

  /// Creates a new [NotificationChannelArgs].
  /// [filters] Filter configurations for the Amazon SNS notification topic. See the `filters` argument reference below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sns] SNS noficiation channel configurations. See the `sns` argument reference below.
  NotificationChannelArgs({
    this.filters,
    this.region,
    required this.sns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<NotificationChannelFilters, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'region': ?region,
      'sns': pulumi.Input.mapInputValue<NotificationChannelSns, Map<String, dynamic>>(sns, (value) => value.toMap()),
    };
  }

  factory NotificationChannelArgs.fromMap(Map<String, dynamic> map) {
    return NotificationChannelArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotificationChannelFilters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sns: pulumi.Input.fromValue(NotificationChannelSns.fromMap((map['sns']! as Map).cast<String, dynamic>())),
    );
  }
}

