// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_received_licenses_filter.dart';

/// {@template pulumi_licensemanager_get_received_licenses_get_received_licenses_args_doc}
/// Arguments for getReceivedLicenses.
/// {@endtemplate}
/// {@macro pulumi_licensemanager_get_received_licenses_get_received_licenses_args_doc}
class GetReceivedLicensesArgs {
  /// Custom filter block as described below.
  final pulumi.Input<List<GetReceivedLicensesFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetReceivedLicensesArgs].
  /// [filters] Custom filter block as described below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetReceivedLicensesArgs({
    List<GetReceivedLicensesFilter>? filters,
    String? region,
  }) : filters = pulumi.Input.asOptionalInput<List<GetReceivedLicensesFilter>>(
         filters,
       ),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetReceivedLicensesFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  GetReceivedLicensesFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
    };
  }

  factory GetReceivedLicensesArgs.fromMap(Map<String, dynamic> map) {
    return GetReceivedLicensesArgs(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetReceivedLicensesFilter>(
              map['filters'],
              (value) => GetReceivedLicensesFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
