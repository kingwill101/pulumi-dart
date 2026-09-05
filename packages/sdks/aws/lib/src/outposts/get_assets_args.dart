// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_outposts_get_assets_get_assets_args_doc}
/// Arguments for getAssets.
/// {@endtemplate}
/// {@macro pulumi_outposts_get_assets_get_assets_args_doc}
class GetAssetsArgs {
  /// Outpost ARN.
  final pulumi.Input<String> arn;
  /// Filters by list of Host IDs of a Dedicated Host.
  final pulumi.Input<List<String>?>? hostIdFilters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Filters by list of state status. Valid values: "ACTIVE", "RETIRING".
  final pulumi.Input<List<String>?>? statusIdFilters;

  /// Creates a new [GetAssetsArgs].
  /// [arn] Outpost ARN.
  /// [hostIdFilters] Filters by list of Host IDs of a Dedicated Host.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [statusIdFilters] Filters by list of state status. Valid values: "ACTIVE", "RETIRING".
  const GetAssetsArgs({
    required this.arn,
    this.hostIdFilters,
    this.region,
    this.statusIdFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'hostIdFilters': ?hostIdFilters,
      'region': ?region,
      'statusIdFilters': ?statusIdFilters,
    };
  }

  factory GetAssetsArgs.fromMap(Map<String, dynamic> map) {
    return GetAssetsArgs(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      hostIdFilters: (() { final guardedValue = map['hostIdFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusIdFilters: (() { final guardedValue = map['statusIdFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
