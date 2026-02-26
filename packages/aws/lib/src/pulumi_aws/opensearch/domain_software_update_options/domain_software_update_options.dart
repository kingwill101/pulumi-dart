// ignore_for_file: unused_element, unnecessary_cast

class DomainSoftwareUpdateOptions {
  /// Whether automatic service software updates are enabled for the domain. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? autoSoftwareUpdateEnabled;

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
