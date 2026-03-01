// ignore_for_file: unused_element, unnecessary_cast


class GetServicePrincipalSamlSingleSignOn {
  /// The relative URI the service provider would redirect to after completion of the single sign-on flow.
  final String relayState;

  /// Creates a new [GetServicePrincipalSamlSingleSignOn].
  /// [relayState] The relative URI the service provider would redirect to after completion of the single sign-on flow.
  GetServicePrincipalSamlSingleSignOn({
    required this.relayState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'relayState': relayState,
    };
  }

  factory GetServicePrincipalSamlSingleSignOn.fromMap(Map<String, dynamic> map) {
    return GetServicePrincipalSamlSingleSignOn(
      relayState: map['relayState'] as String,
    );
  }
}

