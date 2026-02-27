// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_license_grants_filter/get_license_grants_filter.dart';

/// Arguments for getLicenseGrants.
class GetLicenseGrantsArgs {
  /// Custom filter block as described below.
  final pulumi.Input<List<GetLicenseGrantsFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetLicenseGrantsArgs({
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetLicenseGrantsFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetLicenseGrantsFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetLicenseGrantsArgs.fromMap(Map<String, dynamic> map) {
    return GetLicenseGrantsArgs(
      filters: pulumi.Input.asOptionalInput<List<GetLicenseGrantsFilter>>(
          map['filters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
