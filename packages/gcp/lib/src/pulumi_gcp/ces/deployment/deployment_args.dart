// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../deployment_channel_profile/deployment_channel_profile.dart';

/// The set of arguments for Deployment.
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

  DeploymentArgs({
    required this.app,
    required this.appVersion,
    required this.channelProfile,
    required this.displayName,
    required this.location,
    this.project,
  });

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
      app: pulumi.Input.asInput<String>(map['app']),
      appVersion: pulumi.Input.asInput<String>(map['appVersion']),
      channelProfile:
          pulumi.Input.asInput<DeploymentChannelProfile>(map['channelProfile']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
