// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_device_configuration.dart';

/// Site Details consists of common configurations.
class SiteDetails {
  /// Edge Device configuration received from site common configuration.
  final pulumi.Input<TargetDeviceConfiguration?>? deviceConfiguration;
  /// Site resource Id to be set during Edge Machine resource creation.
  final pulumi.Input<String> siteResourceId;

  /// Creates a new [SiteDetails].
  /// [deviceConfiguration] Edge Device configuration received from site common configuration.
  /// [siteResourceId] Site resource Id to be set during Edge Machine resource creation.
  const SiteDetails({
    this.deviceConfiguration,
    required this.siteResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceConfiguration': ?pulumi.Input.mapOptionalInputValue<TargetDeviceConfiguration, Map<String, dynamic>>(deviceConfiguration, (value) => value.toMap()),
      'siteResourceId': siteResourceId,
    };
  }

  factory SiteDetails.fromMap(Map<String, dynamic> map) {
    return SiteDetails(
      deviceConfiguration: (() { final guardedValue = map['deviceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TargetDeviceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      siteResourceId: pulumi.Input.fromValue(map['siteResourceId'] as String),
    );
  }
}
