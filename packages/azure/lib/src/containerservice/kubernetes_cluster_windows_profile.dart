// ignore_for_file: unused_element, unnecessary_cast

import 'kubernetes_cluster_windows_profile_gmsa.dart';

class KubernetesClusterWindowsProfile {
  /// The Admin Password for Windows VMs. Length must be between 14 and 123 characters.
  final String adminPassword;
  /// The Admin Username for Windows VMs. Changing this forces a new resource to be created.
  final String adminUsername;
  /// A `gmsa` block as defined below.
  final KubernetesClusterWindowsProfileGmsa? gmsa;
  /// Specifies the type of on-premise license which should be used for Node Pool Windows Virtual Machine. At this time the only possible value is `Windows_Server`.
  final String? license;

  /// Creates a new [KubernetesClusterWindowsProfile].
  /// [adminPassword] The Admin Password for Windows VMs. Length must be between 14 and 123 characters.
  /// [adminUsername] The Admin Username for Windows VMs. Changing this forces a new resource to be created.
  /// [gmsa] A `gmsa` block as defined below.
  /// [license] Specifies the type of on-premise license which should be used for Node Pool Windows Virtual Machine. At this time the only possible value is `Windows_Server`.
  KubernetesClusterWindowsProfile({
    required this.adminPassword,
    required this.adminUsername,
    this.gmsa,
    this.license,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': adminPassword,
      'adminUsername': adminUsername,
      'gmsa': ?gmsa == null ? null : gmsa!.toMap(),
      'license': ?license,
    };
  }

  factory KubernetesClusterWindowsProfile.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterWindowsProfile(
      adminPassword: map['adminPassword'] as String,
      adminUsername: map['adminUsername'] as String,
      gmsa: map['gmsa'] == null ? null : KubernetesClusterWindowsProfileGmsa.fromMap((map['gmsa'] as Map).cast<String, dynamic>()),
      license: map['license'] == null ? null : map['license'] as String,
    );
  }
}

