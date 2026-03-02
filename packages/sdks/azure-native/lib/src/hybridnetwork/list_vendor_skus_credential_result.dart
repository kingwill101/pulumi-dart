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
  ListVendorSkusCredentialResult({
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
      acrServerUrl: map['acrServerUrl'] == null ? null : map['acrServerUrl']! as String,
      acrToken: map['acrToken'] == null ? null : map['acrToken']! as String,
      expiry: map['expiry'] == null ? null : map['expiry']! as String,
      repositories: map['repositories'] == null ? null : (map['repositories']! as List).cast<String>(),
      username: map['username'] == null ? null : map['username']! as String,
    );
  }
}

