import 'package:pulumi/pulumi.dart';
import 'key_value_response.dart';
import 'product_args4.dart';

/// Creates and returns a new product resource. Possible errors: * Returns INVALID_ARGUMENT if display_name is missing or longer than 4096 characters. * Returns INVALID_ARGUMENT if description is longer than 4096 characters. * Returns INVALID_ARGUMENT if product_category is missing or invalid.
class Product7 extends CustomResource {
  /// User-provided metadata to be stored with this product. Must be at most 4096 characters long.
  late final Output<String> description;

  /// The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long.
  late final Output<String> displayName;
  late final Output<String> location;

  /// The resource name of the product. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`. This field is ignored when creating a product.
  late final Output<String> name;

  /// Immutable. The category for the product identified by the reference image. This should be one of "homegoods-v2", "apparel-v2", "toys-v2", "packagedgoods-v1" or "general-v1". The legacy categories "homegoods", "apparel", and "toys" are still supported, but these should not be used for new products.
  late final Output<String> productCategory;

  /// A user-supplied resource id for this Product. If set, the server will attempt to use this value as the resource id. If it is already in use, an error is returned with code ALREADY_EXISTS. Must be at most 128 characters long. It cannot contain the character `/`.
  late final Output<String?> productId;

  /// Key-value pairs that can be attached to a product. At query time, constraints can be specified based on the product_labels. Note that integer values can be provided as strings, e.g. "1199". Only strings with integer values can match a range-based restriction which is to be supported soon. Multiple values can be assigned to the same key. One product may have up to 500 product_labels. Notice that the total number of distinct product_labels over all products in one ProductSet cannot exceed 1M, otherwise the product search pipeline will refuse to work for that ProductSet.
  late final Output<List<KeyValueResponse>> productLabels;
  late final Output<String> project;

  Product7(
    String name, {
    ProductArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:vision/v1:Product',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.productCategory = Output.createUnknown<String>();
    this.productId = Output.createUnknown<String?>();
    this.productLabels = Output.createUnknown<List<KeyValueResponse>>();
    this.project = Output.createUnknown<String>();
  }
}
