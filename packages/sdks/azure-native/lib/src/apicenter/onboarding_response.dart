// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Onboarding information
class OnboardingResponse {
  /// The location of the development portal
  final pulumi.Input<List<String>?>? developerPortalUri;
  /// Onboarding guide.
  final pulumi.Input<String?>? instructions;

  /// Creates a new [OnboardingResponse].
  /// [developerPortalUri] The location of the development portal
  /// [instructions] Onboarding guide.
  const OnboardingResponse({
    this.developerPortalUri,
    this.instructions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'developerPortalUri': ?developerPortalUri,
      'instructions': ?instructions,
    };
  }

  factory OnboardingResponse.fromMap(Map<String, dynamic> map) {
    return OnboardingResponse(
      developerPortalUri: (() { final guardedValue = map['developerPortalUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instructions: (() { final guardedValue = map['instructions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
