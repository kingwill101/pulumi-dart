// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_components_filter.dart';

/// {@template pulumi_imagebuilder_get_components_get_components_args_doc}
/// Arguments for getComponents.
/// {@endtemplate}
/// {@macro pulumi_imagebuilder_get_components_get_components_args_doc}
class GetComponentsArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetComponentsFilter>>? filters;
  /// Owner of the image recipes. Valid values are `Self`, `Shared`, `Amazon` and `ThirdParty`. Defaults to `Self`.
  final pulumi.Input<String>? owner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetComponentsArgs].
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [owner] Owner of the image recipes. Valid values are `Self`, `Shared`, `Amazon` and `ThirdParty`. Defaults to `Self`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetComponentsArgs({
    this.filters,
    this.owner,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetComponentsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetComponentsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'owner': ?owner,
      'region': ?region,
    };
  }

  factory GetComponentsArgs.fromMap(Map<String, dynamic> map) {
    return GetComponentsArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetComponentsFilter>(guardedValue, (value) => GetComponentsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
