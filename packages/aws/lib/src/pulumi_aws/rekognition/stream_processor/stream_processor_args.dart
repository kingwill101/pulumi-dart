// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_processor_data_sharing_preference/stream_processor_data_sharing_preference.dart';
import '../stream_processor_input/stream_processor_input.dart';
import '../stream_processor_notification_channel/stream_processor_notification_channel.dart';
import '../stream_processor_output/stream_processor_output.dart';
import '../stream_processor_regions_of_interest/stream_processor_regions_of_interest.dart';
import '../stream_processor_settings/stream_processor_settings.dart';
import '../stream_processor_timeouts/stream_processor_timeouts.dart';

/// The set of arguments for StreamProcessor.
class StreamProcessorArgs {
  /// See `data_sharing_preference`.
  final Input<StreamProcessorDataSharingPreference>? dataSharingPreference;

  /// Input video stream. See `input`.
  final Input<StreamProcessorInput> input;

  /// Optional parameter for label detection stream processors.
  final Input<String>? kmsKeyId;

  /// The name of the Stream Processor.
  final Input<String>? name;

  /// The Amazon Simple Notification Service topic to which Amazon Rekognition publishes the completion status. See `notification_channel`.
  final Input<StreamProcessorNotificationChannel>? notificationChannel;

  /// Kinesis data stream stream or Amazon S3 bucket location to which Amazon Rekognition Video puts the analysis results. See `output`.
  final Input<StreamProcessorOutput> output;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies locations in the frames where Amazon Rekognition checks for objects or people. See `regions_of_interest`.
  final Input<List<StreamProcessorRegionsOfInterest>>? regionsOfInterests;

  /// The Amazon Resource Number (ARN) of the IAM role that allows access to the stream processor. The IAM role provides Rekognition read permissions for a Kinesis stream. It also provides write permissions to an Amazon S3 bucket and Amazon Simple Notification Service topic for a label detection stream processor. This is required for both face search and label detection stream processors.
  final Input<String> roleArn;

  /// Input parameters used in a streaming video analyzed by a stream processor. See `settings`.
  ///
  /// The following arguments are optional:
  final Input<StreamProcessorSettings> settings;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<StreamProcessorTimeouts>? timeouts;

  StreamProcessorArgs({
    this.dataSharingPreference,
    required this.input,
    this.kmsKeyId,
    this.name,
    this.notificationChannel,
    required this.output,
    this.region,
    this.regionsOfInterests,
    required this.roleArn,
    required this.settings,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataSharingPreferenceValue = dataSharingPreference;
    if (dataSharingPreferenceValue != null) {
      map['dataSharingPreference'] = Input.mapOptionalInputValue<
              StreamProcessorDataSharingPreference, Map<String, dynamic>>(
          dataSharingPreferenceValue, (value) => value.toMap());
    }
    map['input'] =
        Input.mapInputValue<StreamProcessorInput, Map<String, dynamic>>(
            input, (value) => value.toMap());
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final notificationChannelValue = notificationChannel;
    if (notificationChannelValue != null) {
      map['notificationChannel'] = Input.mapOptionalInputValue<
              StreamProcessorNotificationChannel, Map<String, dynamic>>(
          notificationChannelValue, (value) => value.toMap());
    }
    map['output'] =
        Input.mapInputValue<StreamProcessorOutput, Map<String, dynamic>>(
            output, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final regionsOfInterestsValue = regionsOfInterests;
    if (regionsOfInterestsValue != null) {
      map['regionsOfInterests'] = Input.mapOptionalInputValue<
              List<StreamProcessorRegionsOfInterest>,
              List<Map<String, dynamic>>>(
          regionsOfInterestsValue,
          (value) => Input.encodeList<StreamProcessorRegionsOfInterest,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['roleArn'] = roleArn;
    map['settings'] =
        Input.mapInputValue<StreamProcessorSettings, Map<String, dynamic>>(
            settings, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<StreamProcessorTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory StreamProcessorArgs.fromMap(Map<String, dynamic> map) {
    return StreamProcessorArgs(
      dataSharingPreference:
          Input.asOptionalInput<StreamProcessorDataSharingPreference>(
              map['dataSharingPreference']),
      input: Input.asInput<StreamProcessorInput>(map['input']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      name: Input.asOptionalInput<String>(map['name']),
      notificationChannel:
          Input.asOptionalInput<StreamProcessorNotificationChannel>(
              map['notificationChannel']),
      output: Input.asInput<StreamProcessorOutput>(map['output']),
      region: Input.asOptionalInput<String>(map['region']),
      regionsOfInterests:
          Input.asOptionalInput<List<StreamProcessorRegionsOfInterest>>(
              map['regionsOfInterests']),
      roleArn: Input.asInput<String>(map['roleArn']),
      settings: Input.asInput<StreamProcessorSettings>(map['settings']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<StreamProcessorTimeouts>(map['timeouts']),
    );
  }
}
