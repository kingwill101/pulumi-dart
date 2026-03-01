// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_prefix_list_filter.dart';

/// {@template pulumi_ec2_get_prefix_list_get_prefix_list_args_doc}
/// Arguments for getPrefixList.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_prefix_list_get_prefix_list_args_doc}
class GetPrefixListArgs {
  /// Configuration block(s) for filtering. Detailed below.
  ///
  /// The arguments of this data source act as filters for querying the available
  /// prefix lists. The given filters must match exactly one prefix list
  /// whose data will be exported as attributes.
  final pulumi.Input<List<GetPrefixListFilter>>? filters;
  /// Name of the prefix list to select.
  final pulumi.Input<String>? name;
  /// ID of the prefix list to select.
  final pulumi.Input<String>? prefixListId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetPrefixListArgs].
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [name] Name of the prefix list to select.
  /// [prefixListId] ID of the prefix list to select.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetPrefixListArgs({
    pulumi.Output<List<GetPrefixListFilter>>? filters,
    pulumi.Output<String>? name,
    pulumi.Output<String>? prefixListId,
    pulumi.Output<String>? region,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetPrefixListFilter>>(filters),
      name = pulumi.Input.asOptionalInput<String>(name),
      prefixListId = pulumi.Input.asOptionalInput<String>(prefixListId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetPrefixListFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetPrefixListFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'prefixListId': ?prefixListId,
      'region': ?region,
    };
  }

  factory GetPrefixListArgs.fromMap(Map<String, dynamic> map) {
    return GetPrefixListArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetPrefixListFilter>>(pulumi.Input.decodeList<GetPrefixListFilter>(map['filters'], (value) => GetPrefixListFilter.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      prefixListId: map['prefixListId'] == null ? null : pulumi.Output.create<String>(map['prefixListId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

