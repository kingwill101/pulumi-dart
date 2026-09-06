// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datadog_organization_properties_response.dart';
import 'user_info_response.dart';

/// Properties specific to the monitor resource.
class MonitorPropertiesResponse {
  /// Specify the Datadog organization name. In the case of linking to existing organizations, Id, ApiKey, and Applicationkey is required as well.
  final pulumi.Input<DatadogOrganizationPropertiesResponse?>? datadogOrganizationProperties;
  final pulumi.Input<String> liftrResourceCategory;
  /// The priority of the resource.
  final pulumi.Input<int> liftrResourcePreference;
  /// Flag specifying the Marketplace Subscription Status of the resource. If payment is not made in time, the resource will go in Suspended state.
  final pulumi.Input<String> marketplaceSubscriptionStatus;
  /// Flag specifying if the resource monitoring is enabled or disabled.
  final pulumi.Input<String?>? monitoringStatus;
  final pulumi.Input<String> provisioningState;
  /// Includes name, email and optionally, phone number. User Information can't be null.
  final pulumi.Input<UserInfoResponse?>? userInfo;

  /// Creates a new [MonitorPropertiesResponse].
  /// [datadogOrganizationProperties] Specify the Datadog organization name. In the case of linking to existing organizations, Id, ApiKey, and Applicationkey is required as well.
  /// [liftrResourceCategory] Required.
  /// [liftrResourcePreference] The priority of the resource.
  /// [marketplaceSubscriptionStatus] Flag specifying the Marketplace Subscription Status of the resource. If payment is not made in time, the resource will go in Suspended state.
  /// [monitoringStatus] Flag specifying if the resource monitoring is enabled or disabled.
  /// [provisioningState] Required.
  /// [userInfo] Includes name, email and optionally, phone number. User Information can't be null.
  const MonitorPropertiesResponse({
    this.datadogOrganizationProperties,
    required this.liftrResourceCategory,
    required this.liftrResourcePreference,
    required this.marketplaceSubscriptionStatus,
    this.monitoringStatus,
    required this.provisioningState,
    this.userInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datadogOrganizationProperties': ?pulumi.Input.mapOptionalInputValue<DatadogOrganizationPropertiesResponse, Map<String, dynamic>>(datadogOrganizationProperties, (value) => value.toMap()),
      'liftrResourceCategory': liftrResourceCategory,
      'liftrResourcePreference': liftrResourcePreference,
      'marketplaceSubscriptionStatus': marketplaceSubscriptionStatus,
      'monitoringStatus': ?monitoringStatus,
      'provisioningState': provisioningState,
      'userInfo': ?pulumi.Input.mapOptionalInputValue<UserInfoResponse, Map<String, dynamic>>(userInfo, (value) => value.toMap()),
    };
  }

  factory MonitorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MonitorPropertiesResponse(
      datadogOrganizationProperties: (() { final guardedValue = map['datadogOrganizationProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatadogOrganizationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      liftrResourceCategory: pulumi.Input.fromValue(map['liftrResourceCategory'] as String),
      liftrResourcePreference: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['liftrResourcePreference'])),
      marketplaceSubscriptionStatus: pulumi.Input.fromValue(map['marketplaceSubscriptionStatus'] as String),
      monitoringStatus: (() { final guardedValue = map['monitoringStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      userInfo: (() { final guardedValue = map['userInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
