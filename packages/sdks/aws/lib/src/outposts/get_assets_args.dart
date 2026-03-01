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
  final pulumi.Input<List<String>>? hostIdFilters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Filters by list of state status. Valid values: "ACTIVE", "RETIRING".
  final pulumi.Input<List<String>>? statusIdFilters;

  /// Creates a new [GetAssetsArgs].
  /// [arn] Outpost ARN.
  /// [hostIdFilters] Filters by list of Host IDs of a Dedicated Host.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [statusIdFilters] Filters by list of state status. Valid values: "ACTIVE", "RETIRING".
  GetAssetsArgs({
    required pulumi.Output<String> arn,
    pulumi.Output<List<String>>? hostIdFilters,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? statusIdFilters,
  }) :
      arn = pulumi.Input.asInput<String>(arn),
      hostIdFilters = pulumi.Input.asOptionalInput<List<String>>(hostIdFilters),
      region = pulumi.Input.asOptionalInput<String>(region),
      statusIdFilters = pulumi.Input.asOptionalInput<List<String>>(statusIdFilters);

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
      arn: pulumi.Output.create<String>(map['arn'] as String),
      hostIdFilters: map['hostIdFilters'] == null ? null : pulumi.Output.create<List<String>>((map['hostIdFilters'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      statusIdFilters: map['statusIdFilters'] == null ? null : pulumi.Output.create<List<String>>((map['statusIdFilters'] as List).cast<String>()),
    );
  }
}

