// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegions.
class GetRegionsArgs {
  /// AWS account ID. Must be a member account in the same organization.
  final pulumi.Input<String>? accountId;

  /// A list of region opt-in statuses to filter the results. Valid values are `ENABLED`, `ENABLING`, `DISABLING`, `DISABLED`, and `ENABLED_BY_DEFAULT`.
  final pulumi.Input<List<String>>? regionOptStatusContains;

  GetRegionsArgs({
    this.accountId,
    this.regionOptStatusContains,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    final regionOptStatusContainsValue = regionOptStatusContains;
    if (regionOptStatusContainsValue != null) {
      map['regionOptStatusContains'] = regionOptStatusContainsValue;
    }
    return map;
  }

  factory GetRegionsArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionsArgs(
      accountId: pulumi.Input.asOptionalInput<String>(map['accountId']),
      regionOptStatusContains: pulumi.Input.asOptionalInput<List<String>>(
          map['regionOptStatusContains']),
    );
  }
}
