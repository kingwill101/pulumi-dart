// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listPrivateCloudAdminCredentials.
class ListPrivateCloudAdminCredentialsResult {
  /// NSX-T Manager password
  final String nsxtPassword;
  /// NSX-T Manager username
  final String nsxtUsername;
  /// vCenter admin password
  final String vcenterPassword;
  /// vCenter admin username
  final String vcenterUsername;

  /// Creates a new [ListPrivateCloudAdminCredentialsResult].
  /// [nsxtPassword] NSX-T Manager password
  /// [nsxtUsername] NSX-T Manager username
  /// [vcenterPassword] vCenter admin password
  /// [vcenterUsername] vCenter admin username
  const ListPrivateCloudAdminCredentialsResult({
    required this.nsxtPassword,
    required this.nsxtUsername,
    required this.vcenterPassword,
    required this.vcenterUsername,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nsxtPassword': nsxtPassword,
      'nsxtUsername': nsxtUsername,
      'vcenterPassword': vcenterPassword,
      'vcenterUsername': vcenterUsername,
    };
  }

  factory ListPrivateCloudAdminCredentialsResult.fromMap(Map<String, dynamic> map) {
    return ListPrivateCloudAdminCredentialsResult(
      nsxtPassword: map['nsxtPassword'] as String,
      nsxtUsername: map['nsxtUsername'] as String,
      vcenterPassword: map['vcenterPassword'] as String,
      vcenterUsername: map['vcenterUsername'] as String,
    );
  }
}

