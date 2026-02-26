// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSessionContext.
class GetSessionContextArgs {
  /// ARN for an assumed role.
  ///
  /// > If <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> is a non-role ARN, Pulumi gives no error and <span pulumi-lang-nodejs="`issuerArn`" pulumi-lang-dotnet="`IssuerArn`" pulumi-lang-go="`issuerArn`" pulumi-lang-python="`issuer_arn`" pulumi-lang-yaml="`issuerArn`" pulumi-lang-java="`issuerArn`">`issuer_arn`</span> will be equal to the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> value. For STS assumed-role ARNs, Pulumi gives an error if the identified IAM role does not exist.
  final Input<String> arn;

  GetSessionContextArgs({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    return map;
  }

  factory GetSessionContextArgs.fromMap(Map<String, dynamic> map) {
    return GetSessionContextArgs(
      arn: Input.asInput<String>(map['arn']),
    );
  }
}
