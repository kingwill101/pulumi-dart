// ignore_for_file: unused_element, unnecessary_cast

class CustomLogSourceConfigurationProviderIdentity {
  /// The external ID used to estalish trust relationship with the AWS identity.
  final String externalId;

  /// The AWS identity principal.
  final String principal;

  CustomLogSourceConfigurationProviderIdentity({
    required this.externalId,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['externalId'] = externalId;
    map['principal'] = principal;
    return map;
  }

  factory CustomLogSourceConfigurationProviderIdentity.fromMap(
      Map<String, dynamic> map) {
    return CustomLogSourceConfigurationProviderIdentity(
      externalId: map['externalId'] as String,
      principal: map['principal'] as String,
    );
  }
}
