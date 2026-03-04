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
  StorageBundleState({this.description, this.storageBundleName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'storageBundleName': ?storageBundleName,
    };
  }

  factory StorageBundleState.fromMap(Map<String, dynamic> map) {
    return StorageBundleState(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageBundleName: (() {
        final guardedValue = map['storageBundleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
