// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getServerlessSecurityPolicy.
class GetServerlessSecurityPolicyArgs {
  /// Name of the policy
  final Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Type of security policy. One of <span pulumi-lang-nodejs="`encryption`" pulumi-lang-dotnet="`Encryption`" pulumi-lang-go="`encryption`" pulumi-lang-python="`encryption`" pulumi-lang-yaml="`encryption`" pulumi-lang-java="`encryption`">`encryption`</span> or <span pulumi-lang-nodejs="`network`" pulumi-lang-dotnet="`Network`" pulumi-lang-go="`network`" pulumi-lang-python="`network`" pulumi-lang-yaml="`network`" pulumi-lang-java="`network`">`network`</span>.
  final Input<String> type;

  GetServerlessSecurityPolicyArgs({
    required this.name,
    this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['type'] = type;
    return map;
  }

  factory GetServerlessSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServerlessSecurityPolicyArgs(
      name: Input.asInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
