import 'package:pulumi/pulumi.dart';
import 'registry_args.dart';

/// > **Warning**: Container Registry is deprecated. Effective March 18, 2025, Container Registry is shut down and writing images to Container Registry is unavailable. Resource will be removed in future major release.
///
/// Ensures that the Google Cloud Storage bucket that backs Google Container Registry exists. Creating this resource will create the backing bucket if it does not exist, or do nothing if the bucket already exists. Destroying this resource does *NOT* destroy the backing bucket. For more information see [the official documentation](https://cloud.google.com/container-registry/docs/overview)
///
/// This resource can be used to ensure that the GCS bucket exists prior to assigning permissions. For more information see the [access control page](https://cloud.google.com/container-registry/docs/access-control) for GCR.
///
///
/// ## Example Usage
///
///
///
/// The `id` field of the `gcp.container.Registry` is the identifier of the storage bucket that backs GCR and can be used to assign permissions to the bucket.
///
///
///
/// ## Import
///
/// This resource does not support import.
class Registry extends CustomResource {
  /// The URI of the created resource.
  late final Output<String> bucketSelfLink;

  /// The location of the registry. One of `ASIA`, `EU`, `US` or not specified. See [the official documentation](https://cloud.google.com/container-registry/docs/pushing-and-pulling#pushing_an_image_to_a_registry) for more information on registry locations.
  late final Output<String?> location;

  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  late final Output<String> project;

  Registry(
    String name, {
    RegistryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:container/registry:Registry',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucketSelfLink = registerOutput<String>('bucketSelfLink');
    this.location = registerOutput<String?>('location');
    this.project = registerOutput<String>('project');
  }
}
