import 'package:pulumi/pulumi.dart';
import 'graph_args.dart';

/// Provides a resource to manage an [AWS Detective Graph](https://docs.aws.amazon.com/detective/latest/APIReference/API_CreateGraph.html). As an AWS account may own only one Detective graph per region, provisioning multiple Detective graphs requires a separate provider configuration for each graph.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.detective.Graph` using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:detective/graph:Graph example arn:aws:detective:us-east-1:123456789101:graph:231684d34gh74g4bae1dbc7bd807d02d
/// ```
class Graph extends CustomResource {
  /// Date and time, in UTC and extended RFC 3339 format, when the Amazon Detective Graph was created.
  late final Output<String> createdTime;

  /// ARN of the Detective Graph.
  late final Output<String> graphArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  Graph(
    String name, {
    GraphArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:detective/graph:Graph',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createdTime = registerOutput<String>('createdTime');
    this.graphArn = registerOutput<String>('graphArn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
