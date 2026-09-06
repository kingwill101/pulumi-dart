// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listPrivateCloudAdminCredentials.
class ListPrivateCloudAdminCredentialsResult {
  /// NSX-T Manager password
  final String? nsxtPassword;
  /// NSX-T Manager username
  final String? nsxtUsername;
  /// vCenter admin password
  final String? vcenterPassword;
  /// vCenter admin username
  final String? vcenterUsername;

  /// Creates a new [ListPrivateCloudAdminCredentialsResult].
  /// [nsxtPassword] NSX-T Manager password
  /// [nsxtUsername] NSX-T Manager username
  /// [vcenterPassword] vCenter admin password
  /// [vcenterUsername] vCenter admin username
  const ListPrivateCloudAdminCredentialsResult({
    this.nsxtPassword,
    this.nsxtUsername,
    this.vcenterPassword,
    this.vcenterUsername,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nsxtPassword': ?nsxtPassword,
      'nsxtUsername': ?nsxtUsername,
      'vcenterPassword': ?vcenterPassword,
      'vcenterUsername': ?vcenterUsername,
    };
  }

  factory ListPrivateCloudAdminCredentialsResult.fromMap(Map<String, dynamic> map) {
    return ListPrivateCloudAdminCredentialsResult(
      nsxtPassword: (() { final guardedValue = map['nsxtPassword']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nsxtUsername: (() { final guardedValue = map['nsxtUsername']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vcenterPassword: (() { final guardedValue = map['vcenterPassword']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vcenterUsername: (() { final guardedValue = map['vcenterUsername']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
