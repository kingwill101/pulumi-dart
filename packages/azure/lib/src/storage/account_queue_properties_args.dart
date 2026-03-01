// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_queue_properties_cors_rule.dart';
import 'account_queue_properties_hour_metrics.dart';
import 'account_queue_properties_logging.dart';
import 'account_queue_properties_minute_metrics.dart';

/// {@template pulumi_storage_account_queue_properties_account_queue_properties_args_doc}
/// The set of arguments for AccountQueueProperties.
/// {@endtemplate}
/// {@macro pulumi_storage_account_queue_properties_account_queue_properties_args_doc}
class AccountQueuePropertiesArgs {
  /// A `cors_rule` block as defined above.
  final pulumi.Input<List<AccountQueuePropertiesCorsRule>>? corsRules;
  /// A `hour_metrics` block as defined below.
  ///
  /// > **Note:** At least one of `cors_rule`, `logging`, `minute_metrics`, or `hour_metrics` must be specified.
  final pulumi.Input<AccountQueuePropertiesHourMetrics>? hourMetrics;
  /// A `logging` block as defined below.
  final pulumi.Input<AccountQueuePropertiesLogging>? logging;
  /// A `minute_metrics` block as defined below.
  final pulumi.Input<AccountQueuePropertiesMinuteMetrics>? minuteMetrics;
  /// The ID of the Storage Account to set Queue Properties on. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [AccountQueuePropertiesArgs].
  /// [corsRules] A `cors_rule` block as defined above.
  /// [hourMetrics] A `hour_metrics` block as defined below.
  /// [logging] A `logging` block as defined below.
  /// [minuteMetrics] A `minute_metrics` block as defined below.
  /// [storageAccountId] The ID of the Storage Account to set Queue Properties on. Changing this forces a new resource to be created.
  AccountQueuePropertiesArgs({
    List<AccountQueuePropertiesCorsRule>? corsRules,
    AccountQueuePropertiesHourMetrics? hourMetrics,
    AccountQueuePropertiesLogging? logging,
    AccountQueuePropertiesMinuteMetrics? minuteMetrics,
    required String storageAccountId,
  }) :
      corsRules = pulumi.Input.asOptionalInput<List<AccountQueuePropertiesCorsRule>>(corsRules),
      hourMetrics = pulumi.Input.asOptionalInput<AccountQueuePropertiesHourMetrics>(hourMetrics),
      logging = pulumi.Input.asOptionalInput<AccountQueuePropertiesLogging>(logging),
      minuteMetrics = pulumi.Input.asOptionalInput<AccountQueuePropertiesMinuteMetrics>(minuteMetrics),
      storageAccountId = pulumi.Input.asInput<String>(storageAccountId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corsRules': ?pulumi.Input.mapOptionalInputValue<List<AccountQueuePropertiesCorsRule>, List<Map<String, dynamic>>>(corsRules, (value) => pulumi.Input.encodeList<AccountQueuePropertiesCorsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hourMetrics': ?pulumi.Input.mapOptionalInputValue<AccountQueuePropertiesHourMetrics, Map<String, dynamic>>(hourMetrics, (value) => value.toMap()),
      'logging': ?pulumi.Input.mapOptionalInputValue<AccountQueuePropertiesLogging, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'minuteMetrics': ?pulumi.Input.mapOptionalInputValue<AccountQueuePropertiesMinuteMetrics, Map<String, dynamic>>(minuteMetrics, (value) => value.toMap()),
      'storageAccountId': storageAccountId,
    };
  }

  factory AccountQueuePropertiesArgs.fromMap(Map<String, dynamic> map) {
    return AccountQueuePropertiesArgs(
      corsRules: map['corsRules'] == null ? null : pulumi.Input.decodeList<AccountQueuePropertiesCorsRule>(map['corsRules'], (value) => AccountQueuePropertiesCorsRule.fromMap((value as Map).cast<String, dynamic>())),
      hourMetrics: map['hourMetrics'] == null ? null : AccountQueuePropertiesHourMetrics.fromMap((map['hourMetrics'] as Map).cast<String, dynamic>()),
      logging: map['logging'] == null ? null : AccountQueuePropertiesLogging.fromMap((map['logging'] as Map).cast<String, dynamic>()),
      minuteMetrics: map['minuteMetrics'] == null ? null : AccountQueuePropertiesMinuteMetrics.fromMap((map['minuteMetrics'] as Map).cast<String, dynamic>()),
      storageAccountId: map['storageAccountId'] as String,
    );
  }
}

