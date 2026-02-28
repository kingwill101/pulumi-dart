// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oam_get_sinks_get_sinks_args_doc}
/// Arguments for getSinks.
/// {@endtemplate}
/// {@macro pulumi_oam_get_sinks_get_sinks_args_doc}
class GetSinksArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetSinksArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetSinksArgs({
    String? region,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory GetSinksArgs.fromMap(Map<String, dynamic> map) {
    return GetSinksArgs(
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

