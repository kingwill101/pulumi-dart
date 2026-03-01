// ignore_for_file: unused_element, unnecessary_cast

import 'entity_reference.dart';

/// Package store for the SSIS integration runtime.
class PackageStore {
  /// The name of the package store
  final String name;
  /// The package store linked service reference.
  final EntityReference packageStoreLinkedService;

  /// Creates a new [PackageStore].
  /// [name] The name of the package store
  /// [packageStoreLinkedService] The package store linked service reference.
  PackageStore({
    required this.name,
    required this.packageStoreLinkedService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'packageStoreLinkedService': packageStoreLinkedService.toMap(),
    };
  }

  factory PackageStore.fromMap(Map<String, dynamic> map) {
    return PackageStore(
      name: map['name'] as String,
      packageStoreLinkedService: EntityReference.fromMap((map['packageStoreLinkedService'] as Map).cast<String, dynamic>()),
    );
  }
}

