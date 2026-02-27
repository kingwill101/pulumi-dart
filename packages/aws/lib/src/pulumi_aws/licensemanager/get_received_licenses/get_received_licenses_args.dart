// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_received_licenses_filter/get_received_licenses_filter.dart';

/// Arguments for getReceivedLicenses.
class GetReceivedLicensesArgs {
  /// Custom filter block as described below.
  final pulumi.Input<List<GetReceivedLicensesFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetReceivedLicensesArgs({
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetReceivedLicensesFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetReceivedLicensesFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetReceivedLicensesArgs.fromMap(Map<String, dynamic> map) {
    return GetReceivedLicensesArgs(
      filters: pulumi.Input.asOptionalInput<List<GetReceivedLicensesFilter>>(
          map['filters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
