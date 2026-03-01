// ignore_for_file: unused_element, unnecessary_cast

import 'service_sign_up_terms_of_service.dart';

class ServiceSignUp {
  /// Can users sign up on the development portal?
  final bool enabled;
  /// A `terms_of_service` block as defined below.
  final ServiceSignUpTermsOfService termsOfService;

  /// Creates a new [ServiceSignUp].
  /// [enabled] Can users sign up on the development portal?
  /// [termsOfService] A `terms_of_service` block as defined below.
  ServiceSignUp({
    required this.enabled,
    required this.termsOfService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'termsOfService': termsOfService.toMap(),
    };
  }

  factory ServiceSignUp.fromMap(Map<String, dynamic> map) {
    return ServiceSignUp(
      enabled: map['enabled'] as bool,
      termsOfService: ServiceSignUpTermsOfService.fromMap((map['termsOfService'] as Map).cast<String, dynamic>()),
    );
  }
}

