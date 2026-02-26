import 'package:pulumi/pulumi.dart';
import 'mesh_args2.dart';

/// Creates a new Mesh in a given project and location.
class Mesh2 extends CustomResource {
  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  late final Output<String> description;

  /// Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to listen on the specified port of localhost (127.0.0.1) address. The SIDECAR proxy will expect all traffic to be redirected to this port regardless of its actual ip:port destination. If unset, a port '15001' is used as the interception port. This is applicable only for sidecar proxy deployments.
  late final Output<int> interceptionPort;

  /// Optional. Set of label tags associated with the Mesh resource.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Required. Short name of the Mesh resource to be created.
  late final Output<String> meshId;

  /// Name of the Mesh resource. It matches pattern `projects/*/locations/global/meshes/`.
  late final Output<String> name;
  late final Output<String> project;

  /// Server-defined URL of this resource
  late final Output<String> selfLink;

  /// The timestamp when the resource was updated.
  late final Output<String> updateTime;

  Mesh2(
    String name, {
    MeshArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networkservices/v1beta1:Mesh',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.interceptionPort = registerOutput<int>('interceptionPort');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.meshId = registerOutput<String>('meshId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
