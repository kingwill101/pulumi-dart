import 'package:pulumi/pulumi.dart' as pulumi;
import 'copy_image_args.dart';

class CopyImage extends pulumi.CustomResource {
  late final pulumi.Output<bool?> deleteAutoSnapshot;
  late final pulumi.Output<String?> description;
  late final pulumi.Output<bool?> encrypted;
  late final pulumi.Output<bool?> force;
  late final pulumi.Output<String> imageName;
  late final pulumi.Output<String?> kmsKeyId;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> sourceImageId;
  late final pulumi.Output<String> sourceRegionId;
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [CopyImage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CopyImage]. {@macro pulumi_ecs_copy_image_copy_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CopyImage(
    String name, {
    CopyImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/copyImage:CopyImage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deleteAutoSnapshot = registerOutput<bool?>('deleteAutoSnapshot');
    this.description = registerOutput<String?>('description');
    this.encrypted = registerOutput<bool?>('encrypted');
    this.force = registerOutput<bool?>('force');
    this.imageName = registerOutput<String>('imageName');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    this.sourceImageId = registerOutput<String>('sourceImageId');
    this.sourceRegionId = registerOutput<String>('sourceRegionId');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
