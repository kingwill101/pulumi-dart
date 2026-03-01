import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'deployment_list_apps_v1beta1_args.dart';
import 'deployment_resource.dart';

/// DeploymentList is a list of Deployments.
class DeploymentListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Items is the list of Deployments.
  late final pulumi.Output<List<DeploymentResource>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata.
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [DeploymentListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentListResource]. {@macro pulumi_apps_v1beta1_deployment_list_apps_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentListResource(
    String name, {
    DeploymentListAppsV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:apps/v1beta1:DeploymentList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<DeploymentResource>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
