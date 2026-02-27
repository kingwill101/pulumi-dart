// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../recorder_recording_group/recorder_recording_group.dart';
import '../recorder_recording_mode/recorder_recording_mode.dart';

/// The set of arguments for Recorder.
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

  RecorderArgs({
    this.name,
    this.recordingGroup,
    this.recordingMode,
    this.region,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final recordingGroupValue = recordingGroup;
    if (recordingGroupValue != null) {
      map['recordingGroup'] = pulumi.Input.mapOptionalInputValue<
          RecorderRecordingGroup,
          Map<String, dynamic>>(recordingGroupValue, (value) => value.toMap());
    }
    final recordingModeValue = recordingMode;
    if (recordingModeValue != null) {
      map['recordingMode'] = pulumi.Input.mapOptionalInputValue<
          RecorderRecordingMode,
          Map<String, dynamic>>(recordingModeValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    return map;
  }

  factory RecorderArgs.fromMap(Map<String, dynamic> map) {
    return RecorderArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      recordingGroup: pulumi.Input.asOptionalInput<RecorderRecordingGroup>(
          map['recordingGroup']),
      recordingMode: pulumi.Input.asOptionalInput<RecorderRecordingMode>(
          map['recordingMode']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
    );
  }
}
