// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../deployment_channel_profile/deployment_channel_profile.dart';

/// The set of arguments for Deployment.
class DeploymentArgs {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> app;

  /// The resource name of the app version to deploy.
  /// Format:
  /// projects/{project}/locations/{location}/apps/{app}/versions/{version}
  final Input<String> appVersion;

  /// A ChannelProfile configures the agent's behavior for a specific communication
  /// channel, such as web UI or telephony.
  /// Structure is documented below.
  final Input<DeploymentChannelProfile> channelProfile;

  /// Display name of the deployment.
  final Input<String> displayName;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

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
    map['channelProfile'] =
        Input.mapInputValue<DeploymentChannelProfile, Map<String, dynamic>>(
            channelProfile, (value) => value.toMap());
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
      app: Input.asInput<String>(map['app']),
      appVersion: Input.asInput<String>(map['appVersion']),
      channelProfile:
          Input.asInput<DeploymentChannelProfile>(map['channelProfile']),
      displayName: Input.asInput<String>(map['displayName']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
