import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_api_image_cache_args.dart';
import 'open_api_image_cache_image_registry_credential.dart';

class OpenApiImageCache extends pulumi.CustomResource {
  late final pulumi.Output<String> containerGroupId;
  late final pulumi.Output<String?> eipInstanceId;
  late final pulumi.Output<String> imageCacheName;
  late final pulumi.Output<int?> imageCacheSize;
  late final pulumi.Output<List<OpenApiImageCacheImageRegistryCredential>?> imageRegistryCredentials;
  late final pulumi.Output<List<String>> images;
  late final pulumi.Output<String?> resourceGroupId;
  late final pulumi.Output<int?> retentionDays;
  late final pulumi.Output<String> securityGroupId;
  late final pulumi.Output<String> status;
  late final pulumi.Output<String> vswitchId;
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [OpenApiImageCache].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OpenApiImageCache]. {@macro pulumi_eci_open_api_image_cache_open_api_image_cache_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OpenApiImageCache(
    String name, {
    OpenApiImageCacheArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eci/openApiImageCache:OpenApiImageCache',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.containerGroupId = registerOutput<String>('containerGroupId');
    this.eipInstanceId = registerOutput<String?>('eipInstanceId');
    this.imageCacheName = registerOutput<String>('imageCacheName');
    this.imageCacheSize = registerOutput<int?>('imageCacheSize');
    this.imageRegistryCredentials = registerOutput<List<OpenApiImageCacheImageRegistryCredential>?>('imageRegistryCredentials');
    this.images = registerOutput<List<String>>('images');
    this.resourceGroupId = registerOutput<String?>('resourceGroupId');
    this.retentionDays = registerOutput<int?>('retentionDays');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.status = registerOutput<String>('status');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String?>('zoneId');
  }
}
