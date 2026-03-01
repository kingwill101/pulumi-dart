// ignore_for_file: unused_element, unnecessary_cast

import 'target_device_configuration.dart';

/// Site Details consists of common configurations.
class SiteDetails {
  /// Edge Device configuration received from site common configuration.
  final TargetDeviceConfiguration? deviceConfiguration;
  /// Site resource Id to be set during Edge Machine resource creation.
  final String siteResourceId;

  /// Creates a new [SiteDetails].
  /// [deviceConfiguration] Edge Device configuration received from site common configuration.
  /// [siteResourceId] Site resource Id to be set during Edge Machine resource creation.
  SiteDetails({
    this.deviceConfiguration,
    required this.siteResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceConfiguration': ?deviceConfiguration == null ? null : deviceConfiguration!.toMap(),
      'siteResourceId': siteResourceId,
    };
  }

  factory SiteDetails.fromMap(Map<String, dynamic> map) {
    return SiteDetails(
      deviceConfiguration: map['deviceConfiguration'] == null ? null : TargetDeviceConfiguration.fromMap((map['deviceConfiguration'] as Map).cast<String, dynamic>()),
      siteResourceId: map['siteResourceId'] as String,
    );
  }
}

