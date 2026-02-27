import 'package:pulumi/pulumi.dart' as pulumi;
import '../index_timeouts/index_timeouts.dart';
import 'index_resourceexplorer_args.dart';

/// Provides a resource to manage a Resource Explorer index in the current AWS Region.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Resource Explorer index.
///
///
/// Using `pulumi import`, import Resource Explorer indexes using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:resourceexplorer/index:Index example arn:aws:resource-explorer-2:us-east-1:123456789012:index/6047ac4e-207e-4487-9bcf-cb53bb0ff5cc
/// ```
class IndexResourceexplorer extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the Resource Explorer index.
  late final pulumi.Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<IndexTimeouts?> timeouts;

  /// The type of the index. Valid values: `AGGREGATOR`, `LOCAL`. To understand the difference between `LOCAL` and `AGGREGATOR`, see the [_AWS Resource Explorer User Guide_](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html).
  late final pulumi.Output<String> type;

  IndexResourceexplorer(
    String name, {
    IndexResourceexplorerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:resourceexplorer/index:Index',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<IndexTimeouts?>('timeouts');
    this.type = registerOutput<String>('type');
  }
}
