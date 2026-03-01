// ignore_for_file: unused_element, unnecessary_cast


/// Managed application management policy.
class ApplicationManagementPolicy {
  /// The managed application management mode.
  final String? mode;

  /// Creates a new [ApplicationManagementPolicy].
  /// [mode] The managed application management mode.
  ApplicationManagementPolicy({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
    };
  }

  factory ApplicationManagementPolicy.fromMap(Map<String, dynamic> map) {
    return ApplicationManagementPolicy(
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}

