import 'package:pulumi/pulumi.dart' as pulumi;
import '../stream_processor_data_sharing_preference/stream_processor_data_sharing_preference.dart';
import '../stream_processor_input/stream_processor_input.dart';
import '../stream_processor_notification_channel/stream_processor_notification_channel.dart';
import '../stream_processor_output/stream_processor_output.dart';
import '../stream_processor_regions_of_interest/stream_processor_regions_of_interest.dart';
import '../stream_processor_settings/stream_processor_settings.dart';
import '../stream_processor_timeouts/stream_processor_timeouts.dart';
import 'stream_processor_args.dart';

/// Resource for managing an AWS Rekognition Stream Processor.
///
/// > This resource must be configured specifically for your use case, and not all options are compatible with one another. See [Stream Processor API documentation](https://docs.aws.amazon.com/rekognition/latest/APIReference/API_CreateStreamProcessor.html#rekognition-CreateStreamProcessor-request-Input) for configuration information.
///
/// > Stream Processors configured for Face Recognition cannot have _any_ properties updated after the fact, and it will result in an AWS API error.
///
/// ## Example Usage
///
/// ### Label Detection
///
///
///
/// ### Face Detection Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Rekognition Stream Processor using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:rekognition/streamProcessor:StreamProcessor example my-stream
/// ```
class StreamProcessor extends pulumi.CustomResource {
  /// ARN of the Stream Processor.
  late final pulumi.Output<String> arn;

  /// See `data_sharing_preference`.
  late final pulumi.Output<StreamProcessorDataSharingPreference?>
      dataSharingPreference;

  /// Input video stream. See `input`.
  late final pulumi.Output<StreamProcessorInput> input;

  /// Optional parameter for label detection stream processors.
  late final pulumi.Output<String?> kmsKeyId;

  /// The name of the Stream Processor.
  late final pulumi.Output<String> name;

  /// The Amazon Simple Notification Service topic to which Amazon Rekognition publishes the completion status. See `notification_channel`.
  late final pulumi.Output<StreamProcessorNotificationChannel?>
      notificationChannel;

  /// Kinesis data stream stream or Amazon S3 bucket location to which Amazon Rekognition Video puts the analysis results. See `output`.
  late final pulumi.Output<StreamProcessorOutput> output;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Specifies locations in the frames where Amazon Rekognition checks for objects or people. See `regions_of_interest`.
  late final pulumi.Output<List<StreamProcessorRegionsOfInterest>?>
      regionsOfInterests;

  /// The Amazon Resource Number (ARN) of the IAM role that allows access to the stream processor. The IAM role provides Rekognition read permissions for a Kinesis stream. It also provides write permissions to an Amazon S3 bucket and Amazon Simple Notification Service topic for a label detection stream processor. This is required for both face search and label detection stream processors.
  late final pulumi.Output<String> roleArn;

  /// Input parameters used in a streaming video analyzed by a stream processor. See `settings`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<StreamProcessorSettings> settings;

  /// (**Deprecated**) ARN of the Stream Processor.
  /// Use `arn` instead.
  late final pulumi.Output<String> streamProcessorArn;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<StreamProcessorTimeouts?> timeouts;

  StreamProcessor(
    String name, {
    StreamProcessorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rekognition/streamProcessor:StreamProcessor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.dataSharingPreference =
        registerOutput<StreamProcessorDataSharingPreference?>(
            'dataSharingPreference');
    this.input = registerOutput<StreamProcessorInput>('input');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    this.notificationChannel =
        registerOutput<StreamProcessorNotificationChannel?>(
            'notificationChannel');
    this.output = registerOutput<StreamProcessorOutput>('output');
    this.region = registerOutput<String>('region');
    this.regionsOfInterests =
        registerOutput<List<StreamProcessorRegionsOfInterest>?>(
            'regionsOfInterests');
    this.roleArn = registerOutput<String>('roleArn');
    this.settings = registerOutput<StreamProcessorSettings>('settings');
    this.streamProcessorArn = registerOutput<String>('streamProcessorArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<StreamProcessorTimeouts?>('timeouts');
  }
}
