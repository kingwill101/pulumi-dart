import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'persistent_volume_core_v1.dart';
import 'persistent_volume_list_args.dart';

/// PersistentVolumeList is a list of PersistentVolume items.
class PersistentVolumeListCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is a list of persistent volumes. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes
  late final pulumi.Output<List<PersistentVolumeCoreV1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [PersistentVolumeListCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PersistentVolumeListCoreV1]. {@macro pulumi_core_v1_persistent_volume_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PersistentVolumeListCoreV1(
    String name, {
    PersistentVolumeListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:core/v1:PersistentVolumeList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<PersistentVolumeCoreV1>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
