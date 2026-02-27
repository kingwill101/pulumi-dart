import 'package:pulumi/pulumi.dart';
import 'event_stream_args.dart';

/// Provides a Pinpoint Event Stream resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Pinpoint Event Stream using the `application-id`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/eventStream:EventStream stream application-id
/// ```
class EventStream extends CustomResource {
  /// The application ID.
  late final Output<String> applicationId;

  /// The Amazon Resource Name (ARN) of the Amazon Kinesis stream or Firehose delivery stream to which you want to publish events.
  late final Output<String> destinationStreamArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The IAM role that authorizes Amazon Pinpoint to publish events to the stream in your account.
  late final Output<String> roleArn;

  EventStream(
    String name, {
    EventStreamArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/eventStream:EventStream',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.destinationStreamArn = registerOutput<String>('destinationStreamArn');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
  }
}
