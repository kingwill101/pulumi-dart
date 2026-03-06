// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_reference.dart';

/// Package store for the SSIS integration runtime.
class PackageStore {
  /// The name of the package store
  final pulumi.Input<String> name;
  /// The package store linked service reference.
  final pulumi.Input<EntityReference> packageStoreLinkedService;

  /// Creates a new [PackageStore].
  /// [name] The name of the package store
  /// [packageStoreLinkedService] The package store linked service reference.
  const PackageStore({
    required this.name,
    required this.packageStoreLinkedService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'packageStoreLinkedService': pulumi.Input.mapInputValue<EntityReference, Map<String, dynamic>>(packageStoreLinkedService, (value) => value.toMap()),
    };
  }

  factory PackageStore.fromMap(Map<String, dynamic> map) {
    return PackageStore(
      name: pulumi.Input.fromValue(map['name'] as String),
      packageStoreLinkedService: pulumi.Input.fromValue(EntityReference.fromMap((map['packageStoreLinkedService']! as Map).cast<String, dynamic>())),
    );
  }
}

