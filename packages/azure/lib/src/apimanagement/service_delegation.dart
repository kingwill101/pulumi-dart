// ignore_for_file: unused_element, unnecessary_cast


class ServiceDelegation {
  /// Should subscription requests be delegated to an external url? Defaults to `false`.
  final bool? subscriptionsEnabled;
  /// The delegation URL.
  final String? url;
  /// Should user registration requests be delegated to an external url? Defaults to `false`.
  final bool? userRegistrationEnabled;
  /// A base64-encoded validation key to validate, that a request is coming from Azure API Management.
  final String? validationKey;

  /// Creates a new [ServiceDelegation].
  /// [subscriptionsEnabled] Should subscription requests be delegated to an external url? Defaults to `false`.
  /// [url] The delegation URL.
  /// [userRegistrationEnabled] Should user registration requests be delegated to an external url? Defaults to `false`.
  /// [validationKey] A base64-encoded validation key to validate, that a request is coming from Azure API Management.
  ServiceDelegation({
    this.subscriptionsEnabled,
    this.url,
    this.userRegistrationEnabled,
    this.validationKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subscriptionsEnabled': ?subscriptionsEnabled,
      'url': ?url,
      'userRegistrationEnabled': ?userRegistrationEnabled,
      'validationKey': ?validationKey,
    };
  }

  factory ServiceDelegation.fromMap(Map<String, dynamic> map) {
    return ServiceDelegation(
      subscriptionsEnabled: map['subscriptionsEnabled'] == null ? null : map['subscriptionsEnabled'] as bool,
      url: map['url'] == null ? null : map['url'] as String,
      userRegistrationEnabled: map['userRegistrationEnabled'] == null ? null : map['userRegistrationEnabled'] as bool,
      validationKey: map['validationKey'] == null ? null : map['validationKey'] as String,
    );
  }
}

