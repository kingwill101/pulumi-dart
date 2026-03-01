// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_processor_data_sharing_preference.dart';
import 'stream_processor_input.dart';
import 'stream_processor_notification_channel.dart';
import 'stream_processor_output.dart';
import 'stream_processor_regions_of_interest.dart';
import 'stream_processor_settings.dart';
import 'stream_processor_timeouts.dart';

/// {@template pulumi_rekognition_stream_processor_stream_processor_args_doc}
/// The set of arguments for StreamProcessor.
/// {@endtemplate}
/// {@macro pulumi_rekognition_stream_processor_stream_processor_args_doc}
class StreamProcessorArgs {
  /// See `data_sharing_preference`.
  final pulumi.Input<StreamProcessorDataSharingPreference>? dataSharingPreference;
  /// Input video stream. See `input`.
  final pulumi.Input<StreamProcessorInput> input;
  /// Optional parameter for label detection stream processors.
  final pulumi.Input<String>? kmsKeyId;
  /// The name of the Stream Processor.
  final pulumi.Input<String>? name;
  /// The Amazon Simple Notification Service topic to which Amazon Rekognition publishes the completion status. See `notification_channel`.
  final pulumi.Input<StreamProcessorNotificationChannel>? notificationChannel;
  /// Kinesis data stream stream or Amazon S3 bucket location to which Amazon Rekognition Video puts the analysis results. See `output`.
  final pulumi.Input<StreamProcessorOutput> output;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies locations in the frames where Amazon Rekognition checks for objects or people. See `regions_of_interest`.
  final pulumi.Input<List<StreamProcessorRegionsOfInterest>>? regionsOfInterests;
  /// The Amazon Resource Number (ARN) of the IAM role that allows access to the stream processor. The IAM role provides Rekognition read permissions for a Kinesis stream. It also provides write permissions to an Amazon S3 bucket and Amazon Simple Notification Service topic for a label detection stream processor. This is required for both face search and label detection stream processors.
  final pulumi.Input<String> roleArn;
  /// Input parameters used in a streaming video analyzed by a stream processor. See `settings`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<StreamProcessorSettings> settings;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<StreamProcessorTimeouts>? timeouts;

  /// Creates a new [StreamProcessorArgs].
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
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  StreamProcessorArgs({
    pulumi.Output<StreamProcessorDataSharingPreference>? dataSharingPreference,
    required pulumi.Output<StreamProcessorInput> input,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? name,
    pulumi.Output<StreamProcessorNotificationChannel>? notificationChannel,
    required pulumi.Output<StreamProcessorOutput> output,
    pulumi.Output<String>? region,
    pulumi.Output<List<StreamProcessorRegionsOfInterest>>? regionsOfInterests,
    required pulumi.Output<String> roleArn,
    required pulumi.Output<StreamProcessorSettings> settings,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<StreamProcessorTimeouts>? timeouts,
  }) :
      dataSharingPreference = pulumi.Input.asOptionalInput<StreamProcessorDataSharingPreference>(dataSharingPreference),
      input = pulumi.Input.asInput<StreamProcessorInput>(input),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationChannel = pulumi.Input.asOptionalInput<StreamProcessorNotificationChannel>(notificationChannel),
      output = pulumi.Input.asInput<StreamProcessorOutput>(output),
      region = pulumi.Input.asOptionalInput<String>(region),
      regionsOfInterests = pulumi.Input.asOptionalInput<List<StreamProcessorRegionsOfInterest>>(regionsOfInterests),
      roleArn = pulumi.Input.asInput<String>(roleArn),
      settings = pulumi.Input.asInput<StreamProcessorSettings>(settings),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<StreamProcessorTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSharingPreference': ?pulumi.Input.mapOptionalInputValue<StreamProcessorDataSharingPreference, Map<String, dynamic>>(dataSharingPreference, (value) => value.toMap()),
      'input': pulumi.Input.mapInputValue<StreamProcessorInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'notificationChannel': ?pulumi.Input.mapOptionalInputValue<StreamProcessorNotificationChannel, Map<String, dynamic>>(notificationChannel, (value) => value.toMap()),
      'output': pulumi.Input.mapInputValue<StreamProcessorOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
      'region': ?region,
      'regionsOfInterests': ?pulumi.Input.mapOptionalInputValue<List<StreamProcessorRegionsOfInterest>, List<Map<String, dynamic>>>(regionsOfInterests, (value) => pulumi.Input.encodeList<StreamProcessorRegionsOfInterest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roleArn': roleArn,
      'settings': pulumi.Input.mapInputValue<StreamProcessorSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<StreamProcessorTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory StreamProcessorArgs.fromMap(Map<String, dynamic> map) {
    return StreamProcessorArgs(
      dataSharingPreference: map['dataSharingPreference'] == null ? null : pulumi.Output.create<StreamProcessorDataSharingPreference>(StreamProcessorDataSharingPreference.fromMap((map['dataSharingPreference'] as Map).cast<String, dynamic>())),
      input: pulumi.Output.create<StreamProcessorInput>(StreamProcessorInput.fromMap((map['input'] as Map).cast<String, dynamic>())),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notificationChannel: map['notificationChannel'] == null ? null : pulumi.Output.create<StreamProcessorNotificationChannel>(StreamProcessorNotificationChannel.fromMap((map['notificationChannel'] as Map).cast<String, dynamic>())),
      output: pulumi.Output.create<StreamProcessorOutput>(StreamProcessorOutput.fromMap((map['output'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      regionsOfInterests: map['regionsOfInterests'] == null ? null : pulumi.Output.create<List<StreamProcessorRegionsOfInterest>>(pulumi.Input.decodeList<StreamProcessorRegionsOfInterest>(map['regionsOfInterests'], (value) => StreamProcessorRegionsOfInterest.fromMap((value as Map).cast<String, dynamic>()))),
      roleArn: pulumi.Output.create<String>(map['roleArn'] as String),
      settings: pulumi.Output.create<StreamProcessorSettings>(StreamProcessorSettings.fromMap((map['settings'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<StreamProcessorTimeouts>(StreamProcessorTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

