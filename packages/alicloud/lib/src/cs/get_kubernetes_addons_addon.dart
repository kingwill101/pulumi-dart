// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesAddonsAddon {
  /// The current custom configuration of the addon. **Note:** Available in v1.166.0+
  final String currentConfig;
  /// The current version of addon, if this field is an empty string, it means that the addon is not installed.
  final String currentVersion;
  /// The name of addon.
  final String name;
  /// The next version of this addon can be upgraded to.
  final String nextVersion;
  /// Whether the addon is a system addon.
  final bool required;

  /// Creates a new [GetKubernetesAddonsAddon].
  /// [currentConfig] The current custom configuration of the addon. **Note:** Available in v1.166.0+
  /// [currentVersion] The current version of addon, if this field is an empty string, it means that the addon is not installed.
  /// [name] The name of addon.
  /// [nextVersion] The next version of this addon can be upgraded to.
  /// [required] Whether the addon is a system addon.
  GetKubernetesAddonsAddon({
    required this.currentConfig,
    required this.currentVersion,
    required this.name,
    required this.nextVersion,
    required this.required,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentConfig': currentConfig,
      'currentVersion': currentVersion,
      'name': name,
      'nextVersion': nextVersion,
      'required': required,
    };
  }

  factory GetKubernetesAddonsAddon.fromMap(Map<String, dynamic> map) {
    return GetKubernetesAddonsAddon(
      currentConfig: map['currentConfig'] as String,
      currentVersion: map['currentVersion'] as String,
      name: map['name'] as String,
      nextVersion: map['nextVersion'] as String,
      required: map['required'] as bool,
    );
  }
}

