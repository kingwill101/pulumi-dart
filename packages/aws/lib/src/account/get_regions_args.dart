// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_account_get_regions_get_regions_args_doc}
/// Arguments for getRegions.
/// {@endtemplate}
/// {@macro pulumi_account_get_regions_get_regions_args_doc}
class GetRegionsArgs {
  /// AWS account ID. Must be a member account in the same organization.
  final pulumi.Input<String>? accountId;

  /// A list of region opt-in statuses to filter the results. Valid values are `ENABLED`, `ENABLING`, `DISABLING`, `DISABLED`, and `ENABLED_BY_DEFAULT`.
  final pulumi.Input<List<String>>? regionOptStatusContains;

  /// Creates a new [GetRegionsArgs].
  /// [accountId] AWS account ID. Must be a member account in the same organization.
  /// [regionOptStatusContains] A list of region opt-in statuses to filter the results. Valid values are `ENABLED`, `ENABLING`, `DISABLING`, `DISABLED`, and `ENABLED_BY_DEFAULT`.
  GetRegionsArgs({String? accountId, List<String>? regionOptStatusContains})
    : accountId = pulumi.Input.asOptionalInput<String>(accountId),
      regionOptStatusContains = pulumi.Input.asOptionalInput<List<String>>(
        regionOptStatusContains,
      );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'regionOptStatusContains': ?regionOptStatusContains,
    };
  }

  factory GetRegionsArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionsArgs(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      regionOptStatusContains: map['regionOptStatusContains'] == null
          ? null
          : (map['regionOptStatusContains'] as List).cast<String>(),
    );
  }
}
