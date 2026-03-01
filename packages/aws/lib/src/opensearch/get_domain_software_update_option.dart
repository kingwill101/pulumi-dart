// ignore_for_file: unused_element, unnecessary_cast

class GetDomainSoftwareUpdateOption {
  /// Enabled or disabled.
  final bool autoSoftwareUpdateEnabled;

  /// Creates a new [GetDomainSoftwareUpdateOption].
  /// [autoSoftwareUpdateEnabled] Enabled or disabled.
  GetDomainSoftwareUpdateOption({required this.autoSoftwareUpdateEnabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSoftwareUpdateEnabled': autoSoftwareUpdateEnabled,
    };
  }

  factory GetDomainSoftwareUpdateOption.fromMap(Map<String, dynamic> map) {
    return GetDomainSoftwareUpdateOption(
      autoSoftwareUpdateEnabled: map['autoSoftwareUpdateEnabled'] as bool,
    );
  }
}
