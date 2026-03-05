// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recorder_recording_group.dart';
import 'recorder_recording_mode.dart';

/// {@template pulumi_cfg_recorder_recorder_args_doc}
/// The set of arguments for Recorder.
/// {@endtemplate}
/// {@macro pulumi_cfg_recorder_recorder_args_doc}
class RecorderArgs {
  /// The name of the recorder. Defaults to `default`. Changing it recreates the resource.
  final pulumi.Input<String>? name;
  /// Recording group - see below.
  final pulumi.Input<RecorderRecordingGroup>? recordingGroup;
  /// Recording mode - see below.
  final pulumi.Input<RecorderRecordingMode>? recordingMode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) of the IAM role. Used to make read or write requests to the delivery channel and to describe the AWS resources associated with the account. See [AWS Docs](http://docs.aws.amazon.com/config/latest/developerguide/iamrole-permissions.html) for more details.
  final pulumi.Input<String> roleArn;

  /// Creates a new [RecorderArgs].
  /// [name] The name of the recorder. Defaults to `default`. Changing it recreates the resource.
  /// [recordingGroup] Recording group - see below.
  /// [recordingMode] Recording mode - see below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] Amazon Resource Name (ARN) of the IAM role. Used to make read or write requests to the delivery channel and to describe the AWS resources associated with the account. See [AWS Docs](http://docs.aws.amazon.com/config/latest/developerguide/iamrole-permissions.html) for more details.
  RecorderArgs({
    this.name,
    this.recordingGroup,
    this.recordingMode,
    this.region,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'recordingGroup': ?pulumi.Input.mapOptionalInputValue<RecorderRecordingGroup, Map<String, dynamic>>(recordingGroup, (value) => value.toMap()),
      'recordingMode': ?pulumi.Input.mapOptionalInputValue<RecorderRecordingMode, Map<String, dynamic>>(recordingMode, (value) => value.toMap()),
      'region': ?region,
      'roleArn': roleArn,
    };
  }

  factory RecorderArgs.fromMap(Map<String, dynamic> map) {
    return RecorderArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recordingGroup: (() { final guardedValue = map['recordingGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecorderRecordingGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recordingMode: (() { final guardedValue = map['recordingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecorderRecordingMode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}

