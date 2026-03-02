// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_command_command_args_doc}
/// The set of arguments for Command.
/// {@endtemplate}
/// {@macro pulumi_eds_command_command_args_doc}
class CommandArgs {
  /// The Contents of the Script to Base64 Encoded Transmission.
  final pulumi.Input<String> commandContent;
  /// The Script Type. Valid values: `RunBatScript`, `RunPowerShellScript`.
  final pulumi.Input<String> commandType;
  /// That Returns the Data Encoding Method. Valid values: `Base64`, `PlainText`.
  final pulumi.Input<String>? contentEncoding;
  /// The desktop id of the Desktop.
  final pulumi.Input<String> desktopId;
  /// The timeout period for script execution the unit is seconds. Default to: `60`.
  final pulumi.Input<String>? timeout;

  /// Creates a new [CommandArgs].
  /// [commandContent] The Contents of the Script to Base64 Encoded Transmission.
  /// [commandType] The Script Type. Valid values: `RunBatScript`, `RunPowerShellScript`.
  /// [contentEncoding] That Returns the Data Encoding Method. Valid values: `Base64`, `PlainText`.
  /// [desktopId] The desktop id of the Desktop.
  /// [timeout] The timeout period for script execution the unit is seconds. Default to: `60`.
  CommandArgs({
    required this.commandContent,
    required this.commandType,
    this.contentEncoding,
    required this.desktopId,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandContent': commandContent,
      'commandType': commandType,
      'contentEncoding': ?contentEncoding,
      'desktopId': desktopId,
      'timeout': ?timeout,
    };
  }

  factory CommandArgs.fromMap(Map<String, dynamic> map) {
    return CommandArgs(
      commandContent: (map['commandContent'] as String).input(),
      commandType: (map['commandType'] as String).input(),
      contentEncoding: map['contentEncoding'] == null ? null : (map['contentEncoding']! as String).input(),
      desktopId: (map['desktopId'] as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as String).input(),
    );
  }
}

