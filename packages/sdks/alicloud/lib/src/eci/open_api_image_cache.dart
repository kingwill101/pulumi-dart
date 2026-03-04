import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_api_image_cache_args.dart';
import 'open_api_image_cache_state.dart';

class OpenApiImageCache extends pulumi.CustomResource {
  late final pulumi.Output<String> containerGroupId;
  late final pulumi.Output<String?> eipInstanceId;
  late final pulumi.Output<String> imageCacheName;
  late final pulumi.Output<int?> imageCacheSize;
  late final pulumi.Output<List<Map<String, dynamic>>?>
  imageRegistryCredentials;
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
    containerGroupId = registerOutput<String>('containerGroupId');
    eipInstanceId = registerOutput<String?>('eipInstanceId');
    imageCacheName = registerOutput<String>('imageCacheName');
    imageCacheSize = registerOutput<int?>('imageCacheSize');
    imageRegistryCredentials = registerOutput<List<Map<String, dynamic>>?>(
      'imageRegistryCredentials',
    );
    images = registerOutput<List<String>>('images');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    retentionDays = registerOutput<int?>('retentionDays');
    securityGroupId = registerOutput<String>('securityGroupId');
    status = registerOutput<String>('status');
    vswitchId = registerOutput<String>('vswitchId');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [OpenApiImageCache] resource's state with the given [name] and [id].
  static OpenApiImageCache get(
    String name,
    pulumi.Input<String> id, {
    OpenApiImageCacheState? state,
  }) {
    return OpenApiImageCache._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OpenApiImageCache._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eci/openApiImageCache:OpenApiImageCache',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    containerGroupId = registerOutput<String>('containerGroupId');
    eipInstanceId = registerOutput<String?>('eipInstanceId');
    imageCacheName = registerOutput<String>('imageCacheName');
    imageCacheSize = registerOutput<int?>('imageCacheSize');
    imageRegistryCredentials = registerOutput<List<Map<String, dynamic>>?>(
      'imageRegistryCredentials',
    );
    images = registerOutput<List<String>>('images');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    retentionDays = registerOutput<int?>('retentionDays');
    securityGroupId = registerOutput<String>('securityGroupId');
    status = registerOutput<String>('status');
    vswitchId = registerOutput<String>('vswitchId');
    zoneId = registerOutput<String?>('zoneId');
  }
}
