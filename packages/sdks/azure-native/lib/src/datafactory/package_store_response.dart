// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_reference_response.dart';

/// Package store for the SSIS integration runtime.
class PackageStoreResponse {
  /// The name of the package store
  final pulumi.Input<String> name;

  /// The package store linked service reference.
  final pulumi.Input<EntityReferenceResponse> packageStoreLinkedService;

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
      'packageStoreLinkedService':
          pulumi.Input.mapInputValue<
            EntityReferenceResponse,
            Map<String, dynamic>
          >(packageStoreLinkedService, (value) => value.toMap()),
    };
  }

  factory PackageStoreResponse.fromMap(Map<String, dynamic> map) {
    return PackageStoreResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      packageStoreLinkedService: pulumi.Input.fromValue(
        EntityReferenceResponse.fromMap(
          (map['packageStoreLinkedService']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
