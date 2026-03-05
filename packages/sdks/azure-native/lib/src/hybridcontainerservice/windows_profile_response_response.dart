// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Profile for Windows VMs in the container service cluster.
class WindowsProfileResponseResponse {
  /// AdminUsername - Specifies the name of the administrator account. &lt;br&gt;&lt;br&gt; **restriction:** Cannot end in "." &lt;br&gt;&lt;br&gt; **Disallowed values:** "administrator", "admin", "user", "user1", "test", "user2", "test1", "user3", "admin1", "1", "123", "a", "actuser", "adm", "admin2", "aspnet", "backup", "console", "david", "guest", "john", "owner", "root", "server", "sql", "support", "support_388945a0", "sys", "test2", "test3", "user4", "user5". &lt;br&gt;&lt;br&gt; **Minimum-length:** 1 character &lt;br&gt;&lt;br&gt; **Max-length:** 20 characters
  final pulumi.Input<String>? adminUsername;
  /// EnableCSIProxy - Whether to enable CSI proxy.
  final pulumi.Input<bool>? enableCsiProxy;
  /// LicenseType - The licenseType to use for Windows VMs. Windows_Server is used to enable Azure Hybrid User Benefits for Windows VMs. Possible values include: 'None', 'Windows_Server'
  final pulumi.Input<String>? licenseType;

  /// Creates a new [WindowsProfileResponseResponse].
  /// [adminUsername] AdminUsername - Specifies the name of the administrator account. &lt;br&gt;&lt;br&gt; **restriction:** Cannot end in "." &lt;br&gt;&lt;br&gt; **Disallowed values:** "administrator", "admin", "user", "user1", "test", "user2", "test1", "user3", "admin1", "1", "123", "a", "actuser", "adm", "admin2", "aspnet", "backup", "console", "david", "guest", "john", "owner", "root", "server", "sql", "support", "support_388945a0", "sys", "test2", "test3", "user4", "user5". &lt;br&gt;&lt;br&gt; **Minimum-length:** 1 character &lt;br&gt;&lt;br&gt; **Max-length:** 20 characters
  /// [enableCsiProxy] EnableCSIProxy - Whether to enable CSI proxy.
  /// [licenseType] LicenseType - The licenseType to use for Windows VMs. Windows_Server is used to enable Azure Hybrid User Benefits for Windows VMs. Possible values include: 'None', 'Windows_Server'
  WindowsProfileResponseResponse({
    this.adminUsername,
    this.enableCsiProxy,
    this.licenseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsername': ?adminUsername,
      'enableCsiProxy': ?enableCsiProxy,
      'licenseType': ?licenseType,
    };
  }

  factory WindowsProfileResponseResponse.fromMap(Map<String, dynamic> map) {
    return WindowsProfileResponseResponse(
      adminUsername: (() { final guardedValue = map['adminUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableCsiProxy: (() { final guardedValue = map['enableCsiProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

