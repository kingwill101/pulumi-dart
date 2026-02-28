// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vision_v1_product_set_args_doc}
/// The set of arguments for ProductSet.
/// {@endtemplate}
/// {@macro pulumi_vision_v1_product_set_args_doc}
class ProductSetArgs {
  /// The user-provided name for this ProductSet. Must not be empty. Must be at most 4096 characters long.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;
  /// The resource name of the ProductSet. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`. This field is ignored when creating a ProductSet.
  final pulumi.Input<String>? name;
  /// A user-supplied resource id for this ProductSet. If set, the server will attempt to use this value as the resource id. If it is already in use, an error is returned with code ALREADY_EXISTS. Must be at most 128 characters long. It cannot contain the character `/`.
  final pulumi.Input<String>? productSetId;
  final pulumi.Input<String>? project;

  /// Creates a new [ProductSetArgs].
  /// [displayName] The user-provided name for this ProductSet. Must not be empty. Must be at most 4096 characters long.
  /// [location] Optional.
  /// [name] The resource name of the ProductSet. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`. This field is ignored when creating a ProductSet.
  /// [productSetId] A user-supplied resource id for this ProductSet. If set, the server will attempt to use this value as the resource id. If it is already in use, an error is returned with code ALREADY_EXISTS. Must be at most 128 characters long. It cannot contain the character `/`.
  /// [project] Optional.
  ProductSetArgs({
    String? displayName,
    String? location,
    String? name,
    String? productSetId,
    String? project,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      productSetId = pulumi.Input.asOptionalInput<String>(productSetId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'productSetId': ?productSetId,
      'project': ?project,
    };
  }

  factory ProductSetArgs.fromMap(Map<String, dynamic> map) {
    return ProductSetArgs(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      productSetId: map['productSetId'] == null ? null : map['productSetId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

