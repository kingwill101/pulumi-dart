// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_notification.dart';
import 'autoscale_profile.dart';
import 'predictive_autoscale_policy.dart';

/// {@template pulumi_monitor_autoscale_setting_args_doc}
/// The set of arguments for AutoscaleSetting.
/// {@endtemplate}
/// {@macro pulumi_monitor_autoscale_setting_args_doc}
class AutoscaleSettingArgs {
  /// The autoscale setting name.
  final pulumi.Input<String>? autoscaleSettingName;
  /// the enabled flag. Specifies whether automatic scaling is enabled for the resource. The default value is 'false'.
  final pulumi.Input<bool>? enabled;
  /// Resource location
  final pulumi.Input<String>? location;
  /// the name of the autoscale setting.
  final pulumi.Input<String>? name;
  /// the collection of notifications.
  final pulumi.Input<List<AutoscaleNotification>>? notifications;
  /// the predictive autoscale policy mode.
  final pulumi.Input<PredictiveAutoscalePolicy>? predictiveAutoscalePolicy;
  /// the collection of automatic scaling profiles that specify different scaling parameters for different time periods. A maximum of 20 profiles can be specified.
  final pulumi.Input<List<AutoscaleProfile>> profiles;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets a list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater in length than 128 characters and a value no greater in length than 256 characters.
  final pulumi.Input<Map<String, String>>? tags;
  /// the location of the resource that the autoscale setting should be added to.
  final pulumi.Input<String>? targetResourceLocation;
  /// the resource identifier of the resource that the autoscale setting should be added to.
  final pulumi.Input<String>? targetResourceUri;

  /// Creates a new [AutoscaleSettingArgs].
  /// [autoscaleSettingName] The autoscale setting name.
  /// [enabled] the enabled flag. Specifies whether automatic scaling is enabled for the resource. The default value is 'false'.
  /// [location] Resource location
  /// [name] the name of the autoscale setting.
  /// [notifications] the collection of notifications.
  /// [predictiveAutoscalePolicy] the predictive autoscale policy mode.
  /// [profiles] the collection of automatic scaling profiles that specify different scaling parameters for different time periods. A maximum of 20 profiles can be specified.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Gets or sets a list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater in length than 128 characters and a value no greater in length than 256 characters.
  /// [targetResourceLocation] the location of the resource that the autoscale setting should be added to.
  /// [targetResourceUri] the resource identifier of the resource that the autoscale setting should be added to.
  const AutoscaleSettingArgs({
    this.autoscaleSettingName,
    this.enabled,
    this.location,
    this.name,
    this.notifications,
    this.predictiveAutoscalePolicy,
    required this.profiles,
    required this.resourceGroupName,
    this.tags,
    this.targetResourceLocation,
    this.targetResourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaleSettingName': ?autoscaleSettingName,
      'enabled': ?enabled,
      'location': ?location,
      'name': ?name,
      'notifications': ?pulumi.Input.mapOptionalInputValue<List<AutoscaleNotification>, List<Map<String, dynamic>>>(notifications, (value) => pulumi.Input.encodeList<AutoscaleNotification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'predictiveAutoscalePolicy': ?pulumi.Input.mapOptionalInputValue<PredictiveAutoscalePolicy, Map<String, dynamic>>(predictiveAutoscalePolicy, (value) => value.toMap()),
      'profiles': pulumi.Input.mapInputValue<List<AutoscaleProfile>, List<Map<String, dynamic>>>(profiles, (value) => pulumi.Input.encodeList<AutoscaleProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'targetResourceLocation': ?targetResourceLocation,
      'targetResourceUri': ?targetResourceUri,
    };
  }

  factory AutoscaleSettingArgs.fromMap(Map<String, dynamic> map) {
    return AutoscaleSettingArgs(
      autoscaleSettingName: (() { final guardedValue = map['autoscaleSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutoscaleNotification>(guardedValue, (value) => AutoscaleNotification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      predictiveAutoscalePolicy: (() { final guardedValue = map['predictiveAutoscalePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PredictiveAutoscalePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      profiles: pulumi.Input.fromValue(pulumi.Input.decodeList<AutoscaleProfile>(map['profiles']!, (value) => AutoscaleProfile.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetResourceLocation: (() { final guardedValue = map['targetResourceLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetResourceUri: (() { final guardedValue = map['targetResourceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
