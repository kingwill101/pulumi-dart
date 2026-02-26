// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateEnclaveOptions {
  /// If set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, Nitro Enclaves will be enabled on the instance.
  ///
  /// For more information, see the documentation on [Nitro Enclaves](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html).
  final bool? enabled;

  LaunchTemplateEnclaveOptions({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory LaunchTemplateEnclaveOptions.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateEnclaveOptions(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
