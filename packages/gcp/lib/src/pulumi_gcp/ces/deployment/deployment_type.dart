import 'package:pulumi/pulumi.dart' as pulumi;
import '../deployment_channel_profile/deployment_channel_profile.dart';
import 'deployment_args.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Ces Deployment Basic
///
///
///
///
/// ## Import
///
/// Deployment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/apps/{{app}}/deployments/{{name}}`
///
/// * `{{project}}/{{location}}/{{app}}/{{name}}`
///
/// * `{{location}}/{{app}}/{{name}}`
///
/// When using the `pulumi import` command, Deployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:ces/deployment:Deployment default projects/{{project}}/locations/{{location}}/apps/{{app}}/deployments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/deployment:Deployment default {{project}}/{{location}}/{{app}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/deployment:Deployment default {{location}}/{{app}}/{{name}}
/// ```
class DeploymentType extends pulumi.CustomResource {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> app;

  /// The resource name of the app version to deploy.
  /// Format:
  /// projects/{project}/locations/{location}/apps/{app}/versions/{version}
  late final pulumi.Output<String> appVersion;

  /// A ChannelProfile configures the agent's behavior for a specific communication
  /// channel, such as web UI or telephony.
  /// Structure is documented below.
  late final pulumi.Output<DeploymentChannelProfile> channelProfile;

  /// Timestamp when this deployment was created.
  late final pulumi.Output<String> createTime;

  /// Display name of the deployment.
  late final pulumi.Output<String> displayName;

  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  late final pulumi.Output<String> etag;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Identifier. The resource name of the deployment.
  /// Format:
  /// projects/{project}/locations/{location}/apps/{app}/deployments/{deployment}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Timestamp when this deployment was last updated.
  late final pulumi.Output<String> updateTime;

  DeploymentType(
    String name, {
    DeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/deployment:Deployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.app = registerOutput<String>('app');
    this.appVersion = registerOutput<String>('appVersion');
    this.channelProfile =
        registerOutput<DeploymentChannelProfile>('channelProfile');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
