// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_channel_profile.dart';

/// {@template pulumi_ces_deployment_deployment_args_doc}
/// The set of arguments for Deployment.
/// {@endtemplate}
/// {@macro pulumi_ces_deployment_deployment_args_doc}
class DeploymentArgs {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> app;

  /// The resource name of the app version to deploy.
  /// Format:
  /// projects/{project}/locations/{location}/apps/{app}/versions/{version}
  final pulumi.Input<String> appVersion;

  /// A ChannelProfile configures the agent's behavior for a specific communication
  /// channel, such as web UI or telephony.
  /// Structure is documented below.
  final pulumi.Input<DeploymentChannelProfile> channelProfile;

  /// Display name of the deployment.
  final pulumi.Input<String> displayName;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [DeploymentArgs].
  /// [app] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [appVersion] The resource name of the app version to deploy.
  /// [channelProfile] A ChannelProfile configures the agent's behavior for a specific communication
  /// [displayName] Display name of the deployment.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  DeploymentArgs({
    required String app,
    required String appVersion,
    required DeploymentChannelProfile channelProfile,
    required String displayName,
    required String location,
    String? project,
  })  : app = pulumi.Input.asInput<String>(app),
        appVersion = pulumi.Input.asInput<String>(appVersion),
        channelProfile =
            pulumi.Input.asInput<DeploymentChannelProfile>(channelProfile),
        displayName = pulumi.Input.asInput<String>(displayName),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['app'] = app;
    map['appVersion'] = appVersion;
    map['channelProfile'] = pulumi.Input.mapInputValue<DeploymentChannelProfile,
        Map<String, dynamic>>(channelProfile, (value) => value.toMap());
    map['displayName'] = displayName;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      app: map['app'] as String,
      appVersion: map['appVersion'] as String,
      channelProfile: DeploymentChannelProfile.fromMap(
          (map['channelProfile'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
