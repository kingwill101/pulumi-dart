// ignore_for_file: unused_element, unnecessary_cast

class GatewaySmbActiveDirectorySettings {
  final String? activeDirectoryStatus;

  /// List of IPv4 addresses, NetBIOS names, or host names of your domain server.
  /// If you need to specify the port number include it after the colon (“:”). For example, `mydc.mydomain.com:389`.
  final List<String>? domainControllers;

  /// The name of the domain that you want the gateway to join.
  final String domainName;

  /// The organizational unit (OU) is a container in an Active Directory that can hold users, groups,
  /// computers, and other OUs and this parameter specifies the OU that the gateway will join within the AD domain.
  final String? organizationalUnit;

  /// The password of the user who has permission to add the gateway to the Active Directory domain.
  final String password;

  /// Specifies the time in seconds, in which the JoinDomain operation must complete. The default is `20` seconds.
  final int? timeoutInSeconds;

  /// The user name of user who has permission to add the gateway to the Active Directory domain.
  final String username;

  /// Creates a new [GatewaySmbActiveDirectorySettings].
  /// [activeDirectoryStatus] Optional.
  /// [domainControllers] List of IPv4 addresses, NetBIOS names, or host names of your domain server.
  /// [domainName] The name of the domain that you want the gateway to join.
  /// [organizationalUnit] The organizational unit (OU) is a container in an Active Directory that can hold users, groups,
  /// [password] The password of the user who has permission to add the gateway to the Active Directory domain.
  /// [timeoutInSeconds] Specifies the time in seconds, in which the JoinDomain operation must complete. The default is `20` seconds.
  /// [username] The user name of user who has permission to add the gateway to the Active Directory domain.
  GatewaySmbActiveDirectorySettings({
    this.activeDirectoryStatus,
    this.domainControllers,
    required this.domainName,
    this.organizationalUnit,
    required this.password,
    this.timeoutInSeconds,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryStatus': ?activeDirectoryStatus,
      'domainControllers': ?domainControllers,
      'domainName': domainName,
      'organizationalUnit': ?organizationalUnit,
      'password': password,
      'timeoutInSeconds': ?timeoutInSeconds,
      'username': username,
    };
  }

  factory GatewaySmbActiveDirectorySettings.fromMap(Map<String, dynamic> map) {
    return GatewaySmbActiveDirectorySettings(
      activeDirectoryStatus: map['activeDirectoryStatus'] == null
          ? null
          : map['activeDirectoryStatus'] as String,
      domainControllers: map['domainControllers'] == null
          ? null
          : (map['domainControllers'] as List).cast<String>(),
      domainName: map['domainName'] as String,
      organizationalUnit: map['organizationalUnit'] == null
          ? null
          : map['organizationalUnit'] as String,
      password: map['password'] as String,
      timeoutInSeconds: map['timeoutInSeconds'] == null
          ? null
          : map['timeoutInSeconds'] as int,
      username: map['username'] as String,
    );
  }
}
