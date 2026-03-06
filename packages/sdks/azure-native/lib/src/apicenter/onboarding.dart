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
  const Onboarding({
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
      developerPortalUri: (() { final guardedValue = map['developerPortalUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instructions: (() { final guardedValue = map['instructions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

