import 'package:pulumi/pulumi.dart' as pulumi;
import '../view_filters/view_filters.dart';
import '../view_included_property/view_included_property.dart';
import 'view_resourceexplorer_args.dart';

/// Provides a resource to manage a Resource Explorer view.
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
/// - `arn` (String) Amazon Resource Name (ARN) of the Resource Explorer view.
///
///
/// Using `pulumi import`, import Resource Explorer views using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:resourceexplorer/view:View example arn:aws:resource-explorer-2:us-west-2:123456789012:view/exampleview/e0914f6c-6c27-4b47-b5d4-6b28381a2421
/// ```
class ViewResourceexplorer extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the Resource Explorer view.
  late final pulumi.Output<String> arn;

  /// Specifies whether the view is the [_default view_](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-views-about.html#manage-views-about-default) for the AWS Region. Default: `false`.
  late final pulumi.Output<bool> defaultView;

  /// Specifies which resources are included in the results of queries made using this view. See Filters below for more details.
  late final pulumi.Output<ViewFilters?> filters;

  /// Optional fields to be included in search results from this view. See Included Properties below for more details.
  late final pulumi.Output<List<ViewIncludedProperty>?> includedProperties;

  /// The name of the view. The name must be no more than 64 characters long, and can include letters, digits, and the dash (-) character. The name must be unique within its AWS Region.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The root ARN of the account, an organizational unit (OU), or an organization ARN. If left empty, the default is account.
  late final pulumi.Output<String> scope;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ViewResourceexplorer(
    String name, {
    ViewResourceexplorerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:resourceexplorer/view:View',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultView = registerOutput<bool>('defaultView');
    this.filters = registerOutput<ViewFilters?>('filters');
    this.includedProperties =
        registerOutput<List<ViewIncludedProperty>?>('includedProperties');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.scope = registerOutput<String>('scope');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
