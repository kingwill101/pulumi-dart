// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The lab security profile.
class SecurityProfileResponse {
  /// Whether any user or only specified users can register to a lab.
  final pulumi.Input<String>? openAccess;

  /// The registration code for the lab.
  final pulumi.Input<String> registrationCode;

  /// Creates a new [SecurityProfileResponse].
  /// [openAccess] Whether any user or only specified users can register to a lab.
  /// [registrationCode] The registration code for the lab.
  SecurityProfileResponse({this.openAccess, required this.registrationCode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'openAccess': ?openAccess,
      'registrationCode': registrationCode,
    };
  }

  factory SecurityProfileResponse.fromMap(Map<String, dynamic> map) {
    return SecurityProfileResponse(
      openAccess: (() {
        final guardedValue = map['openAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      registrationCode: pulumi.Input.fromValue(
        map['registrationCode'] as String,
      ),
    );
  }
}
