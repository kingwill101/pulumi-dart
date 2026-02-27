import 'package:pulumi/pulumi.dart';
import '../view_data_filter_expression/view_data_filter_expression.dart';
import '../view_timeouts/view_timeouts.dart';
import 'view_args.dart';

/// Manages an AWS Billing View.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Billing View using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:billing/view:View example arn:aws:billing::123456789012:billing-view/example
/// ```
class View extends CustomResource {
  /// ARN of the View.
  late final Output<String> arn;

  /// Type of billing group. Valid values are PRIMARY|BILLING_GROUP|CUSTOM.
  late final Output<String> billingViewType;

  /// Timestamp when the billing view was created.
  late final Output<String> createdAt;

  /// Filter Cost Explorer APIs using the expression. Refer to the data-filter-expression block documentation for more details.
  late final Output<ViewDataFilterExpression?> dataFilterExpression;

  /// Number of billing views that use this billing view as a source.
  late final Output<int> derivedViewCount;

  /// Description of the custom billing view.
  late final Output<String?> description;

  /// Name of the custom billing view to be created.
  late final Output<String> name;

  /// Account owner of the billing view.
  late final Output<String> ownerAccountId;

  /// AWS account ID that owns the source billing view, if this is a derived billing view.
  late final Output<String> sourceAccountId;

  /// Number of source views associated with this billing view.
  late final Output<int> sourceViewCount;

  /// List of ARNs of the source data views for the custom billing view.
  ///
  /// The following arguments are optional:
  late final Output<List<String>?> sourceViews;

  /// List of key value map specifying tags associated to the billing view being created.
  late final Output<Map<String, String>?> tags;

  /// List of key value map specifying tags associated to the billing view.
  late final Output<Map<String, String>> tagsAll;
  late final Output<ViewTimeouts?> timeouts;

  /// Time when the billing view was last updated.
  late final Output<String> updatedAt;

  /// Timestamp of when the billing view definition was last updated.
  late final Output<String> viewDefinitionLastUpdatedAt;

  View(
    String name, {
    ViewArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:billing/view:View',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.billingViewType = registerOutput<String>('billingViewType');
    this.createdAt = registerOutput<String>('createdAt');
    this.dataFilterExpression =
        registerOutput<ViewDataFilterExpression?>('dataFilterExpression');
    this.derivedViewCount = registerOutput<int>('derivedViewCount');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.sourceAccountId = registerOutput<String>('sourceAccountId');
    this.sourceViewCount = registerOutput<int>('sourceViewCount');
    this.sourceViews = registerOutput<List<String>?>('sourceViews');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ViewTimeouts?>('timeouts');
    this.updatedAt = registerOutput<String>('updatedAt');
    this.viewDefinitionLastUpdatedAt =
        registerOutput<String>('viewDefinitionLastUpdatedAt');
  }
}
