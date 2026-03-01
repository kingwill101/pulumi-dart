// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StorageBundle resources.
class StorageBundleState {
  /// The description of storage bundle.
  final pulumi.Input<String>? description;
  /// The name of storage bundle.
  final pulumi.Input<String>? storageBundleName;

  /// Creates a new [StorageBundleState].
  /// [description] The description of storage bundle.
  /// [storageBundleName] The name of storage bundle.
  StorageBundleState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? storageBundleName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      storageBundleName = pulumi.Input.asOptionalInput<String>(storageBundleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'storageBundleName': ?storageBundleName,
    };
  }

  factory StorageBundleState.fromMap(Map<String, dynamic> map) {
    return StorageBundleState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      storageBundleName: map['storageBundleName'] == null ? null : pulumi.Output.create<String>(map['storageBundleName'] as String),
    );
  }
}

