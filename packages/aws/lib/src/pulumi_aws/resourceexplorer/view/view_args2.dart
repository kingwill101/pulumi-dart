// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../view_filters/view_filters.dart';
import '../view_included_property/view_included_property.dart';

/// The set of arguments for View.
class ViewArgs2 {
  /// Specifies whether the view is the [_default view_](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-views-about.html#manage-views-about-default) for the AWS Region. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? defaultView;

  /// Specifies which resources are included in the results of queries made using this view. See Filters below for more details.
  final Input<ViewFilters>? filters;

  /// Optional fields to be included in search results from this view. See Included Properties below for more details.
  final Input<List<ViewIncludedProperty>>? includedProperties;

  /// The name of the view. The name must be no more than 64 characters long, and can include letters, digits, and the dash (-) character. The name must be unique within its AWS Region.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The root ARN of the account, an organizational unit (OU), or an organization ARN. If left empty, the default is account.
  final Input<String>? scope;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ViewArgs2({
    this.defaultView,
    this.filters,
    this.includedProperties,
    this.name,
    this.region,
    this.scope,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultViewValue = defaultView;
    if (defaultViewValue != null) {
      map['defaultView'] = defaultViewValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.mapOptionalInputValue<ViewFilters, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    final includedPropertiesValue = includedProperties;
    if (includedPropertiesValue != null) {
      map['includedProperties'] = Input.mapOptionalInputValue<
              List<ViewIncludedProperty>, List<Map<String, dynamic>>>(
          includedPropertiesValue,
          (value) =>
              Input.encodeList<ViewIncludedProperty, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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

  factory ViewArgs2.fromMap(Map<String, dynamic> map) {
    return ViewArgs2(
      defaultView: Input.asOptionalInput<bool>(map['defaultView']),
      filters: Input.asOptionalInput<ViewFilters>(map['filters']),
      includedProperties: Input.asOptionalInput<List<ViewIncludedProperty>>(
          map['includedProperties']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      scope: Input.asOptionalInput<String>(map['scope']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
