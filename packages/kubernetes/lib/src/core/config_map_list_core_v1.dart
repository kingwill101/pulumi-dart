import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'config_map_core_v1.dart';
import 'config_map_list_args.dart';

/// ConfigMapList is a resource containing a list of ConfigMap objects.
class ConfigMapListCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Items is the list of ConfigMaps.
  late final pulumi.Output<List<ConfigMapCoreV1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [ConfigMapListCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigMapListCoreV1]. {@macro pulumi_core_v1_config_map_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigMapListCoreV1(
    String name, {
    ConfigMapListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:core/v1:ConfigMapList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<ConfigMapCoreV1>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
