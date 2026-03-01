// ignore_for_file: unused_element, unnecessary_cast

import 'entity_reference_response.dart';

/// Package store for the SSIS integration runtime.
class PackageStoreResponse {
  /// The name of the package store
  final String name;
  /// The package store linked service reference.
  final EntityReferenceResponse packageStoreLinkedService;

  /// Creates a new [PackageStoreResponse].
  /// [name] The name of the package store
  /// [packageStoreLinkedService] The package store linked service reference.
  PackageStoreResponse({
    required this.name,
    required this.packageStoreLinkedService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'packageStoreLinkedService': packageStoreLinkedService.toMap(),
    };
  }

  factory PackageStoreResponse.fromMap(Map<String, dynamic> map) {
    return PackageStoreResponse(
      name: map['name'] as String,
      packageStoreLinkedService: EntityReferenceResponse.fromMap((map['packageStoreLinkedService'] as Map).cast<String, dynamic>()),
    );
  }
}

