// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listVendorSkusCredential.
class ListVendorSkusCredentialResult {
  /// The Acr server url
  final String? acrServerUrl;
  /// The credential value.
  final String? acrToken;
  /// The UTC time when credential will expire.
  final String? expiry;
  /// The repositories that could be accessed using the current credential.
  final List<String>? repositories;
  /// The username of the sku credential.
  final String? username;

  /// Creates a new [ListVendorSkusCredentialResult].
  /// [acrServerUrl] The Acr server url
  /// [acrToken] The credential value.
  /// [expiry] The UTC time when credential will expire.
  /// [repositories] The repositories that could be accessed using the current credential.
  /// [username] The username of the sku credential.
  const ListVendorSkusCredentialResult({
    this.acrServerUrl,
    this.acrToken,
    this.expiry,
    this.repositories,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acrServerUrl': ?acrServerUrl,
      'acrToken': ?acrToken,
      'expiry': ?expiry,
      'repositories': ?repositories,
      'username': ?username,
    };
  }

  factory ListVendorSkusCredentialResult.fromMap(Map<String, dynamic> map) {
    return ListVendorSkusCredentialResult(
      acrServerUrl: (() { final guardedValue = map['acrServerUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      acrToken: (() { final guardedValue = map['acrToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiry: (() { final guardedValue = map['expiry']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositories: (() { final guardedValue = map['repositories']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
