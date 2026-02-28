// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_get_data_shares_get_data_shares_args_doc}
/// Arguments for getDataShares.
/// {@endtemplate}
/// {@macro pulumi_redshift_get_data_shares_get_data_shares_args_doc}
class GetDataSharesArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetDataSharesArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetDataSharesArgs({
    String? region,
  }) : region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetDataSharesArgs.fromMap(Map<String, dynamic> map) {
    return GetDataSharesArgs(
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
