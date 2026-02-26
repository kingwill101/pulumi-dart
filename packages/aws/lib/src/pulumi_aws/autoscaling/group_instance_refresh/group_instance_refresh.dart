// ignore_for_file: unused_element, unnecessary_cast

import '../group_instance_refresh_preferences/group_instance_refresh_preferences.dart';

class GroupInstanceRefresh {
  /// Override default parameters for Instance Refresh.
  final GroupInstanceRefreshPreferences? preferences;

  /// Strategy to use for instance refresh. The only allowed value is `Rolling`. See [StartInstanceRefresh Action](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_StartInstanceRefresh.html#API_StartInstanceRefresh_RequestParameters) for more information.
  final String strategy;

  /// Set of additional property names that will trigger an Instance Refresh. A refresh will always be triggered by a change in any of <span pulumi-lang-nodejs="`launchConfiguration`" pulumi-lang-dotnet="`LaunchConfiguration`" pulumi-lang-go="`launchConfiguration`" pulumi-lang-python="`launch_configuration`" pulumi-lang-yaml="`launchConfiguration`" pulumi-lang-java="`launchConfiguration`">`launch_configuration`</span>, <span pulumi-lang-nodejs="`launchTemplate`" pulumi-lang-dotnet="`LaunchTemplate`" pulumi-lang-go="`launchTemplate`" pulumi-lang-python="`launch_template`" pulumi-lang-yaml="`launchTemplate`" pulumi-lang-java="`launchTemplate`">`launch_template`</span>, or <span pulumi-lang-nodejs="`mixedInstancesPolicy`" pulumi-lang-dotnet="`MixedInstancesPolicy`" pulumi-lang-go="`mixedInstancesPolicy`" pulumi-lang-python="`mixed_instances_policy`" pulumi-lang-yaml="`mixedInstancesPolicy`" pulumi-lang-java="`mixedInstancesPolicy`">`mixed_instances_policy`</span>.
  ///
  /// > **NOTE:** A refresh is started when any of the following Auto Scaling Group properties change: <span pulumi-lang-nodejs="`launchConfiguration`" pulumi-lang-dotnet="`LaunchConfiguration`" pulumi-lang-go="`launchConfiguration`" pulumi-lang-python="`launch_configuration`" pulumi-lang-yaml="`launchConfiguration`" pulumi-lang-java="`launchConfiguration`">`launch_configuration`</span>, <span pulumi-lang-nodejs="`launchTemplate`" pulumi-lang-dotnet="`LaunchTemplate`" pulumi-lang-go="`launchTemplate`" pulumi-lang-python="`launch_template`" pulumi-lang-yaml="`launchTemplate`" pulumi-lang-java="`launchTemplate`">`launch_template`</span>, <span pulumi-lang-nodejs="`mixedInstancesPolicy`" pulumi-lang-dotnet="`MixedInstancesPolicy`" pulumi-lang-go="`mixedInstancesPolicy`" pulumi-lang-python="`mixed_instances_policy`" pulumi-lang-yaml="`mixedInstancesPolicy`" pulumi-lang-java="`mixedInstancesPolicy`">`mixed_instances_policy`</span>. Additional properties can be specified in the <span pulumi-lang-nodejs="`triggers`" pulumi-lang-dotnet="`Triggers`" pulumi-lang-go="`triggers`" pulumi-lang-python="`triggers`" pulumi-lang-yaml="`triggers`" pulumi-lang-java="`triggers`">`triggers`</span> property of <span pulumi-lang-nodejs="`instanceRefresh`" pulumi-lang-dotnet="`InstanceRefresh`" pulumi-lang-go="`instanceRefresh`" pulumi-lang-python="`instance_refresh`" pulumi-lang-yaml="`instanceRefresh`" pulumi-lang-java="`instanceRefresh`">`instance_refresh`</span>.
  ///
  /// > **NOTE:** A refresh will not start when `version = "$Latest"` is configured in the <span pulumi-lang-nodejs="`launchTemplate`" pulumi-lang-dotnet="`LaunchTemplate`" pulumi-lang-go="`launchTemplate`" pulumi-lang-python="`launch_template`" pulumi-lang-yaml="`launchTemplate`" pulumi-lang-java="`launchTemplate`">`launch_template`</span> block. To trigger the instance refresh when a launch template is changed, configure <span pulumi-lang-nodejs="`version`" pulumi-lang-dotnet="`Version`" pulumi-lang-go="`version`" pulumi-lang-python="`version`" pulumi-lang-yaml="`version`" pulumi-lang-java="`version`">`version`</span> to use the <span pulumi-lang-nodejs="`latestVersion`" pulumi-lang-dotnet="`LatestVersion`" pulumi-lang-go="`latestVersion`" pulumi-lang-python="`latest_version`" pulumi-lang-yaml="`latestVersion`" pulumi-lang-java="`latestVersion`">`latest_version`</span> attribute of the <span pulumi-lang-nodejs="`aws.ec2.LaunchTemplate`" pulumi-lang-dotnet="`aws.ec2.LaunchTemplate`" pulumi-lang-go="`ec2.LaunchTemplate`" pulumi-lang-python="`ec2.LaunchTemplate`" pulumi-lang-yaml="`aws.ec2.LaunchTemplate`" pulumi-lang-java="`aws.ec2.LaunchTemplate`">`aws.ec2.LaunchTemplate`</span> resource.
  ///
  /// > **NOTE:** Auto Scaling Groups support up to one active instance refresh at a time. When this resource is updated, any existing refresh is cancelled.
  ///
  /// > **NOTE:** Depending on health check settings and group size, an instance refresh may take a long time or fail. This resource does not wait for the instance refresh to complete.
  final List<String>? triggers;

  GroupInstanceRefresh({
    this.preferences,
    required this.strategy,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final preferencesValue = preferences;
    if (preferencesValue != null) {
      map['preferences'] = preferencesValue.toMap();
    }
    map['strategy'] = strategy;
    final triggersValue = triggers;
    if (triggersValue != null) {
      map['triggers'] = triggersValue;
    }
    return map;
  }

  factory GroupInstanceRefresh.fromMap(Map<String, dynamic> map) {
    return GroupInstanceRefresh(
      preferences: map['preferences'] == null
          ? null
          : GroupInstanceRefreshPreferences.fromMap(
              (map['preferences'] as Map).cast<String, dynamic>()),
      strategy: map['strategy'] as String,
      triggers: map['triggers'] == null
          ? null
          : (map['triggers'] as List).cast<String>(),
    );
  }
}
