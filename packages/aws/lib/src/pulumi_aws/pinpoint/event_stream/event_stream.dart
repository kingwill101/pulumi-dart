import 'package:pulumi/pulumi.dart' as pulumi;
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
class EventStream extends pulumi.CustomResource {
  /// The application ID.
  late final pulumi.Output<String> applicationId;

  /// The Amazon Resource Name (ARN) of the Amazon Kinesis stream or Firehose delivery stream to which you want to publish events.
  late final pulumi.Output<String> destinationStreamArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The IAM role that authorizes Amazon Pinpoint to publish events to the stream in your account.
  late final pulumi.Output<String> roleArn;

  EventStream(
    String name, {
    EventStreamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/eventStream:EventStream',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.destinationStreamArn = registerOutput<String>('destinationStreamArn');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
  }
}
