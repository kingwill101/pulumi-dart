import 'package:pulumi/pulumi.dart';
import 'cell_args.dart';

/// Provides an AWS Route 53 Recovery Readiness Cell.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Recovery Readiness cells using the cell name. For example:
///
/// ```sh
/// $ pulumi import aws:route53recoveryreadiness/cell:Cell us-west-2-failover-cell us-west-2-failover-cell
/// ```
class Cell extends CustomResource {
  /// ARN of the cell
  late final Output<String> arn;

  /// Unique name describing the cell.
  ///
  /// The following arguments are optional:
  late final Output<String> cellName;

  /// List of cell arns to add as nested fault domains within this cell.
  late final Output<List<String>?> cells;

  /// List of readiness scopes (recovery groups or cells) that contain this cell.
  late final Output<List<String>> parentReadinessScopes;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Cell(
    String name, {
    CellArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53recoveryreadiness/cell:Cell',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cellName = registerOutput<String>('cellName');
    this.cells = registerOutput<List<String>?>('cells');
    this.parentReadinessScopes =
        registerOutput<List<String>>('parentReadinessScopes');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
