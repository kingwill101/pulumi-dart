// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Command resources.
class CommandState {
  /// The Contents of the Script to Base64 Encoded Transmission.
  final pulumi.Input<String>? commandContent;
  /// The Script Type. Valid values: `RunBatScript`, `RunPowerShellScript`.
  final pulumi.Input<String>? commandType;
  /// That Returns the Data Encoding Method. Valid values: `Base64`, `PlainText`.
  final pulumi.Input<String>? contentEncoding;
  /// The desktop id of the Desktop.
  final pulumi.Input<String>? desktopId;
  /// Script Is Executed in the Overall Implementation of the State. Valid values: `Pending`, `Failed`, `PartialFailed`, `Running`, `Stopped`, `Stopping`, `Finished`, `Success`.
  final pulumi.Input<String>? status;
  /// The timeout period for script execution the unit is seconds. Default to: `60`.
  final pulumi.Input<String>? timeout;

  /// Creates a new [CommandState].
  /// [commandContent] The Contents of the Script to Base64 Encoded Transmission.
  /// [commandType] The Script Type. Valid values: `RunBatScript`, `RunPowerShellScript`.
  /// [contentEncoding] That Returns the Data Encoding Method. Valid values: `Base64`, `PlainText`.
  /// [desktopId] The desktop id of the Desktop.
  /// [status] Script Is Executed in the Overall Implementation of the State. Valid values: `Pending`, `Failed`, `PartialFailed`, `Running`, `Stopped`, `Stopping`, `Finished`, `Success`.
  /// [timeout] The timeout period for script execution the unit is seconds. Default to: `60`.
  CommandState({
    this.commandContent,
    this.commandType,
    this.contentEncoding,
    this.desktopId,
    this.status,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandContent': ?commandContent,
      'commandType': ?commandType,
      'contentEncoding': ?contentEncoding,
      'desktopId': ?desktopId,
      'status': ?status,
      'timeout': ?timeout,
    };
  }

  factory CommandState.fromMap(Map<String, dynamic> map) {
    return CommandState(
      commandContent: map['commandContent'] == null ? null : (map['commandContent']! as String).input(),
      commandType: map['commandType'] == null ? null : (map['commandType']! as String).input(),
      contentEncoding: map['contentEncoding'] == null ? null : (map['contentEncoding']! as String).input(),
      desktopId: map['desktopId'] == null ? null : (map['desktopId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as String).input(),
    );
  }
}

