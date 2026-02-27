import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_args.dart';

/// Builds a docker image and pushes to the ECR repository
class Image extends pulumi.ComponentResource {
  /// Unique identifier of the pushed image
  late final pulumi.Output<String> imageUri;

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
