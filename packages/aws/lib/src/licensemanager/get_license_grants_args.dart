// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_license_grants_filter.dart';

/// {@template pulumi_licensemanager_get_license_grants_get_license_grants_args_doc}
/// Arguments for getLicenseGrants.
/// {@endtemplate}
/// {@macro pulumi_licensemanager_get_license_grants_get_license_grants_args_doc}
class GetLicenseGrantsArgs {
  /// Custom filter block as described below.
  final pulumi.Input<List<GetLicenseGrantsFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetLicenseGrantsArgs].
  /// [filters] Custom filter block as described below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetLicenseGrantsArgs({
    List<GetLicenseGrantsFilter>? filters,
    String? region,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetLicenseGrantsFilter>>(filters),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetLicenseGrantsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetLicenseGrantsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory GetLicenseGrantsArgs.fromMap(Map<String, dynamic> map) {
    return GetLicenseGrantsArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetLicenseGrantsFilter>(map['filters'], (value) => GetLicenseGrantsFilter.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

