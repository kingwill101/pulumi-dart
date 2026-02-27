import 'package:pulumi/pulumi.dart' as pulumi;
import 'sink_args.dart';

/// Resource for managing an AWS CloudWatch Observability Access Manager Sink.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Observability Access Manager Sink using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:oam/sink:Sink example arn:aws:oam:us-west-2:123456789012:sink/sink-id
/// ```
class Sink extends pulumi.CustomResource {
  /// ARN of the Sink.
  late final pulumi.Output<String> arn;

  /// Name for the sink.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ID string that AWS generated as part of the sink ARN.
  late final pulumi.Output<String> sinkId;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  Sink(
    String name, {
    SinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:oam/sink:Sink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.sinkId = registerOutput<String>('sinkId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
