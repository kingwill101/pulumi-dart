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
  UserAlarmConfigState({
    pulumi.Output<List<UserAlarmConfigAlarmConfig>>? alarmConfigs,
    pulumi.Output<String>? alarmLang,
    pulumi.Output<List<UserAlarmConfigContactConfig>>? contactConfigs,
    pulumi.Output<String>? lang,
    pulumi.Output<List<UserAlarmConfigNotifyConfig>>? notifyConfigs,
    pulumi.Output<String>? useDefaultContact,
  }) :
      alarmConfigs = pulumi.Input.asOptionalInput<List<UserAlarmConfigAlarmConfig>>(alarmConfigs),
      alarmLang = pulumi.Input.asOptionalInput<String>(alarmLang),
      contactConfigs = pulumi.Input.asOptionalInput<List<UserAlarmConfigContactConfig>>(contactConfigs),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      notifyConfigs = pulumi.Input.asOptionalInput<List<UserAlarmConfigNotifyConfig>>(notifyConfigs),
      useDefaultContact = pulumi.Input.asOptionalInput<String>(useDefaultContact);

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
      alarmConfigs: map['alarmConfigs'] == null ? null : pulumi.Output.create<List<UserAlarmConfigAlarmConfig>>(pulumi.Input.decodeList<UserAlarmConfigAlarmConfig>(map['alarmConfigs'], (value) => UserAlarmConfigAlarmConfig.fromMap((value as Map).cast<String, dynamic>()))),
      alarmLang: map['alarmLang'] == null ? null : pulumi.Output.create<String>(map['alarmLang'] as String),
      contactConfigs: map['contactConfigs'] == null ? null : pulumi.Output.create<List<UserAlarmConfigContactConfig>>(pulumi.Input.decodeList<UserAlarmConfigContactConfig>(map['contactConfigs'], (value) => UserAlarmConfigContactConfig.fromMap((value as Map).cast<String, dynamic>()))),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      notifyConfigs: map['notifyConfigs'] == null ? null : pulumi.Output.create<List<UserAlarmConfigNotifyConfig>>(pulumi.Input.decodeList<UserAlarmConfigNotifyConfig>(map['notifyConfigs'], (value) => UserAlarmConfigNotifyConfig.fromMap((value as Map).cast<String, dynamic>()))),
      useDefaultContact: map['useDefaultContact'] == null ? null : pulumi.Output.create<String>(map['useDefaultContact'] as String),
    );
  }
}

