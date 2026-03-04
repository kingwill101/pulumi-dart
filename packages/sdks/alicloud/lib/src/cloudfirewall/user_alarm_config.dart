import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_alarm_config_args.dart';
import 'user_alarm_config_state.dart';

/// ## Import
///
/// Cloud Firewall User Alarm Config can be imported using the `Account ID`, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudfirewall/userAlarmConfig:UserAlarmConfig example <Alibaba Cloud Account ID>
/// ```
class UserAlarmConfig extends pulumi.CustomResource {
  /// The alarm configuration. More details see `alarm_config` below.
  late final pulumi.Output<List<Map<String, dynamic>>> alarmConfigs;

  /// The alarm language. Possible values are `zh`, `en`.
  late final pulumi.Output<String?> alarmLang;

  /// Conflict with `notify_config`. The contact configuration. More details see `contact_config` below.
  late final pulumi.Output<List<Map<String, dynamic>>> contactConfigs;
  late final pulumi.Output<String?> lang;

  /// Conflict with `contact_config`. The notification configuration. More details see `notify_config` below.
  late final pulumi.Output<List<Map<String, dynamic>>> notifyConfigs;
  late final pulumi.Output<String?> useDefaultContact;

  /// Creates a new [UserAlarmConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserAlarmConfig]. {@macro pulumi_cloudfirewall_user_alarm_config_user_alarm_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserAlarmConfig(
    String name, {
    UserAlarmConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cloudfirewall/userAlarmConfig:UserAlarmConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    alarmConfigs = registerOutput<List<Map<String, dynamic>>>('alarmConfigs');
    alarmLang = registerOutput<String?>('alarmLang');
    contactConfigs = registerOutput<List<Map<String, dynamic>>>(
      'contactConfigs',
    );
    lang = registerOutput<String?>('lang');
    notifyConfigs = registerOutput<List<Map<String, dynamic>>>('notifyConfigs');
    useDefaultContact = registerOutput<String?>('useDefaultContact');
  }

  /// Gets an existing [UserAlarmConfig] resource's state with the given [name] and [id].
  static UserAlarmConfig get(
    String name,
    pulumi.Input<String> id, {
    UserAlarmConfigState? state,
  }) {
    return UserAlarmConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UserAlarmConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cloudfirewall/userAlarmConfig:UserAlarmConfig',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    alarmConfigs = registerOutput<List<Map<String, dynamic>>>('alarmConfigs');
    alarmLang = registerOutput<String?>('alarmLang');
    contactConfigs = registerOutput<List<Map<String, dynamic>>>(
      'contactConfigs',
    );
    lang = registerOutput<String?>('lang');
    notifyConfigs = registerOutput<List<Map<String, dynamic>>>('notifyConfigs');
    useDefaultContact = registerOutput<String?>('useDefaultContact');
  }
}
