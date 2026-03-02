// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_wafregional_get_ipset_get_ipset_args_doc}
/// Arguments for getIpset.
/// {@endtemplate}
/// {@macro pulumi_wafregional_get_ipset_get_ipset_args_doc}
class GetIpsetArgs {
  /// Name of the WAF Regional IP set.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetIpsetArgs].
  /// [name] Name of the WAF Regional IP set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetIpsetArgs({
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
    };
  }

  factory GetIpsetArgs.fromMap(Map<String, dynamic> map) {
    return GetIpsetArgs(
      name: (map['name'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

