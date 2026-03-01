// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesClusterWindowsProfile {
  /// The username associated with the administrator account of the Windows VMs.
  final String adminUsername;

  /// Creates a new [GetKubernetesClusterWindowsProfile].
  /// [adminUsername] The username associated with the administrator account of the Windows VMs.
  GetKubernetesClusterWindowsProfile({
    required this.adminUsername,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsername': adminUsername,
    };
  }

  factory GetKubernetesClusterWindowsProfile.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterWindowsProfile(
      adminUsername: map['adminUsername'] as String,
    );
  }
}

