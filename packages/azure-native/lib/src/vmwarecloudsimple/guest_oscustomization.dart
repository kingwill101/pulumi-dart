// ignore_for_file: unused_element, unnecessary_cast


/// Guest OS Customization properties
class GuestOSCustomization {
  /// List of dns servers to use
  final List<String>? dnsServers;
  /// Virtual Machine hostname
  final String? hostName;
  /// Password for login
  final String? password;
  /// id of customization policy
  final String? policyId;
  /// Username for login
  final String? username;

  /// Creates a new [GuestOSCustomization].
  /// [dnsServers] List of dns servers to use
  /// [hostName] Virtual Machine hostname
  /// [password] Password for login
  /// [policyId] id of customization policy
  /// [username] Username for login
  GuestOSCustomization({
    this.dnsServers,
    this.hostName,
    this.password,
    this.policyId,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
      'hostName': ?hostName,
      'password': ?password,
      'policyId': ?policyId,
      'username': ?username,
    };
  }

  factory GuestOSCustomization.fromMap(Map<String, dynamic> map) {
    return GuestOSCustomization(
      dnsServers: map['dnsServers'] == null ? null : (map['dnsServers'] as List).cast<String>(),
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      policyId: map['policyId'] == null ? null : map['policyId'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

