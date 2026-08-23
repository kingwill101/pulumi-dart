// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationPortalOptionSignInOption {
  /// URL that accepts authentication requests for an application.
  final pulumi.Input<String> applicationUrl;
  /// How IAM Identity Center navigates the user to the target application.
  final pulumi.Input<String> origin;

  /// Creates a new [GetApplicationPortalOptionSignInOption].
  /// [applicationUrl] URL that accepts authentication requests for an application.
  /// [origin] How IAM Identity Center navigates the user to the target application.
  const GetApplicationPortalOptionSignInOption({
    required this.applicationUrl,
    required this.origin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationUrl': applicationUrl,
      'origin': origin,
    };
  }

  factory GetApplicationPortalOptionSignInOption.fromMap(Map<String, dynamic> map) {
    return GetApplicationPortalOptionSignInOption(
      applicationUrl: pulumi.Input.fromValue(map['applicationUrl'] as String),
      origin: pulumi.Input.fromValue(map['origin'] as String),
    );
  }
}
