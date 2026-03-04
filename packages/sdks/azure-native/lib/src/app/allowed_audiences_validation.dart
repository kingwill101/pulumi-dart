// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the Allowed Audiences validation flow.
class AllowedAudiencesValidation {
  /// The configuration settings of the allowed list of audiences from which to validate the JWT token.
  final pulumi.Input<List<String>>? allowedAudiences;

  /// Creates a new [AllowedAudiencesValidation].
  /// [allowedAudiences] The configuration settings of the allowed list of audiences from which to validate the JWT token.
  AllowedAudiencesValidation({this.allowedAudiences});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'allowedAudiences': ?allowedAudiences};
  }

  factory AllowedAudiencesValidation.fromMap(Map<String, dynamic> map) {
    return AllowedAudiencesValidation(
      allowedAudiences: (() {
        final guardedValue = map['allowedAudiences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
