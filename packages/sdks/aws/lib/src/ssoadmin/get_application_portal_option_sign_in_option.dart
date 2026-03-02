// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationPortalOptionSignInOption {
  final pulumi.Input<String> applicationUrl;
  final pulumi.Input<String> origin;

  /// Creates a new [GetApplicationPortalOptionSignInOption].
  /// [applicationUrl] Required.
  /// [origin] Required.
  GetApplicationPortalOptionSignInOption({
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
      applicationUrl: (map['applicationUrl'] as String).input(),
      origin: (map['origin'] as String).input(),
    );
  }
}

