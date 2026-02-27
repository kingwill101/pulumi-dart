import 'package:pulumi/pulumi.dart';
import '../recorder_recording_group/recorder_recording_group.dart';
import '../recorder_recording_mode/recorder_recording_mode.dart';
import 'recorder_args.dart';

/// Provides an AWS Config Configuration Recorder. Please note that this resource **does not start** the created recorder automatically.
///
/// > **Note:** _Starting_ the Configuration Recorder requires a delivery channel (while delivery channel creation requires Configuration Recorder). This is why `aws.cfg.RecorderStatus` is a separate resource.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Exclude Resources Types Usage
///
///
///
/// ### Periodic Recording
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Configuration Recorder using the name. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/recorder:Recorder foo example
/// ```
class Recorder extends CustomResource {
  /// The name of the recorder. Defaults to `default`. Changing it recreates the resource.
  late final Output<String> name;

  /// Recording group - see below.
  late final Output<RecorderRecordingGroup> recordingGroup;

  /// Recording mode - see below.
  late final Output<RecorderRecordingMode> recordingMode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Amazon Resource Name (ARN) of the IAM role. Used to make read or write requests to the delivery channel and to describe the AWS resources associated with the account. See [AWS Docs](http://docs.aws.amazon.com/config/latest/developerguide/iamrole-permissions.html) for more details.
  late final Output<String> roleArn;

  Recorder(
    String name, {
    RecorderArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cfg/recorder:Recorder',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.recordingGroup =
        registerOutput<RecorderRecordingGroup>('recordingGroup');
    this.recordingMode = registerOutput<RecorderRecordingMode>('recordingMode');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
  }
}
