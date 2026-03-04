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
  final pulumi.Input<StreamProcessorDataSharingPreference>?
  dataSharingPreference;

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
  final pulumi.Input<List<StreamProcessorRegionsOfInterest>>?
  regionsOfInterests;

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
      'dataSharingPreference':
          ?pulumi.Input.mapOptionalInputValue<
            StreamProcessorDataSharingPreference,
            Map<String, dynamic>
          >(dataSharingPreference, (value) => value.toMap()),
      'input':
          ?pulumi.Input.mapOptionalInputValue<
            StreamProcessorInput,
            Map<String, dynamic>
          >(input, (value) => value.toMap()),
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'notificationChannel':
          ?pulumi.Input.mapOptionalInputValue<
            StreamProcessorNotificationChannel,
            Map<String, dynamic>
          >(notificationChannel, (value) => value.toMap()),
      'output':
          ?pulumi.Input.mapOptionalInputValue<
            StreamProcessorOutput,
            Map<String, dynamic>
          >(output, (value) => value.toMap()),
      'region': ?region,
      'regionsOfInterests':
          ?pulumi.Input.mapOptionalInputValue<
            List<StreamProcessorRegionsOfInterest>,
            List<Map<String, dynamic>>
          >(
            regionsOfInterests,
            (value) =>
                pulumi.Input.encodeList<
                  StreamProcessorRegionsOfInterest,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'roleArn': ?roleArn,
      'settings':
          ?pulumi.Input.mapOptionalInputValue<
            StreamProcessorSettings,
            Map<String, dynamic>
          >(settings, (value) => value.toMap()),
      'streamProcessorArn': ?streamProcessorArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            StreamProcessorTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory StreamProcessorState.fromMap(Map<String, dynamic> map) {
    return StreamProcessorState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataSharingPreference: (() {
        final guardedValue = map['dataSharingPreference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StreamProcessorDataSharingPreference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      input: (() {
        final guardedValue = map['input'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StreamProcessorInput.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      kmsKeyId: (() {
        final guardedValue = map['kmsKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notificationChannel: (() {
        final guardedValue = map['notificationChannel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StreamProcessorNotificationChannel.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      output: (() {
        final guardedValue = map['output'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StreamProcessorOutput.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regionsOfInterests: (() {
        final guardedValue = map['regionsOfInterests'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<StreamProcessorRegionsOfInterest>(
            guardedValue,
            (value) => StreamProcessorRegionsOfInterest.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      roleArn: (() {
        final guardedValue = map['roleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      settings: (() {
        final guardedValue = map['settings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StreamProcessorSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      streamProcessorArn: (() {
        final guardedValue = map['streamProcessorArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StreamProcessorTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
