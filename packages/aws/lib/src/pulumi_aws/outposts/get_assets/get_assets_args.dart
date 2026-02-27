// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAssets.
class GetAssetsArgs {
  /// Outpost ARN.
  final pulumi.Input<String> arn;

  /// Filters by list of Host IDs of a Dedicated Host.
  final pulumi.Input<List<String>>? hostIdFilters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Filters by list of state status. Valid values: "ACTIVE", "RETIRING".
  final pulumi.Input<List<String>>? statusIdFilters;

  GetAssetsArgs({
    required this.arn,
    this.hostIdFilters,
    this.region,
    this.statusIdFilters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final hostIdFiltersValue = hostIdFilters;
    if (hostIdFiltersValue != null) {
      map['hostIdFilters'] = hostIdFiltersValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final statusIdFiltersValue = statusIdFilters;
    if (statusIdFiltersValue != null) {
      map['statusIdFilters'] = statusIdFiltersValue;
    }
    return map;
  }

  factory GetAssetsArgs.fromMap(Map<String, dynamic> map) {
    return GetAssetsArgs(
      arn: pulumi.Input.asInput<String>(map['arn']),
      hostIdFilters:
          pulumi.Input.asOptionalInput<List<String>>(map['hostIdFilters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      statusIdFilters:
          pulumi.Input.asOptionalInput<List<String>>(map['statusIdFilters']),
    );
  }
}
