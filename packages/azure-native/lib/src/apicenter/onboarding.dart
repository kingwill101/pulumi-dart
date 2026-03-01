// ignore_for_file: unused_element, unnecessary_cast


/// Onboarding information
class Onboarding {
  /// The location of the development portal
  final List<String>? developerPortalUri;
  /// Onboarding guide.
  final String? instructions;

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
      developerPortalUri: map['developerPortalUri'] == null ? null : (map['developerPortalUri'] as List).cast<String>(),
      instructions: map['instructions'] == null ? null : map['instructions'] as String,
    );
  }
}

