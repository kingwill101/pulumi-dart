// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_alarm_config_alarm_config.dart';
import 'user_alarm_config_contact_config.dart';
import 'user_alarm_config_notify_config.dart';

/// {@template pulumi_cloudfirewall_user_alarm_config_user_alarm_config_args_doc}
/// The set of arguments for UserAlarmConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_user_alarm_config_user_alarm_config_args_doc}
class UserAlarmConfigArgs {
  /// The alarm configuration. More details see `alarm_config` below.
  final pulumi.Input<List<UserAlarmConfigAlarmConfig>> alarmConfigs;
  /// The alarm language. Possible values are `zh`, `en`.
  final pulumi.Input<String>? alarmLang;
  /// Conflict with `notify_config`. The contact configuration. More details see `contact_config` below.
  final pulumi.Input<List<UserAlarmConfigContactConfig>>? contactConfigs;
  final pulumi.Input<String>? lang;
  /// Conflict with `contact_config`. The notification configuration. More details see `notify_config` below.
  final pulumi.Input<List<UserAlarmConfigNotifyConfig>>? notifyConfigs;
  final pulumi.Input<String>? useDefaultContact;

  /// Creates a new [UserAlarmConfigArgs].
  /// [alarmConfigs] The alarm configuration. More details see `alarm_config` below.
  /// [alarmLang] The alarm language. Possible values are `zh`, `en`.
  /// [contactConfigs] Conflict with `notify_config`. The contact configuration. More details see `contact_config` below.
  /// [lang] Optional.
  /// [notifyConfigs] Conflict with `contact_config`. The notification configuration. More details see `notify_config` below.
  /// [useDefaultContact] Optional.
  const UserAlarmConfigArgs({
    required this.alarmConfigs,
    this.alarmLang,
    this.contactConfigs,
    this.lang,
    this.notifyConfigs,
    this.useDefaultContact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmConfigs': pulumi.Input.mapInputValue<List<UserAlarmConfigAlarmConfig>, List<Map<String, dynamic>>>(alarmConfigs, (value) => pulumi.Input.encodeList<UserAlarmConfigAlarmConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'alarmLang': ?alarmLang,
      'contactConfigs': ?pulumi.Input.mapOptionalInputValue<List<UserAlarmConfigContactConfig>, List<Map<String, dynamic>>>(contactConfigs, (value) => pulumi.Input.encodeList<UserAlarmConfigContactConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lang': ?lang,
      'notifyConfigs': ?pulumi.Input.mapOptionalInputValue<List<UserAlarmConfigNotifyConfig>, List<Map<String, dynamic>>>(notifyConfigs, (value) => pulumi.Input.encodeList<UserAlarmConfigNotifyConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'useDefaultContact': ?useDefaultContact,
    };
  }

  factory UserAlarmConfigArgs.fromMap(Map<String, dynamic> map) {
    return UserAlarmConfigArgs(
      alarmConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<UserAlarmConfigAlarmConfig>(map['alarmConfigs']!, (value) => UserAlarmConfigAlarmConfig.fromMap((value as Map).cast<String, dynamic>()))),
      alarmLang: (() { final guardedValue = map['alarmLang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contactConfigs: (() { final guardedValue = map['contactConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserAlarmConfigContactConfig>(guardedValue, (value) => UserAlarmConfigContactConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notifyConfigs: (() { final guardedValue = map['notifyConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserAlarmConfigNotifyConfig>(guardedValue, (value) => UserAlarmConfigNotifyConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      useDefaultContact: (() { final guardedValue = map['useDefaultContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

