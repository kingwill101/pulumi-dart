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
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ViewArgs].
  /// [defaultView] Specifies whether the view is the [_default view_](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-views-about.html#manage-views-about-default) for the AWS Region. Default: `false`.
  /// [filters] Specifies which resources are included in the results of queries made using this view. See Filters below for more details.
  /// [includedProperties] Optional fields to be included in search results from this view. See Included Properties below for more details.
  /// [name] The name of the view. The name must be no more than 64 characters long, and can include letters, digits, and the dash (-) character. The name must be unique within its AWS Region.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scope] The root ARN of the account, an organizational unit (OU), or an organization ARN. If left empty, the default is account.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ViewArgs({
    this.defaultView,
    this.filters,
    this.includedProperties,
    this.name,
    this.region,
    this.scope,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultView': ?defaultView,
      'filters': ?pulumi.Input.mapOptionalInputValue<ViewFilters, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'includedProperties': ?pulumi.Input.mapOptionalInputValue<List<ViewIncludedProperty>, List<Map<String, dynamic>>>(includedProperties, (value) => pulumi.Input.encodeList<ViewIncludedProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'scope': ?scope,
      'tags': ?tags,
    };
  }

  factory ViewArgs.fromMap(Map<String, dynamic> map) {
    return ViewArgs(
      defaultView: (() { final guardedValue = map['defaultView']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ViewFilters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includedProperties: (() { final guardedValue = map['includedProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ViewIncludedProperty>(guardedValue, (value) => ViewIncludedProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
