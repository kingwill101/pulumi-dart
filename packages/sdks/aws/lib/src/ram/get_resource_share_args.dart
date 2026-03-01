// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_share_filter.dart';

/// {@template pulumi_ram_get_resource_share_get_resource_share_args_doc}
/// Arguments for getResourceShare.
/// {@endtemplate}
/// {@macro pulumi_ram_get_resource_share_get_resource_share_args_doc}
class GetResourceShareArgs {
  /// Filter used to scope the list of owned shares e.g., by tags. See [related docs] (https://docs.aws.amazon.com/ram/latest/APIReference/API_TagFilter.html).
  final pulumi.Input<List<GetResourceShareFilter>>? filters;
  /// Name of the resource share to retrieve.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Owner of the resource share. Valid values are `SELF` or `OTHER-ACCOUNTS`.
  final pulumi.Input<String> resourceOwner;
  /// Specifies that you want to retrieve details of only those resource shares that have this status. Valid values are `PENDING`, `ACTIVE`, `FAILED`, `DELETING`, and `DELETED`.
  final pulumi.Input<String>? resourceShareStatus;
  /// Tags attached to the resource share.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetResourceShareArgs].
  /// [filters] Filter used to scope the list of owned shares e.g., by tags. See [related docs] (https://docs.aws.amazon.com/ram/latest/APIReference/API_TagFilter.html).
  /// [name] Name of the resource share to retrieve.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceOwner] Owner of the resource share. Valid values are `SELF` or `OTHER-ACCOUNTS`.
  /// [resourceShareStatus] Specifies that you want to retrieve details of only those resource shares that have this status. Valid values are `PENDING`, `ACTIVE`, `FAILED`, `DELETING`, and `DELETED`.
  /// [tags] Tags attached to the resource share.
  GetResourceShareArgs({
    pulumi.Output<List<GetResourceShareFilter>>? filters,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    required pulumi.Output<String> resourceOwner,
    pulumi.Output<String>? resourceShareStatus,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetResourceShareFilter>>(filters),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceOwner = pulumi.Input.asInput<String>(resourceOwner),
      resourceShareStatus = pulumi.Input.asOptionalInput<String>(resourceShareStatus),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetResourceShareFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetResourceShareFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'resourceOwner': resourceOwner,
      'resourceShareStatus': ?resourceShareStatus,
      'tags': ?tags,
    };
  }

  factory GetResourceShareArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceShareArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetResourceShareFilter>>(pulumi.Input.decodeList<GetResourceShareFilter>(map['filters'], (value) => GetResourceShareFilter.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceOwner: pulumi.Output.create<String>(map['resourceOwner'] as String),
      resourceShareStatus: map['resourceShareStatus'] == null ? null : pulumi.Output.create<String>(map['resourceShareStatus'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

