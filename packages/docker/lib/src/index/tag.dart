import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_args.dart';

/// Creates a docker tag. It has the exact same functionality as the `docker tag` command. Deleting the resource will neither delete the source nor target images. The source image must exist on the machine running the docker daemon.
class Tag extends pulumi.CustomResource {
  /// Name of the source image.
  late final pulumi.Output<String> sourceImage;
  /// ImageID of the source image in the format of `sha256:<<ID>>`
  late final pulumi.Output<String> sourceImageId;
  /// List of values which cause the tag to be (re)created. This is useful for triggering a new tag when the source image changes.
  late final pulumi.Output<List<String>?> tagTriggers;
  /// Name of the target image.
  late final pulumi.Output<String> targetImage;

  /// Creates a new [Tag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Tag]. {@macro pulumi_index_tag_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Tag(
    String name, {
    TagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/tag:Tag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.sourceImage = registerOutput<String>('sourceImage');
    this.sourceImageId = registerOutput<String>('sourceImageId');
    this.tagTriggers = registerOutput<List<String>?>('tagTriggers');
    this.targetImage = registerOutput<String>('targetImage');
  }
}
