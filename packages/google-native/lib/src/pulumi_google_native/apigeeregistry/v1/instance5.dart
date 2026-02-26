import 'package:pulumi/pulumi.dart';
import 'build_response.dart';
import 'config_response.dart';
import 'instance_args5.dart';

/// Provisions instance resources for the Registry.
/// Auto-naming is currently not supported for this resource.
class Instance5 extends CustomResource {
  /// Build info of the Instance if it's in `ACTIVE` state.
  late final Output<BuildResponse> build;

  /// Config of the Instance.
  late final Output<ConfigResponse> config;

  /// Creation timestamp.
  late final Output<String> createTime;

  /// Required. Identifier to assign to the Instance. Must be unique within scope of the parent resource.
  late final Output<String> instanceId;
  late final Output<String> location;

  /// Format: `projects/*/locations/*/instance`. Currently only `locations/global` is supported.
  late final Output<String> name;
  late final Output<String> project;

  /// The current state of the Instance.
  late final Output<String> state;

  /// Extra information of Instance.State if the state is `FAILED`.
  late final Output<String> stateMessage;

  /// Last update timestamp.
  late final Output<String> updateTime;

  Instance5(
    String name, {
    InstanceArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigeeregistry/v1:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
