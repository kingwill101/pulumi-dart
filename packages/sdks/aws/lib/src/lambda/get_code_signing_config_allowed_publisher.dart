// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCodeSigningConfigAllowedPublisher {
  /// Set of ARNs for each of the signing profiles. A signing profile defines a trusted user who can sign a code package.
  final pulumi.Input<List<String>> signingProfileVersionArns;

  /// Creates a new [GetCodeSigningConfigAllowedPublisher].
  /// [signingProfileVersionArns] Set of ARNs for each of the signing profiles. A signing profile defines a trusted user who can sign a code package.
  const GetCodeSigningConfigAllowedPublisher({
    required this.signingProfileVersionArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'signingProfileVersionArns': signingProfileVersionArns,
    };
  }

  factory GetCodeSigningConfigAllowedPublisher.fromMap(Map<String, dynamic> map) {
    return GetCodeSigningConfigAllowedPublisher(
      signingProfileVersionArns: pulumi.Input.fromValue((map['signingProfileVersionArns'] as List).cast<String>()),
    );
  }
}
