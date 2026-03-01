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
    String? name,
    RecorderRecordingGroup? recordingGroup,
    RecorderRecordingMode? recordingMode,
    String? region,
    required String roleArn,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      recordingGroup = pulumi.Input.asOptionalInput<RecorderRecordingGroup>(recordingGroup),
      recordingMode = pulumi.Input.asOptionalInput<RecorderRecordingMode>(recordingMode),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asInput<String>(roleArn);

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
      name: map['name'] == null ? null : map['name'] as String,
      recordingGroup: map['recordingGroup'] == null ? null : RecorderRecordingGroup.fromMap((map['recordingGroup'] as Map).cast<String, dynamic>()),
      recordingMode: map['recordingMode'] == null ? null : RecorderRecordingMode.fromMap((map['recordingMode'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}

