// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'view_filters.dart';
import 'view_included_property.dart';

/// Input properties used for looking up and filtering View resources.
class ViewState {
  /// Amazon Resource Name (ARN) of the Resource Explorer view.
  final pulumi.Input<String>? arn;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ViewState].
  /// [arn] Amazon Resource Name (ARN) of the Resource Explorer view.
  /// [defaultView] Specifies whether the view is the [_default view_](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-views-about.html#manage-views-about-default) for the AWS Region. Default: `false`.
  /// [filters] Specifies which resources are included in the results of queries made using this view. See Filters below for more details.
  /// [includedProperties] Optional fields to be included in search results from this view. See Included Properties below for more details.
  /// [name] The name of the view. The name must be no more than 64 characters long, and can include letters, digits, and the dash (-) character. The name must be unique within its AWS Region.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scope] The root ARN of the account, an organizational unit (OU), or an organization ARN. If left empty, the default is account.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ViewState({
    this.arn,
    this.defaultView,
    this.filters,
    this.includedProperties,
    this.name,
    this.region,
    this.scope,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'defaultView': ?defaultView,
      'filters': ?pulumi.Input.mapOptionalInputValue<ViewFilters, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'includedProperties': ?pulumi.Input.mapOptionalInputValue<List<ViewIncludedProperty>, List<Map<String, dynamic>>>(includedProperties, (value) => pulumi.Input.encodeList<ViewIncludedProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'scope': ?scope,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ViewState.fromMap(Map<String, dynamic> map) {
    return ViewState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      defaultView: map['defaultView'] == null ? null : (map['defaultView'] as bool).input(),
      filters: map['filters'] == null ? null : (ViewFilters.fromMap((map['filters'] as Map).cast<String, dynamic>())).input(),
      includedProperties: map['includedProperties'] == null ? null : (pulumi.Input.decodeList<ViewIncludedProperty>(map['includedProperties'], (value) => ViewIncludedProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

