// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_notification_response.dart';
import 'autoscale_profile_response.dart';
import 'predictive_autoscale_policy_response.dart';

/// A setting that contains all of the configuration for the automatic scaling of a resource.
class AutoscaleSettingResponse {
  /// the enabled flag. Specifies whether automatic scaling is enabled for the resource. The default value is 'false'.
  final pulumi.Input<bool>? enabled;
  /// the name of the autoscale setting.
  final pulumi.Input<String>? name;
  /// the collection of notifications.
  final pulumi.Input<List<AutoscaleNotificationResponse>>? notifications;
  /// the predictive autoscale policy mode.
  final pulumi.Input<PredictiveAutoscalePolicyResponse>? predictiveAutoscalePolicy;
  /// the collection of automatic scaling profiles that specify different scaling parameters for different time periods. A maximum of 20 profiles can be specified.
  final pulumi.Input<List<AutoscaleProfileResponse>> profiles;
  /// the location of the resource that the autoscale setting should be added to.
  final pulumi.Input<String>? targetResourceLocation;
  /// the resource identifier of the resource that the autoscale setting should be added to.
  final pulumi.Input<String>? targetResourceUri;

  /// Creates a new [AutoscaleSettingResponse].
  /// [enabled] the enabled flag. Specifies whether automatic scaling is enabled for the resource. The default value is 'false'.
  /// [name] the name of the autoscale setting.
  /// [notifications] the collection of notifications.
  /// [predictiveAutoscalePolicy] the predictive autoscale policy mode.
  /// [profiles] the collection of automatic scaling profiles that specify different scaling parameters for different time periods. A maximum of 20 profiles can be specified.
  /// [targetResourceLocation] the location of the resource that the autoscale setting should be added to.
  /// [targetResourceUri] the resource identifier of the resource that the autoscale setting should be added to.
  const AutoscaleSettingResponse({
    this.enabled,
    this.name,
    this.notifications,
    this.predictiveAutoscalePolicy,
    required this.profiles,
    this.targetResourceLocation,
    this.targetResourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'name': ?name,
      'notifications': ?pulumi.Input.mapOptionalInputValue<List<AutoscaleNotificationResponse>, List<Map<String, dynamic>>>(notifications, (value) => pulumi.Input.encodeList<AutoscaleNotificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'predictiveAutoscalePolicy': ?pulumi.Input.mapOptionalInputValue<PredictiveAutoscalePolicyResponse, Map<String, dynamic>>(predictiveAutoscalePolicy, (value) => value.toMap()),
      'profiles': pulumi.Input.mapInputValue<List<AutoscaleProfileResponse>, List<Map<String, dynamic>>>(profiles, (value) => pulumi.Input.encodeList<AutoscaleProfileResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetResourceLocation': ?targetResourceLocation,
      'targetResourceUri': ?targetResourceUri,
    };
  }

  factory AutoscaleSettingResponse.fromMap(Map<String, dynamic> map) {
    return AutoscaleSettingResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutoscaleNotificationResponse>(guardedValue, (value) => AutoscaleNotificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      predictiveAutoscalePolicy: (() { final guardedValue = map['predictiveAutoscalePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PredictiveAutoscalePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      profiles: pulumi.Input.fromValue(pulumi.Input.decodeList<AutoscaleProfileResponse>(map['profiles']!, (value) => AutoscaleProfileResponse.fromMap((value as Map).cast<String, dynamic>()))),
      targetResourceLocation: (() { final guardedValue = map['targetResourceLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetResourceUri: (() { final guardedValue = map['targetResourceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

