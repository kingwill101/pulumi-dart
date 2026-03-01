// ignore_for_file: unused_element, unnecessary_cast

import 'datadog_organization_properties_response.dart';
import 'user_info_response.dart';

/// Properties specific to the monitor resource.
class MonitorPropertiesResponse {
  /// Specify the Datadog organization name. In the case of linking to existing organizations, Id, ApiKey, and Applicationkey is required as well.
  final DatadogOrganizationPropertiesResponse? datadogOrganizationProperties;
  final String liftrResourceCategory;
  /// The priority of the resource.
  final int liftrResourcePreference;
  /// Flag specifying the Marketplace Subscription Status of the resource. If payment is not made in time, the resource will go in Suspended state.
  final String marketplaceSubscriptionStatus;
  /// Flag specifying if the resource monitoring is enabled or disabled.
  final String? monitoringStatus;
  final String provisioningState;
  /// Includes name, email and optionally, phone number. User Information can't be null.
  final UserInfoResponse? userInfo;

  /// Creates a new [MonitorPropertiesResponse].
  /// [datadogOrganizationProperties] Specify the Datadog organization name. In the case of linking to existing organizations, Id, ApiKey, and Applicationkey is required as well.
  /// [liftrResourceCategory] Required.
  /// [liftrResourcePreference] The priority of the resource.
  /// [marketplaceSubscriptionStatus] Flag specifying the Marketplace Subscription Status of the resource. If payment is not made in time, the resource will go in Suspended state.
  /// [monitoringStatus] Flag specifying if the resource monitoring is enabled or disabled.
  /// [provisioningState] Required.
  /// [userInfo] Includes name, email and optionally, phone number. User Information can't be null.
  MonitorPropertiesResponse({
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
      'datadogOrganizationProperties': ?datadogOrganizationProperties == null ? null : datadogOrganizationProperties!.toMap(),
      'liftrResourceCategory': liftrResourceCategory,
      'liftrResourcePreference': liftrResourcePreference,
      'marketplaceSubscriptionStatus': marketplaceSubscriptionStatus,
      'monitoringStatus': ?monitoringStatus,
      'provisioningState': provisioningState,
      'userInfo': ?userInfo == null ? null : userInfo!.toMap(),
    };
  }

  factory MonitorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MonitorPropertiesResponse(
      datadogOrganizationProperties: map['datadogOrganizationProperties'] == null ? null : DatadogOrganizationPropertiesResponse.fromMap((map['datadogOrganizationProperties'] as Map).cast<String, dynamic>()),
      liftrResourceCategory: map['liftrResourceCategory'] as String,
      liftrResourcePreference: map['liftrResourcePreference'] as int,
      marketplaceSubscriptionStatus: map['marketplaceSubscriptionStatus'] as String,
      monitoringStatus: map['monitoringStatus'] == null ? null : map['monitoringStatus'] as String,
      provisioningState: map['provisioningState'] as String,
      userInfo: map['userInfo'] == null ? null : UserInfoResponse.fromMap((map['userInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

