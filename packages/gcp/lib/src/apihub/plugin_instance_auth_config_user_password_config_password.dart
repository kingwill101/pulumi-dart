// ignore_for_file: unused_element, unnecessary_cast


class PluginInstanceAuthConfigUserPasswordConfigPassword {
  /// The resource name of the secret version in the format,
  /// format as: `projects/*/secrets/*/versions/*`.
  final String secretVersion;

  /// Creates a new [PluginInstanceAuthConfigUserPasswordConfigPassword].
  /// [secretVersion] The resource name of the secret version in the format,
  PluginInstanceAuthConfigUserPasswordConfigPassword({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretVersion': secretVersion,
    };
  }

  factory PluginInstanceAuthConfigUserPasswordConfigPassword.fromMap(Map<String, dynamic> map) {
    return PluginInstanceAuthConfigUserPasswordConfigPassword(
      secretVersion: map['secretVersion'] as String,
    );
  }
}

