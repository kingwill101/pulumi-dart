import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'custom_resource_definition_apiextensions_k8s_io_v1.dart';
import 'custom_resource_definition_list_args.dart';

/// CustomResourceDefinitionList is a list of CustomResourceDefinition objects.
class CustomResourceDefinitionListApiextensionsK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items list individual CustomResourceDefinition objects
  late final pulumi.Output<List<CustomResourceDefinitionApiextensionsK8sIoV1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [CustomResourceDefinitionListApiextensionsK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomResourceDefinitionListApiextensionsK8sIoV1]. {@macro pulumi_apiextensions_k8s_io_v1_custom_resource_definition_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomResourceDefinitionListApiextensionsK8sIoV1(
    String name, {
    CustomResourceDefinitionListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:apiextensions.k8s.io/v1:CustomResourceDefinitionList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<CustomResourceDefinitionApiextensionsK8sIoV1>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
