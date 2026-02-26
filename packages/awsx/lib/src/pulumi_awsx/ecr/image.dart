import 'package:pulumi/pulumi.dart';
import 'image_args.dart';

/// Builds a docker image and pushes to the ECR repository
class Image extends ComponentResource {
  /// Unique identifier of the pushed image
  late final Output<String> imageUri;

  Image(
    String name, {
    ImageArgs? args,
    ComponentResourceOptions? options,
  }) : super(
          'awsx:ecr:Image',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? ComponentResourceOptions(),
        ) {
    this.imageUri = Output.createUnknown<String>();
  }
}
