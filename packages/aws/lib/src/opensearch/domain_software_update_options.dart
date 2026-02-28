// ignore_for_file: unused_element, unnecessary_cast

class DomainSoftwareUpdateOptions {
  /// Whether automatic service software updates are enabled for the domain. Defaults to `false`.
  final bool? autoSoftwareUpdateEnabled;

  /// Creates a new [DomainSoftwareUpdateOptions].
  /// [autoSoftwareUpdateEnabled] Whether automatic service software updates are enabled for the domain. Defaults to `false`.
  DomainSoftwareUpdateOptions({
    this.autoSoftwareUpdateEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoSoftwareUpdateEnabledValue = autoSoftwareUpdateEnabled;
    if (autoSoftwareUpdateEnabledValue != null) {
      map['autoSoftwareUpdateEnabled'] = autoSoftwareUpdateEnabledValue;
    }
    return map;
  }

  factory DomainSoftwareUpdateOptions.fromMap(Map<String, dynamic> map) {
    return DomainSoftwareUpdateOptions(
      autoSoftwareUpdateEnabled: map['autoSoftwareUpdateEnabled'] == null
          ? null
          : map['autoSoftwareUpdateEnabled'] as bool,
    );
  }
}
