// ignore_for_file: unused_element, unnecessary_cast

class GetDomainSoftwareUpdateOption {
  /// Enabled or disabled.
  final bool autoSoftwareUpdateEnabled;

  GetDomainSoftwareUpdateOption({
    required this.autoSoftwareUpdateEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoSoftwareUpdateEnabled'] = autoSoftwareUpdateEnabled;
    return map;
  }

  factory GetDomainSoftwareUpdateOption.fromMap(Map<String, dynamic> map) {
    return GetDomainSoftwareUpdateOption(
      autoSoftwareUpdateEnabled: map['autoSoftwareUpdateEnabled'] as bool,
    );
  }
}
