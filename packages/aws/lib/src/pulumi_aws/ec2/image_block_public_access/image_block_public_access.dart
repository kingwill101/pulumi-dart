import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_block_public_access_args.dart';

/// Provides a regional public access block for AMIs. This prevents AMIs from being made publicly accessible.
/// If you already have public AMIs, they will remain publicly available.
///
/// > **NOTE:** Deleting this resource does not change the block public access value, the resource in simply removed from state instead.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// You cannot import this resource.
class ImageBlockPublicAccess extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The state of block public access for AMIs at the account level in the configured AWS Region. Valid values: `unblocked` and `block-new-sharing`.
  late final pulumi.Output<String> state;

  ImageBlockPublicAccess(
    String name, {
    ImageBlockPublicAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/imageBlockPublicAccess:ImageBlockPublicAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
  }
}
