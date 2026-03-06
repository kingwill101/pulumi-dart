// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_alarm_config_alarm_config.dart';
import 'user_alarm_config_contact_config.dart';
import 'user_alarm_config_notify_config.dart';

/// Input properties used for looking up and filtering UserAlarmConfig resources.
class UserAlarmConfigState {
  /// The alarm configuration. More details see `alarm_config` below.
  final pulumi.Input<List<UserAlarmConfigAlarmConfig>>? alarmConfigs;
  /// The alarm language. Possible values are `zh`, `en`.
  final pulumi.Input<String>? alarmLang;
  /// Conflict with `notify_config`. The contact configuration. More details see `contact_config` below.
  final pulumi.Input<List<UserAlarmConfigContactConfig>>? contactConfigs;
  final pulumi.Input<String>? lang;
  /// Conflict with `contact_config`. The notification configuration. More details see `notify_config` below.
  final pulumi.Input<List<UserAlarmConfigNotifyConfig>>? notifyConfigs;
  final pulumi.Input<String>? useDefaultContact;

  /// Creates a new [UserAlarmConfigState].
  /// [alarmConfigs] The alarm configuration. More details see `alarm_config` below.
  /// [alarmLang] The alarm language. Possible values are `zh`, `en`.
  /// [contactConfigs] Conflict with `notify_config`. The contact configuration. More details see `contact_config` below.
  /// [lang] Optional.
  /// [notifyConfigs] Conflict with `contact_config`. The notification configuration. More details see `notify_config` below.
  /// [useDefaultContact] Optional.
  const UserAlarmConfigState({
    this.alarmConfigs,
    this.alarmLang,
    this.contactConfigs,
    this.lang,
    this.notifyConfigs,
    this.useDefaultContact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmConfigs': ?pulumi.Input.mapOptionalInputValue<List<UserAlarmConfigAlarmConfig>, List<Map<String, dynamic>>>(alarmConfigs, (value) => pulumi.Input.encodeList<UserAlarmConfigAlarmConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'alarmLang': ?alarmLang,
      'contactConfigs': ?pulumi.Input.mapOptionalInputValue<List<UserAlarmConfigContactConfig>, List<Map<String, dynamic>>>(contactConfigs, (value) => pulumi.Input.encodeList<UserAlarmConfigContactConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lang': ?lang,
      'notifyConfigs': ?pulumi.Input.mapOptionalInputValue<List<UserAlarmConfigNotifyConfig>, List<Map<String, dynamic>>>(notifyConfigs, (value) => pulumi.Input.encodeList<UserAlarmConfigNotifyConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'useDefaultContact': ?useDefaultContact,
    };
  }

  factory UserAlarmConfigState.fromMap(Map<String, dynamic> map) {
    return UserAlarmConfigState(
      alarmConfigs: (() { final guardedValue = map['alarmConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserAlarmConfigAlarmConfig>(guardedValue, (value) => UserAlarmConfigAlarmConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      alarmLang: (() { final guardedValue = map['alarmLang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contactConfigs: (() { final guardedValue = map['contactConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserAlarmConfigContactConfig>(guardedValue, (value) => UserAlarmConfigContactConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notifyConfigs: (() { final guardedValue = map['notifyConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserAlarmConfigNotifyConfig>(guardedValue, (value) => UserAlarmConfigNotifyConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      useDefaultContact: (() { final guardedValue = map['useDefaultContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

