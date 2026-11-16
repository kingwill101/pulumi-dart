// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_setting_timeouts.dart';

/// {@template pulumi_directoryservice_directory_setting_directory_setting_args_doc}
/// The set of arguments for DirectorySetting.
/// {@endtemplate}
/// {@macro pulumi_directoryservice_directory_setting_directory_setting_args_doc}
class DirectorySettingArgs {
  /// ID of the directory.
  final pulumi.Input<String> directoryId;
  /// Name of the directory setting. For example, `TLS_1_0`.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  final pulumi.Input<DirectorySettingTimeouts?>? timeouts;
  /// Value of the directory setting. For example, `Disable` or `Enable`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> value;

  /// Creates a new [DirectorySettingArgs].
  /// [directoryId] ID of the directory.
  /// [name] Name of the directory setting. For example, `TLS_1_0`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  /// [value] Value of the directory setting. For example, `Disable` or `Enable`.
  const DirectorySettingArgs({
    required this.directoryId,
    this.name,
    this.region,
    this.timeouts,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': directoryId,
      'name': ?name,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DirectorySettingTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'value': value,
    };
  }

  factory DirectorySettingArgs.fromMap(Map<String, dynamic> map) {
    return DirectorySettingArgs(
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DirectorySettingTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
