// ignore_for_file: unused_element, unnecessary_cast

class PluginInstanceAuthConfigUserPasswordConfigPassword {
  /// The resource name of the secret version in the format,
  /// format as: `projects/*/secrets/*/versions/*`.
  final String secretVersion;

  PluginInstanceAuthConfigUserPasswordConfigPassword({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory PluginInstanceAuthConfigUserPasswordConfigPassword.fromMap(
      Map<String, dynamic> map) {
    return PluginInstanceAuthConfigUserPasswordConfigPassword(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
