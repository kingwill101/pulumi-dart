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
    required pulumi.Output<String> commandContent,
    required pulumi.Output<String> commandType,
    pulumi.Output<String>? contentEncoding,
    required pulumi.Output<String> desktopId,
    pulumi.Output<String>? timeout,
  }) :
      commandContent = pulumi.Input.asInput<String>(commandContent),
      commandType = pulumi.Input.asInput<String>(commandType),
      contentEncoding = pulumi.Input.asOptionalInput<String>(contentEncoding),
      desktopId = pulumi.Input.asInput<String>(desktopId),
      timeout = pulumi.Input.asOptionalInput<String>(timeout);

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
      commandContent: pulumi.Output.create<String>(map['commandContent'] as String),
      commandType: pulumi.Output.create<String>(map['commandType'] as String),
      contentEncoding: map['contentEncoding'] == null ? null : pulumi.Output.create<String>(map['contentEncoding'] as String),
      desktopId: pulumi.Output.create<String>(map['desktopId'] as String),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<String>(map['timeout'] as String),
    );
  }
}

