// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// WindowsProfile - Profile for Windows VMs in the container service cluster.
class WindowsProfile {
  /// AdminPassword - Specifies the password of the administrator account. <br><br> **Minimum-length:** 8 characters <br><br> **Max-length:** 123 characters <br><br> **Complexity requirements:** 3 out of 4 conditions below need to be fulfilled <br> Has lower characters <br>Has upper characters <br> Has a digit <br> Has a special character (Regex match [\W_]) <br><br> **Disallowed values:** "abc@123", "P@$$w0rd", "P@ssw0rd", "P@ssword123", "Pa$$word", "pass@word1", "Password!", "Password1", "Password22", "iloveyou!"
  final pulumi.Input<String>? adminPassword;
  /// AdminUsername - Specifies the name of the administrator account. <br><br> **restriction:** Cannot end in "." <br><br> **Disallowed values:** "administrator", "admin", "user", "user1", "test", "user2", "test1", "user3", "admin1", "1", "123", "a", "actuser", "adm", "admin2", "aspnet", "backup", "console", "david", "guest", "john", "owner", "root", "server", "sql", "support", "support_388945a0", "sys", "test2", "test3", "user4", "user5". <br><br> **Minimum-length:** 1 character <br><br> **Max-length:** 20 characters
  final pulumi.Input<String>? adminUsername;
  /// EnableCSIProxy - Whether to enable CSI proxy.
  final pulumi.Input<bool>? enableCsiProxy;
  /// LicenseType - The licenseType to use for Windows VMs. Windows_Server is used to enable Azure Hybrid User Benefits for Windows VMs. Possible values include: 'None', 'Windows_Server'
  final pulumi.Input<String>? licenseType;

  /// Creates a new [WindowsProfile].
  /// [adminPassword] AdminPassword - Specifies the password of the administrator account. <br><br> **Minimum-length:** 8 characters <br><br> **Max-length:** 123 characters <br><br> **Complexity requirements:** 3 out of 4 conditions below need to be fulfilled <br> Has lower characters <br>Has upper characters <br> Has a digit <br> Has a special character (Regex match [\W_]) <br><br> **Disallowed values:** "abc@123", "P@$$w0rd", "P@ssw0rd", "P@ssword123", "Pa$$word", "pass@word1", "Password!", "Password1", "Password22", "iloveyou!"
  /// [adminUsername] AdminUsername - Specifies the name of the administrator account. <br><br> **restriction:** Cannot end in "." <br><br> **Disallowed values:** "administrator", "admin", "user", "user1", "test", "user2", "test1", "user3", "admin1", "1", "123", "a", "actuser", "adm", "admin2", "aspnet", "backup", "console", "david", "guest", "john", "owner", "root", "server", "sql", "support", "support_388945a0", "sys", "test2", "test3", "user4", "user5". <br><br> **Minimum-length:** 1 character <br><br> **Max-length:** 20 characters
  /// [enableCsiProxy] EnableCSIProxy - Whether to enable CSI proxy.
  /// [licenseType] LicenseType - The licenseType to use for Windows VMs. Windows_Server is used to enable Azure Hybrid User Benefits for Windows VMs. Possible values include: 'None', 'Windows_Server'
  WindowsProfile({
    this.adminPassword,
    this.adminUsername,
    this.enableCsiProxy,
    this.licenseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'adminUsername': ?adminUsername,
      'enableCsiProxy': ?enableCsiProxy,
      'licenseType': ?licenseType,
    };
  }

  factory WindowsProfile.fromMap(Map<String, dynamic> map) {
    return WindowsProfile(
      adminPassword: map['adminPassword'] == null ? null : (map['adminPassword']! as String).input(),
      adminUsername: map['adminUsername'] == null ? null : (map['adminUsername']! as String).input(),
      enableCsiProxy: map['enableCsiProxy'] == null ? null : (map['enableCsiProxy']! as bool).input(),
      licenseType: map['licenseType'] == null ? null : (map['licenseType']! as String).input(),
    );
  }
}

