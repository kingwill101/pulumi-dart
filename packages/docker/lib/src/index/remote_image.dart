import 'package:pulumi/pulumi.dart' as pulumi;
import 'remote_image_args.dart';
import 'remote_image_build.dart';

class RemoteImage extends pulumi.CustomResource {
  late final pulumi.Output<RemoteImageBuild?> build;
  /// If true, then the image is removed forcibly when the resource is destroyed.
  late final pulumi.Output<bool?> forceRemove;
  /// The ID of the image (as seen when executing `docker inspect` on the image). Can be used to reference the image via its ID in other resources.
  late final pulumi.Output<String> imageId;
  /// If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker local storage on destroy operation.
  late final pulumi.Output<bool?> keepLocally;
  /// The name of the Docker image, including any tags or SHA256 repo digests.
  late final pulumi.Output<String> name;
  /// The platform to use when pulling the image. Defaults to the platform of the current machine.
  late final pulumi.Output<String?> platform;
  /// List of values which cause an image pull when changed. This is used to store the image digest from the registry when using the docker*registry*image.
  late final pulumi.Output<List<String>?> pullTriggers;
  /// The image sha256 digest in the form of `repo[:tag]@sha256:<hash>`. This may not be populated when building an image, because it is read from the local Docker client and so may be available only when the image was either pulled from the repo or pushed to the repo (perhaps using `docker.RegistryImage`) in a previous run.
  late final pulumi.Output<String> repoDigest;
  /// A map of arbitrary strings that, when changed, will force the `docker.RemoteImage` resource to be replaced. This can be used to rebuild an image when contents of source code folders change
  late final pulumi.Output<Map<String, String>?> triggers;

  /// Creates a new [RemoteImage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RemoteImage]. {@macro pulumi_index_remote_image_remote_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RemoteImage(
    String name, {
    RemoteImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/remoteImage:RemoteImage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.build = registerOutput<RemoteImageBuild?>('build');
    this.forceRemove = registerOutput<bool?>('forceRemove');
    this.imageId = registerOutput<String>('imageId');
    this.keepLocally = registerOutput<bool?>('keepLocally');
    this.name = registerOutput<String>('name');
    this.platform = registerOutput<String?>('platform');
    this.pullTriggers = registerOutput<List<String>?>('pullTriggers');
    this.repoDigest = registerOutput<String>('repoDigest');
    this.triggers = registerOutput<Map<String, String>?>('triggers');
  }
}
