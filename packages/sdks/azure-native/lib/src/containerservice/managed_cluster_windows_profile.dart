// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_gmsa_profile.dart';

/// Profile for Windows VMs in the managed cluster.
class ManagedClusterWindowsProfile {
  /// Specifies the password of the administrator account. &lt;br&gt;&lt;br&gt; **Minimum-length:** 8 characters &lt;br&gt;&lt;br&gt; **Max-length:** 123 characters &lt;br&gt;&lt;br&gt; **Complexity requirements:** 3 out of 4 conditions below need to be fulfilled &lt;br&gt; Has lower characters &lt;br&gt;Has upper characters &lt;br&gt; Has a digit &lt;br&gt; Has a special character (Regex match [\W_]) &lt;br&gt;&lt;br&gt; **Disallowed values:** "abc@123", "P@$$w0rd", "P@ssw0rd", "P@ssword123", "Pa$$word", "pass@word1", "Password!", "Password1", "Password22", "iloveyou!"
  final pulumi.Input<String>? adminPassword;
  /// Specifies the name of the administrator account. &lt;br&gt;&lt;br&gt; **Restriction:** Cannot end in "." &lt;br&gt;&lt;br&gt; **Disallowed values:** "administrator", "admin", "user", "user1", "test", "user2", "test1", "user3", "admin1", "1", "123", "a", "actuser", "adm", "admin2", "aspnet", "backup", "console", "david", "guest", "john", "owner", "root", "server", "sql", "support", "support_388945a0", "sys", "test2", "test3", "user4", "user5". &lt;br&gt;&lt;br&gt; **Minimum-length:** 1 character &lt;br&gt;&lt;br&gt; **Max-length:** 20 characters
  final pulumi.Input<String> adminUsername;
  /// Whether to enable CSI proxy. For more details on CSI proxy, see the [CSI proxy GitHub repo](https://github.com/kubernetes-csi/csi-proxy).
  final pulumi.Input<bool>? enableCSIProxy;
  /// The Windows gMSA Profile in the Managed Cluster.
  final pulumi.Input<WindowsGmsaProfile>? gmsaProfile;
  /// The license type to use for Windows VMs. See [Azure Hybrid User Benefits](https://azure.microsoft.com/pricing/hybrid-benefit/faq/) for more details.
  final pulumi.Input<String>? licenseType;

  /// Creates a new [ManagedClusterWindowsProfile].
  /// [adminPassword] Specifies the password of the administrator account. &lt;br&gt;&lt;br&gt; **Minimum-length:** 8 characters &lt;br&gt;&lt;br&gt; **Max-length:** 123 characters &lt;br&gt;&lt;br&gt; **Complexity requirements:** 3 out of 4 conditions below need to be fulfilled &lt;br&gt; Has lower characters &lt;br&gt;Has upper characters &lt;br&gt; Has a digit &lt;br&gt; Has a special character (Regex match [\W_]) &lt;br&gt;&lt;br&gt; **Disallowed values:** "abc@123", "P@$$w0rd", "P@ssw0rd", "P@ssword123", "Pa$$word", "pass@word1", "Password!", "Password1", "Password22", "iloveyou!"
  /// [adminUsername] Specifies the name of the administrator account. &lt;br&gt;&lt;br&gt; **Restriction:** Cannot end in "." &lt;br&gt;&lt;br&gt; **Disallowed values:** "administrator", "admin", "user", "user1", "test", "user2", "test1", "user3", "admin1", "1", "123", "a", "actuser", "adm", "admin2", "aspnet", "backup", "console", "david", "guest", "john", "owner", "root", "server", "sql", "support", "support_388945a0", "sys", "test2", "test3", "user4", "user5". &lt;br&gt;&lt;br&gt; **Minimum-length:** 1 character &lt;br&gt;&lt;br&gt; **Max-length:** 20 characters
  /// [enableCSIProxy] Whether to enable CSI proxy. For more details on CSI proxy, see the [CSI proxy GitHub repo](https://github.com/kubernetes-csi/csi-proxy).
  /// [gmsaProfile] The Windows gMSA Profile in the Managed Cluster.
  /// [licenseType] The license type to use for Windows VMs. See [Azure Hybrid User Benefits](https://azure.microsoft.com/pricing/hybrid-benefit/faq/) for more details.
  const ManagedClusterWindowsProfile({
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
      'gmsaProfile': ?pulumi.Input.mapOptionalInputValue<WindowsGmsaProfile, Map<String, dynamic>>(gmsaProfile, (value) => value.toMap()),
      'licenseType': ?licenseType,
    };
  }

  factory ManagedClusterWindowsProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterWindowsProfile(
      adminPassword: (() { final guardedValue = map['adminPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adminUsername: pulumi.Input.fromValue(map['adminUsername'] as String),
      enableCSIProxy: (() { final guardedValue = map['enableCSIProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gmsaProfile: (() { final guardedValue = map['gmsaProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsGmsaProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
