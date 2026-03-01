// ignore_for_file: unused_element, unnecessary_cast

class CodeSigningConfigAllowedPublishers {
  /// Set of ARNs for each of the signing profiles. A signing profile defines a trusted user who can sign a code package. Maximum of 20 signing profiles.
  final List<String> signingProfileVersionArns;

  /// Creates a new [CodeSigningConfigAllowedPublishers].
  /// [signingProfileVersionArns] Set of ARNs for each of the signing profiles. A signing profile defines a trusted user who can sign a code package. Maximum of 20 signing profiles.
  CodeSigningConfigAllowedPublishers({required this.signingProfileVersionArns});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'signingProfileVersionArns': signingProfileVersionArns,
    };
  }

  factory CodeSigningConfigAllowedPublishers.fromMap(Map<String, dynamic> map) {
    return CodeSigningConfigAllowedPublishers(
      signingProfileVersionArns: (map['signingProfileVersionArns'] as List)
          .cast<String>(),
    );
  }
}
