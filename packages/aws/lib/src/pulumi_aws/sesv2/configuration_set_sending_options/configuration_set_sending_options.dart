// ignore_for_file: unused_element, unnecessary_cast

class ConfigurationSetSendingOptions {
  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, email sending is enabled for the configuration set. If <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, email sending is disabled for the configuration set.
  final bool? sendingEnabled;

  ConfigurationSetSendingOptions({
    this.sendingEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sendingEnabledValue = sendingEnabled;
    if (sendingEnabledValue != null) {
      map['sendingEnabled'] = sendingEnabledValue;
    }
    return map;
  }

  factory ConfigurationSetSendingOptions.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetSendingOptions(
      sendingEnabled:
          map['sendingEnabled'] == null ? null : map['sendingEnabled'] as bool,
    );
  }
}
