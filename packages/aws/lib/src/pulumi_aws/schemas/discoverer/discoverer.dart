import 'package:pulumi/pulumi.dart' as pulumi;
import 'discoverer_args.dart';

/// Provides an EventBridge Schema Discoverer resource.
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EventBridge discoverers using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:schemas/discoverer:Discoverer test 123
/// ```
class Discoverer extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the discoverer.
  late final pulumi.Output<String> arn;

  /// The description of the discoverer. Maximum of 256 characters.
  late final pulumi.Output<String?> description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ARN of the event bus to discover event schemas on.
  late final pulumi.Output<String> sourceArn;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  Discoverer(
    String name, {
    DiscovererArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:schemas/discoverer:Discoverer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.region = registerOutput<String>('region');
    this.sourceArn = registerOutput<String>('sourceArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
