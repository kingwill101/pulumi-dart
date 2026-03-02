// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Onboarding information
class Onboarding {
  /// The location of the development portal
  final pulumi.Input<List<String>>? developerPortalUri;
  /// Onboarding guide.
  final pulumi.Input<String>? instructions;

  /// Creates a new [Onboarding].
  /// [developerPortalUri] The location of the development portal
  /// [instructions] Onboarding guide.
  Onboarding({
    this.developerPortalUri,
    this.instructions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'developerPortalUri': ?developerPortalUri,
      'instructions': ?instructions,
    };
  }

  factory Onboarding.fromMap(Map<String, dynamic> map) {
    return Onboarding(
      developerPortalUri: map['developerPortalUri'] == null ? null : ((map['developerPortalUri'] as List).cast<String>()).input(),
      instructions: map['instructions'] == null ? null : (map['instructions'] as String).input(),
    );
  }
}

