// ignore_for_file: unused_element, unnecessary_cast

import 'provider_registration_properties.dart';

/// The provider registration.
class CustomRolloutSpecificationProviderRegistration {
  /// Provider registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  final String? kind;
  final ProviderRegistrationProperties? properties;

  /// Creates a new [CustomRolloutSpecificationProviderRegistration].
  /// [kind] Provider registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [properties] Optional.
  CustomRolloutSpecificationProviderRegistration({
    this.kind,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory CustomRolloutSpecificationProviderRegistration.fromMap(Map<String, dynamic> map) {
    return CustomRolloutSpecificationProviderRegistration(
      kind: map['kind'] == null ? null : map['kind'] as String,
      properties: map['properties'] == null ? null : ProviderRegistrationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

