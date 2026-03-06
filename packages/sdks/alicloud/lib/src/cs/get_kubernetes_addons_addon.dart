// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesAddonsAddon {
  /// The current custom configuration of the addon. **Note:** Available in v1.166.0+
  final pulumi.Input<String> currentConfig;
  /// The current version of addon, if this field is an empty string, it means that the addon is not installed.
  final pulumi.Input<String> currentVersion;
  /// The name of addon.
  final pulumi.Input<String> name;
  /// The next version of this addon can be upgraded to.
  final pulumi.Input<String> nextVersion;
  /// Whether the addon is a system addon.
  final pulumi.Input<bool> required;

  /// Creates a new [GetKubernetesAddonsAddon].
  /// [currentConfig] The current custom configuration of the addon. **Note:** Available in v1.166.0+
  /// [currentVersion] The current version of addon, if this field is an empty string, it means that the addon is not installed.
  /// [name] The name of addon.
  /// [nextVersion] The next version of this addon can be upgraded to.
  /// [required] Whether the addon is a system addon.
  const GetKubernetesAddonsAddon({
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
      currentConfig: pulumi.Input.fromValue(map['currentConfig'] as String),
      currentVersion: pulumi.Input.fromValue(map['currentVersion'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      nextVersion: pulumi.Input.fromValue(map['nextVersion'] as String),
      required: pulumi.Input.fromValue(map['required'] as bool),
    );
  }
}

