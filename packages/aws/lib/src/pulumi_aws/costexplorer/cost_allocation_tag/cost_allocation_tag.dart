import 'package:pulumi/pulumi.dart';
import 'cost_allocation_tag_args.dart';

/// Provides a CE Cost Allocation Tag.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.costexplorer.CostAllocationTag` using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:costexplorer/costAllocationTag:CostAllocationTag example key
/// ```
class CostAllocationTag extends CustomResource {
  /// The status of a cost allocation tag. Valid values are `Active` and `Inactive`.
  late final Output<String> status;

  /// The key for the cost allocation tag.
  late final Output<String> tagKey;

  /// The type of cost allocation tag.
  late final Output<String> type;

  CostAllocationTag(
    String name, {
    CostAllocationTagArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:costexplorer/costAllocationTag:CostAllocationTag',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.status = registerOutput<String>('status');
    this.tagKey = registerOutput<String>('tagKey');
    this.type = registerOutput<String>('type');
  }
}
