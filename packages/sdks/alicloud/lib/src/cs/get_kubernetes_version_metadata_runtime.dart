// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesVersionMetadataRuntime {
  /// The runtime name.
  final pulumi.Input<String> name;
  /// The runtime version.
  final pulumi.Input<String> version;

  /// Creates a new [GetKubernetesVersionMetadataRuntime].
  /// [name] The runtime name.
  /// [version] The runtime version.
  const GetKubernetesVersionMetadataRuntime({
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'version': version,
    };
  }

  factory GetKubernetesVersionMetadataRuntime.fromMap(Map<String, dynamic> map) {
    return GetKubernetesVersionMetadataRuntime(
      name: pulumi.Input.fromValue(map['name'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

