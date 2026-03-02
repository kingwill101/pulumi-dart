// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_gmsa_profile_response.dart';

/// Profile for Windows VMs in the managed cluster.
class ManagedClusterWindowsProfileResponse {
  /// Specifies the password of the administrator account. <br><br> **Minimum-length:** 8 characters <br><br> **Max-length:** 123 characters <br><br> **Complexity requirements:** 3 out of 4 conditions below need to be fulfilled <br> Has lower characters <br>Has upper characters <br> Has a digit <br> Has a special character (Regex match [\W_]) <br><br> **Disallowed values:** "abc@123", "P@$$w0rd", "P@ssw0rd", "P@ssword123", "Pa$$word", "pass@word1", "Password!", "Password1", "Password22", "iloveyou!"
  final pulumi.Input<String>? adminPassword;
  /// Specifies the name of the administrator account. <br><br> **Restriction:** Cannot end in "." <br><br> **Disallowed values:** "administrator", "admin", "user", "user1", "test", "user2", "test1", "user3", "admin1", "1", "123", "a", "actuser", "adm", "admin2", "aspnet", "backup", "console", "david", "guest", "john", "owner", "root", "server", "sql", "support", "support_388945a0", "sys", "test2", "test3", "user4", "user5". <br><br> **Minimum-length:** 1 character <br><br> **Max-length:** 20 characters
  final pulumi.Input<String> adminUsername;
  /// Whether to enable CSI proxy. For more details on CSI proxy, see the [CSI proxy GitHub repo](https://github.com/kubernetes-csi/csi-proxy).
  final pulumi.Input<bool>? enableCSIProxy;
  /// The Windows gMSA Profile in the Managed Cluster.
  final pulumi.Input<WindowsGmsaProfileResponse>? gmsaProfile;
  /// The license type to use for Windows VMs. See [Azure Hybrid User Benefits](https://azure.microsoft.com/pricing/hybrid-benefit/faq/) for more details.
  final pulumi.Input<String>? licenseType;

  /// Creates a new [ManagedClusterWindowsProfileResponse].
  /// [adminPassword] Specifies the password of the administrator account. <br><br> **Minimum-length:** 8 characters <br><br> **Max-length:** 123 characters <br><br> **Complexity requirements:** 3 out of 4 conditions below need to be fulfilled <br> Has lower characters <br>Has upper characters <br> Has a digit <br> Has a special character (Regex match [\W_]) <br><br> **Disallowed values:** "abc@123", "P@$$w0rd", "P@ssw0rd", "P@ssword123", "Pa$$word", "pass@word1", "Password!", "Password1", "Password22", "iloveyou!"
  /// [adminUsername] Specifies the name of the administrator account. <br><br> **Restriction:** Cannot end in "." <br><br> **Disallowed values:** "administrator", "admin", "user", "user1", "test", "user2", "test1", "user3", "admin1", "1", "123", "a", "actuser", "adm", "admin2", "aspnet", "backup", "console", "david", "guest", "john", "owner", "root", "server", "sql", "support", "support_388945a0", "sys", "test2", "test3", "user4", "user5". <br><br> **Minimum-length:** 1 character <br><br> **Max-length:** 20 characters
  /// [enableCSIProxy] Whether to enable CSI proxy. For more details on CSI proxy, see the [CSI proxy GitHub repo](https://github.com/kubernetes-csi/csi-proxy).
  /// [gmsaProfile] The Windows gMSA Profile in the Managed Cluster.
  /// [licenseType] The license type to use for Windows VMs. See [Azure Hybrid User Benefits](https://azure.microsoft.com/pricing/hybrid-benefit/faq/) for more details.
  ManagedClusterWindowsProfileResponse({
    this.adminPassword,
    required this.adminUsername,
    this.enableCSIProxy,
    this.gmsaProfile,
    this.licenseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'adminUsername': adminUsername,
      'enableCSIProxy': ?enableCSIProxy,
      'gmsaProfile': ?pulumi.Input.mapOptionalInputValue<WindowsGmsaProfileResponse, Map<String, dynamic>>(gmsaProfile, (value) => value.toMap()),
      'licenseType': ?licenseType,
    };
  }

  factory ManagedClusterWindowsProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterWindowsProfileResponse(
      adminPassword: map['adminPassword'] == null ? null : (map['adminPassword']! as String).input(),
      adminUsername: (map['adminUsername'] as String).input(),
      enableCSIProxy: map['enableCSIProxy'] == null ? null : (map['enableCSIProxy']! as bool).input(),
      gmsaProfile: map['gmsaProfile'] == null ? null : (WindowsGmsaProfileResponse.fromMap((map['gmsaProfile']! as Map).cast<String, dynamic>())).input(),
      licenseType: map['licenseType'] == null ? null : (map['licenseType']! as String).input(),
    );
  }
}

