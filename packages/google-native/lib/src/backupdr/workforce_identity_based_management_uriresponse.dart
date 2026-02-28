// ignore_for_file: unused_element, unnecessary_cast

/// ManagementURI depending on the Workforce Identity i.e. either 1p or 3p.
class WorkforceIdentityBasedManagementURIResponse {
  /// First party Management URI for Google Identities.
  final String firstPartyManagementUri;

  /// Third party Management URI for External Identity Providers.
  final String thirdPartyManagementUri;

  /// Creates a new [WorkforceIdentityBasedManagementURIResponse].
  /// [firstPartyManagementUri] First party Management URI for Google Identities.
  /// [thirdPartyManagementUri] Third party Management URI for External Identity Providers.
  WorkforceIdentityBasedManagementURIResponse({
    required this.firstPartyManagementUri,
    required this.thirdPartyManagementUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firstPartyManagementUri'] = firstPartyManagementUri;
    map['thirdPartyManagementUri'] = thirdPartyManagementUri;
    return map;
  }

  factory WorkforceIdentityBasedManagementURIResponse.fromMap(
      Map<String, dynamic> map) {
    return WorkforceIdentityBasedManagementURIResponse(
      firstPartyManagementUri: map['firstPartyManagementUri'] as String,
      thirdPartyManagementUri: map['thirdPartyManagementUri'] as String,
    );
  }
}
