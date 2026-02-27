import 'package:pulumi/pulumi.dart' hide Config;
import 'bounding_poly_response2.dart';
import 'reference_image_args.dart';

/// Creates and returns a new ReferenceImage resource. The `bounding_poly` field is optional. If `bounding_poly` is not specified, the system will try to detect regions of interest in the image that are compatible with the product_category on the parent product. If it is specified, detection is ALWAYS skipped. The system converts polygons into non-rotated rectangles. Note that the pipeline will resize the image if the image resolution is too large to process (above 50MP). Possible errors: * Returns INVALID_ARGUMENT if the image_uri is missing or longer than 4096 characters. * Returns INVALID_ARGUMENT if the product does not exist. * Returns INVALID_ARGUMENT if bounding_poly is not provided, and nothing compatible with the parent product's product_category is detected. * Returns INVALID_ARGUMENT if bounding_poly contains more than 10 polygons.
class ReferenceImage extends CustomResource {
  /// Optional. Bounding polygons around the areas of interest in the reference image. If this field is empty, the system will try to detect regions of interest. At most 10 bounding polygons will be used. The provided shape is converted into a non-rotated rectangle. Once converted, the small edge of the rectangle must be greater than or equal to 300 pixels. The aspect ratio must be 1:4 or less (i.e. 1:3 is ok; 1:5 is not).
  late final Output<List<BoundingPolyResponse2>> boundingPolys;
  late final Output<String> location;

  /// The resource name of the reference image. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`. This field is ignored when creating a reference image.
  late final Output<String> name;
  late final Output<String> productId;
  late final Output<String> project;

  /// A user-supplied resource id for the ReferenceImage to be added. If set, the server will attempt to use this value as the resource id. If it is already in use, an error is returned with code ALREADY_EXISTS. Must be at most 128 characters long. It cannot contain the character `/`.
  late final Output<String?> referenceImageId;

  /// The Google Cloud Storage URI of the reference image. The URI must start with `gs://`.
  late final Output<String> uri;

  ReferenceImage(
    String name, {
    ReferenceImageArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:vision/v1:ReferenceImage',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.boundingPolys =
        registerOutput<List<BoundingPolyResponse2>>('boundingPolys');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.productId = registerOutput<String>('productId');
    this.project = registerOutput<String>('project');
    this.referenceImageId = registerOutput<String?>('referenceImageId');
    this.uri = registerOutput<String>('uri');
  }
}
