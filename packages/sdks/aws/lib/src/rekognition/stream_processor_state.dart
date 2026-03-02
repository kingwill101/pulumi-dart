// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_processor_data_sharing_preference.dart';
import 'stream_processor_input.dart';
import 'stream_processor_notification_channel.dart';
import 'stream_processor_output.dart';
import 'stream_processor_regions_of_interest.dart';
import 'stream_processor_settings.dart';
import 'stream_processor_timeouts.dart';

/// Input properties used for looking up and filtering StreamProcessor resources.
class StreamProcessorState {
  /// ARN of the Stream Processor.
  final pulumi.Input<String>? arn;
  /// See `data_sharing_preference`.
  final pulumi.Input<StreamProcessorDataSharingPreference>? dataSharingPreference;
  /// Input video stream. See `input`.
  final pulumi.Input<StreamProcessorInput>? input;
  /// Optional parameter for label detection stream processors.
  final pulumi.Input<String>? kmsKeyId;
  /// The name of the Stream Processor.
  final pulumi.Input<String>? name;
  /// The Amazon Simple Notification Service topic to which Amazon Rekognition publishes the completion status. See `notification_channel`.
  final pulumi.Input<StreamProcessorNotificationChannel>? notificationChannel;
  /// Kinesis data stream stream or Amazon S3 bucket location to which Amazon Rekognition Video puts the analysis results. See `output`.
  final pulumi.Input<StreamProcessorOutput>? output;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies locations in the frames where Amazon Rekognition checks for objects or people. See `regions_of_interest`.
  final pulumi.Input<List<StreamProcessorRegionsOfInterest>>? regionsOfInterests;
  /// The Amazon Resource Number (ARN) of the IAM role that allows access to the stream processor. The IAM role provides Rekognition read permissions for a Kinesis stream. It also provides write permissions to an Amazon S3 bucket and Amazon Simple Notification Service topic for a label detection stream processor. This is required for both face search and label detection stream processors.
  final pulumi.Input<String>? roleArn;
  /// Input parameters used in a streaming video analyzed by a stream processor. See `settings`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<StreamProcessorSettings>? settings;
  /// (**Deprecated**) ARN of the Stream Processor.
  /// Use `arn` instead.
  final pulumi.Input<String>? streamProcessorArn;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<StreamProcessorTimeouts>? timeouts;

  /// Creates a new [StreamProcessorState].
  /// [arn] ARN of the Stream Processor.
  /// [dataSharingPreference] See `data_sharing_preference`.
  /// [input] Input video stream. See `input`.
  /// [kmsKeyId] Optional parameter for label detection stream processors.
  /// [name] The name of the Stream Processor.
  /// [notificationChannel] The Amazon Simple Notification Service topic to which Amazon Rekognition publishes the completion status. See `notification_channel`.
  /// [output] Kinesis data stream stream or Amazon S3 bucket location to which Amazon Rekognition Video puts the analysis results. See `output`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [regionsOfInterests] Specifies locations in the frames where Amazon Rekognition checks for objects or people. See `regions_of_interest`.
  /// [roleArn] The Amazon Resource Number (ARN) of the IAM role that allows access to the stream processor. The IAM role provides Rekognition read permissions for a Kinesis stream. It also provides write permissions to an Amazon S3 bucket and Amazon Simple Notification Service topic for a label detection stream processor. This is required for both face search and label detection stream processors.
  /// [settings] Input parameters used in a streaming video analyzed by a stream processor. See `settings`.
  /// [streamProcessorArn] (**Deprecated**) ARN of the Stream Processor.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  StreamProcessorState({
    this.arn,
    this.dataSharingPreference,
    this.input,
    this.kmsKeyId,
    this.name,
    this.notificationChannel,
    this.output,
    this.region,
    this.regionsOfInterests,
    this.roleArn,
    this.settings,
    this.streamProcessorArn,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'dataSharingPreference': ?pulumi.Input.mapOptionalInputValue<StreamProcessorDataSharingPreference, Map<String, dynamic>>(dataSharingPreference, (value) => value.toMap()),
      'input': ?pulumi.Input.mapOptionalInputValue<StreamProcessorInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'notificationChannel': ?pulumi.Input.mapOptionalInputValue<StreamProcessorNotificationChannel, Map<String, dynamic>>(notificationChannel, (value) => value.toMap()),
      'output': ?pulumi.Input.mapOptionalInputValue<StreamProcessorOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
      'region': ?region,
      'regionsOfInterests': ?pulumi.Input.mapOptionalInputValue<List<StreamProcessorRegionsOfInterest>, List<Map<String, dynamic>>>(regionsOfInterests, (value) => pulumi.Input.encodeList<StreamProcessorRegionsOfInterest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roleArn': ?roleArn,
      'settings': ?pulumi.Input.mapOptionalInputValue<StreamProcessorSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'streamProcessorArn': ?streamProcessorArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<StreamProcessorTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory StreamProcessorState.fromMap(Map<String, dynamic> map) {
    return StreamProcessorState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      dataSharingPreference: map['dataSharingPreference'] == null ? null : ((StreamProcessorDataSharingPreference.fromMap((map['dataSharingPreference']! as Map).cast<String, dynamic>())).input()).input(),
      input: map['input'] == null ? null : ((StreamProcessorInput.fromMap((map['input']! as Map).cast<String, dynamic>())).input()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      notificationChannel: map['notificationChannel'] == null ? null : ((StreamProcessorNotificationChannel.fromMap((map['notificationChannel']! as Map).cast<String, dynamic>())).input()).input(),
      output: map['output'] == null ? null : ((StreamProcessorOutput.fromMap((map['output']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      regionsOfInterests: map['regionsOfInterests'] == null ? null : ((pulumi.Input.decodeList<StreamProcessorRegionsOfInterest>(map['regionsOfInterests']!, (value) => StreamProcessorRegionsOfInterest.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
      settings: map['settings'] == null ? null : ((StreamProcessorSettings.fromMap((map['settings']! as Map).cast<String, dynamic>())).input()).input(),
      streamProcessorArn: map['streamProcessorArn'] == null ? null : ((map['streamProcessorArn'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((StreamProcessorTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

