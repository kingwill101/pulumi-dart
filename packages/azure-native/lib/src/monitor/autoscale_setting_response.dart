// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_notification_response.dart';
import 'autoscale_profile_response.dart';
import 'predictive_autoscale_policy_response.dart';

/// A setting that contains all of the configuration for the automatic scaling of a resource.
class AutoscaleSettingResponse {
  /// the enabled flag. Specifies whether automatic scaling is enabled for the resource. The default value is 'false'.
  final bool? enabled;
  /// the name of the autoscale setting.
  final String? name;
  /// the collection of notifications.
  final List<AutoscaleNotificationResponse>? notifications;
  /// the predictive autoscale policy mode.
  final PredictiveAutoscalePolicyResponse? predictiveAutoscalePolicy;
  /// the collection of automatic scaling profiles that specify different scaling parameters for different time periods. A maximum of 20 profiles can be specified.
  final List<AutoscaleProfileResponse> profiles;
  /// the location of the resource that the autoscale setting should be added to.
  final String? targetResourceLocation;
  /// the resource identifier of the resource that the autoscale setting should be added to.
  final String? targetResourceUri;

  /// Creates a new [AutoscaleSettingResponse].
  /// [enabled] the enabled flag. Specifies whether automatic scaling is enabled for the resource. The default value is 'false'.
  /// [name] the name of the autoscale setting.
  /// [notifications] the collection of notifications.
  /// [predictiveAutoscalePolicy] the predictive autoscale policy mode.
  /// [profiles] the collection of automatic scaling profiles that specify different scaling parameters for different time periods. A maximum of 20 profiles can be specified.
  /// [targetResourceLocation] the location of the resource that the autoscale setting should be added to.
  /// [targetResourceUri] the resource identifier of the resource that the autoscale setting should be added to.
  AutoscaleSettingResponse({
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
      'notifications': ?notifications == null ? null : pulumi.Input.encodeList<AutoscaleNotificationResponse, Map<String, dynamic>>(notifications!, (value) => value.toMap()),
      'predictiveAutoscalePolicy': ?predictiveAutoscalePolicy == null ? null : predictiveAutoscalePolicy!.toMap(),
      'profiles': pulumi.Input.encodeList<AutoscaleProfileResponse, Map<String, dynamic>>(profiles, (value) => value.toMap()),
      'targetResourceLocation': ?targetResourceLocation,
      'targetResourceUri': ?targetResourceUri,
    };
  }

  factory AutoscaleSettingResponse.fromMap(Map<String, dynamic> map) {
    return AutoscaleSettingResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      notifications: map['notifications'] == null ? null : pulumi.Input.decodeList<AutoscaleNotificationResponse>(map['notifications'], (value) => AutoscaleNotificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      predictiveAutoscalePolicy: map['predictiveAutoscalePolicy'] == null ? null : PredictiveAutoscalePolicyResponse.fromMap((map['predictiveAutoscalePolicy'] as Map).cast<String, dynamic>()),
      profiles: pulumi.Input.decodeList<AutoscaleProfileResponse>(map['profiles'], (value) => AutoscaleProfileResponse.fromMap((value as Map).cast<String, dynamic>())),
      targetResourceLocation: map['targetResourceLocation'] == null ? null : map['targetResourceLocation'] as String,
      targetResourceUri: map['targetResourceUri'] == null ? null : map['targetResourceUri'] as String,
    );
  }
}

