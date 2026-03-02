// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudstoragegateway_storage_bundle_storage_bundle_args_doc}
/// The set of arguments for StorageBundle.
/// {@endtemplate}
/// {@macro pulumi_cloudstoragegateway_storage_bundle_storage_bundle_args_doc}
class StorageBundleArgs {
  /// The description of storage bundle.
  final pulumi.Input<String>? description;
  /// The name of storage bundle.
  final pulumi.Input<String> storageBundleName;

  /// Creates a new [StorageBundleArgs].
  /// [description] The description of storage bundle.
  /// [storageBundleName] The name of storage bundle.
  StorageBundleArgs({
    this.description,
    required this.storageBundleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'storageBundleName': storageBundleName,
    };
  }

  factory StorageBundleArgs.fromMap(Map<String, dynamic> map) {
    return StorageBundleArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      storageBundleName: (map['storageBundleName'] as String).input(),
    );
  }
}

