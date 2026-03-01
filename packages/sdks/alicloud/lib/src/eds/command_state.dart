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
    pulumi.Output<String>? commandContent,
    pulumi.Output<String>? commandType,
    pulumi.Output<String>? contentEncoding,
    pulumi.Output<String>? desktopId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? timeout,
  }) :
      commandContent = pulumi.Input.asOptionalInput<String>(commandContent),
      commandType = pulumi.Input.asOptionalInput<String>(commandType),
      contentEncoding = pulumi.Input.asOptionalInput<String>(contentEncoding),
      desktopId = pulumi.Input.asOptionalInput<String>(desktopId),
      status = pulumi.Input.asOptionalInput<String>(status),
      timeout = pulumi.Input.asOptionalInput<String>(timeout);

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
      commandContent: map['commandContent'] == null ? null : pulumi.Output.create<String>(map['commandContent'] as String),
      commandType: map['commandType'] == null ? null : pulumi.Output.create<String>(map['commandType'] as String),
      contentEncoding: map['contentEncoding'] == null ? null : pulumi.Output.create<String>(map['contentEncoding'] as String),
      desktopId: map['desktopId'] == null ? null : pulumi.Output.create<String>(map['desktopId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<String>(map['timeout'] as String),
    );
  }
}

