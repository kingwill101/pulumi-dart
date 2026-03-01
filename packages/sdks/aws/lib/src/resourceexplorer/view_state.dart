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
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? defaultView,
    pulumi.Output<ViewFilters>? filters,
    pulumi.Output<List<ViewIncludedProperty>>? includedProperties,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? scope,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      defaultView = pulumi.Input.asOptionalInput<bool>(defaultView),
      filters = pulumi.Input.asOptionalInput<ViewFilters>(filters),
      includedProperties = pulumi.Input.asOptionalInput<List<ViewIncludedProperty>>(includedProperties),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      defaultView: map['defaultView'] == null ? null : pulumi.Output.create<bool>(map['defaultView'] as bool),
      filters: map['filters'] == null ? null : pulumi.Output.create<ViewFilters>(ViewFilters.fromMap((map['filters'] as Map).cast<String, dynamic>())),
      includedProperties: map['includedProperties'] == null ? null : pulumi.Output.create<List<ViewIncludedProperty>>(pulumi.Input.decodeList<ViewIncludedProperty>(map['includedProperties'], (value) => ViewIncludedProperty.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

