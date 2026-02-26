import 'package:pulumi/pulumi.dart';
import 'product_set_args.dart';
import 'status_response29.dart';

/// Creates and returns a new ProductSet resource. Possible errors: * Returns INVALID_ARGUMENT if display_name is missing, or is longer than 4096 characters.
class ProductSet extends CustomResource {
  /// The user-provided name for this ProductSet. Must not be empty. Must be at most 4096 characters long.
  late final Output<String> displayName;

  /// If there was an error with indexing the product set, the field is populated. This field is ignored when creating a ProductSet.
  late final Output<StatusResponse29> indexError;

  /// The time at which this ProductSet was last indexed. Query results will reflect all updates before this time. If this ProductSet has never been indexed, this timestamp is the default value "1970-01-01T00:00:00Z". This field is ignored when creating a ProductSet.
  late final Output<String> indexTime;
  late final Output<String> location;

  /// The resource name of the ProductSet. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`. This field is ignored when creating a ProductSet.
  late final Output<String> name;

  /// A user-supplied resource id for this ProductSet. If set, the server will attempt to use this value as the resource id. If it is already in use, an error is returned with code ALREADY_EXISTS. Must be at most 128 characters long. It cannot contain the character `/`.
  late final Output<String?> productSetId;
  late final Output<String> project;

  ProductSet(
    String name, {
    ProductSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:vision/v1:ProductSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.indexError = registerOutput<StatusResponse29>('indexError');
    this.indexTime = registerOutput<String>('indexTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.productSetId = registerOutput<String?>('productSetId');
    this.project = registerOutput<String>('project');
  }
}
