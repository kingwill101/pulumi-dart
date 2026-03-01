import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'stateful_set_list_apps_v1beta1_args.dart';
import 'stateful_set_resource.dart';

/// StatefulSetList is a collection of StatefulSets.
class StatefulSetListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  late final pulumi.Output<List<StatefulSetResource>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [StatefulSetListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StatefulSetListResource]. {@macro pulumi_apps_v1beta1_stateful_set_list_apps_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StatefulSetListResource(
    String name, {
    StatefulSetListAppsV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:apps/v1beta1:StatefulSetList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<StatefulSetResource>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
