// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Onboarding information
class OnboardingResponse {
  /// The location of the development portal
  final pulumi.Input<List<String>>? developerPortalUri;
  /// Onboarding guide.
  final pulumi.Input<String>? instructions;

  /// Creates a new [OnboardingResponse].
  /// [developerPortalUri] The location of the development portal
  /// [instructions] Onboarding guide.
  OnboardingResponse({
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
      developerPortalUri: map['developerPortalUri'] == null ? null : ((map['developerPortalUri'] as List).cast<String>()).input(),
      instructions: map['instructions'] == null ? null : (map['instructions'] as String).input(),
    );
  }
}

