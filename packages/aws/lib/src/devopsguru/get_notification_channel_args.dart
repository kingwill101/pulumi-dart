// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_notification_channel_filter.dart';
import 'get_notification_channel_sn.dart';

/// {@template pulumi_devopsguru_get_notification_channel_get_notification_channel_args_doc}
/// Arguments for getNotificationChannel.
/// {@endtemplate}
/// {@macro pulumi_devopsguru_get_notification_channel_get_notification_channel_args_doc}
class GetNotificationChannelArgs {
  /// Filter configurations for the Amazon SNS notification topic. See the `filters` attribute reference below.
  final pulumi.Input<List<GetNotificationChannelFilter>>? filters;
  /// Unique identifier for the notification channel.
  final pulumi.Input<String> id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// SNS noficiation channel configurations. See the `sns` attribute reference below.
  final pulumi.Input<List<GetNotificationChannelSn>>? sns;

  /// Creates a new [GetNotificationChannelArgs].
  /// [filters] Filter configurations for the Amazon SNS notification topic. See the `filters` attribute reference below.
  /// [id] Unique identifier for the notification channel.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sns] SNS noficiation channel configurations. See the `sns` attribute reference below.
  GetNotificationChannelArgs({
    List<GetNotificationChannelFilter>? filters,
    required String id,
    String? region,
    List<GetNotificationChannelSn>? sns,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetNotificationChannelFilter>>(filters),
      id = pulumi.Input.asInput<String>(id),
      region = pulumi.Input.asOptionalInput<String>(region),
      sns = pulumi.Input.asOptionalInput<List<GetNotificationChannelSn>>(sns);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetNotificationChannelFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetNotificationChannelFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'region': ?region,
      'sns': ?pulumi.Input.mapOptionalInputValue<List<GetNotificationChannelSn>, List<Map<String, dynamic>>>(sns, (value) => pulumi.Input.encodeList<GetNotificationChannelSn, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetNotificationChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationChannelArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetNotificationChannelFilter>(map['filters'], (value) => GetNotificationChannelFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      sns: map['sns'] == null ? null : pulumi.Input.decodeList<GetNotificationChannelSn>(map['sns'], (value) => GetNotificationChannelSn.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

