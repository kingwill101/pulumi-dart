// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for ProductSet.
class ProductSetArgs {
  /// The user-provided name for this ProductSet. Must not be empty. Must be at most 4096 characters long.
  final Input<String>? displayName;
  final Input<String>? location;

  /// The resource name of the ProductSet. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`. This field is ignored when creating a ProductSet.
  final Input<String>? name;

  /// A user-supplied resource id for this ProductSet. If set, the server will attempt to use this value as the resource id. If it is already in use, an error is returned with code ALREADY_EXISTS. Must be at most 128 characters long. It cannot contain the character `/`.
  final Input<String>? productSetId;
  final Input<String>? project;

  ProductSetArgs({
    this.displayName,
    this.location,
    this.name,
    this.productSetId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final productSetIdValue = productSetId;
    if (productSetIdValue != null) {
      map['productSetId'] = productSetIdValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ProductSetArgs.fromMap(Map<String, dynamic> map) {
    return ProductSetArgs(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      productSetId: Input.asOptionalInput<String>(map['productSetId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
