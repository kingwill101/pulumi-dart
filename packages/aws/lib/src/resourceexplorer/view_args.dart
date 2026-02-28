// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'view_filters.dart';
import 'view_included_property.dart';

/// {@template pulumi_resourceexplorer_view_view_args_doc}
/// The set of arguments for View.
/// {@endtemplate}
/// {@macro pulumi_resourceexplorer_view_view_args_doc}
class ViewArgs {
  /// Specifies whether the view is the [_default view_](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-views-about.html#manage-views-about-default) for the AWS Region. Default: `false`.
  final pulumi.Input<bool>? defaultView;

  /// Specifies which resources are included in the results of queries made using this view. See Filters below for more details.
  final pulumi.Input<ViewFilters>? filters;

  /// Optional fields to be included in search results from this view. See Included Properties below for more details.
  final pulumi.Input<List<ViewIncludedProperty>>? includedProperties;

  /// The name of the view. The name must be no more than 64 characters long, and can include letters, digits, and the dash (-) character. The name must be unique within its AWS Region.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The root ARN of the account, an organizational unit (OU), or an organization ARN. If left empty, the default is account.
  final pulumi.Input<String>? scope;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ViewArgs].
  /// [defaultView] Specifies whether the view is the [_default view_](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-views-about.html#manage-views-about-default) for the AWS Region. Default: `false`.
  /// [filters] Specifies which resources are included in the results of queries made using this view. See Filters below for more details.
  /// [includedProperties] Optional fields to be included in search results from this view. See Included Properties below for more details.
  /// [name] The name of the view. The name must be no more than 64 characters long, and can include letters, digits, and the dash (-) character. The name must be unique within its AWS Region.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scope] The root ARN of the account, an organizational unit (OU), or an organization ARN. If left empty, the default is account.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ViewArgs({
    bool? defaultView,
    ViewFilters? filters,
    List<ViewIncludedProperty>? includedProperties,
    String? name,
    String? region,
    String? scope,
    Map<String, String>? tags,
  })  : defaultView = pulumi.Input.asOptionalInput<bool>(defaultView),
        filters = pulumi.Input.asOptionalInput<ViewFilters>(filters),
        includedProperties =
            pulumi.Input.asOptionalInput<List<ViewIncludedProperty>>(
                includedProperties),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        scope = pulumi.Input.asOptionalInput<String>(scope),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultViewValue = defaultView;
    if (defaultViewValue != null) {
      map['defaultView'] = defaultViewValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          pulumi.Input.mapOptionalInputValue<ViewFilters, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    final includedPropertiesValue = includedProperties;
    if (includedPropertiesValue != null) {
      map['includedProperties'] = pulumi.Input.mapOptionalInputValue<
              List<ViewIncludedProperty>, List<Map<String, dynamic>>>(
          includedPropertiesValue,
          (value) => pulumi.Input.encodeList<ViewIncludedProperty,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ViewArgs.fromMap(Map<String, dynamic> map) {
    return ViewArgs(
      defaultView:
          map['defaultView'] == null ? null : map['defaultView'] as bool,
      filters: map['filters'] == null
          ? null
          : ViewFilters.fromMap(
              (map['filters'] as Map).cast<String, dynamic>()),
      includedProperties: map['includedProperties'] == null
          ? null
          : pulumi.Input.decodeList<ViewIncludedProperty>(
              map['includedProperties'],
              (value) => ViewIncludedProperty.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
