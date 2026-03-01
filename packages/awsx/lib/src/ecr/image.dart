import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_args.dart';

/// Builds a docker image and pushes to the ECR repository
class Image extends pulumi.ComponentResource {
  /// Unique identifier of the pushed image
  late final pulumi.Output<String> imageUri;

  /// Creates a new [Image].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Image]. {@macro pulumi_ecr_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Image(
    String name, {
    ImageArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
         'awsx:ecr:Image',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.ComponentResourceOptions(),
       ) {
    this.imageUri = registerOutput<String>('imageUri');
  }
}
