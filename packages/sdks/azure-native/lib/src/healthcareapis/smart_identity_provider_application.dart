// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An Application configured in the Identity Provider used to access FHIR resources.
class SmartIdentityProviderApplication {
  /// The actions that are permitted to be performed on FHIR resources for the application.
  final pulumi.Input<List<String>>? allowedDataActions;

  /// The audience that will be used to validate bearer tokens against the given authority.
  final pulumi.Input<String>? audience;

  /// The application client id defined in the identity provider. This value will be used to validate bearer tokens against the given authority.
  final pulumi.Input<String>? clientId;

  /// Creates a new [SmartIdentityProviderApplication].
  /// [allowedDataActions] The actions that are permitted to be performed on FHIR resources for the application.
  /// [audience] The audience that will be used to validate bearer tokens against the given authority.
  /// [clientId] The application client id defined in the identity provider. This value will be used to validate bearer tokens against the given authority.
  SmartIdentityProviderApplication({
    this.allowedDataActions,
    this.audience,
    this.clientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedDataActions': ?allowedDataActions,
      'audience': ?audience,
      'clientId': ?clientId,
    };
  }

  factory SmartIdentityProviderApplication.fromMap(Map<String, dynamic> map) {
    return SmartIdentityProviderApplication(
      allowedDataActions: (() {
        final guardedValue = map['allowedDataActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      audience: (() {
        final guardedValue = map['audience'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientId: (() {
        final guardedValue = map['clientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
