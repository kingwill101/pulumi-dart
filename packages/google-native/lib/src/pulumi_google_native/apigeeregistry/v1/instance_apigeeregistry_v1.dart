import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_response.dart';
import 'config_response.dart';
import 'instance_apigeeregistry_v1_args.dart';

/// Provisions instance resources for the Registry.
/// Auto-naming is currently not supported for this resource.
class InstanceApigeeregistryV1 extends pulumi.CustomResource {
  /// Build info of the Instance if it's in `ACTIVE` state.
  late final pulumi.Output<BuildResponse> build;

  /// Config of the Instance.
  late final pulumi.Output<ConfigResponse> config;

  /// Creation timestamp.
  late final pulumi.Output<String> createTime;

  /// Required. Identifier to assign to the Instance. Must be unique within scope of the parent resource.
  late final pulumi.Output<String> instanceId;
  late final pulumi.Output<String> location;

  /// Format: `projects/*/locations/*/instance`. Currently only `locations/global` is supported.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The current state of the Instance.
  late final pulumi.Output<String> state;

  /// Extra information of Instance.State if the state is `FAILED`.
  late final pulumi.Output<String> stateMessage;

  /// Last update timestamp.
  late final pulumi.Output<String> updateTime;

  InstanceApigeeregistryV1(
    String name, {
    InstanceApigeeregistryV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigeeregistry/v1:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.build = registerOutput<BuildResponse>('build');
    this.config = registerOutput<ConfigResponse>('config');
    this.createTime = registerOutput<String>('createTime');
    this.instanceId = registerOutput<String>('instanceId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.stateMessage = registerOutput<String>('stateMessage');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
