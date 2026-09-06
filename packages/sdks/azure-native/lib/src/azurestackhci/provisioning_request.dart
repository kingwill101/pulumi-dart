// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'onboarding_configuration.dart';
import 'os_provision_profile.dart';
import 'target_device_configuration.dart';
import 'user_details.dart';

/// Represents a provisioning request.
class ProvisioningRequest {
  /// Base64 encoded custom configuration for CAPI to use
  final pulumi.Input<String?>? customConfiguration;
  /// Device configuration.
  final pulumi.Input<TargetDeviceConfiguration?>? deviceConfiguration;
  /// Onboarding configuration.
  final pulumi.Input<OnboardingConfiguration?>? onboardingConfiguration;
  /// Operating system profile.
  final pulumi.Input<OsProvisionProfile> osProfile;
  /// Target operating system to support polymorphic resource.
  final pulumi.Input<dynamic> target;
  /// User configuration.
  final pulumi.Input<List<UserDetails>?>? userDetails;

  /// Creates a new [ProvisioningRequest].
  /// [customConfiguration] Base64 encoded custom configuration for CAPI to use
  /// [deviceConfiguration] Device configuration.
  /// [onboardingConfiguration] Onboarding configuration.
  /// [osProfile] Operating system profile.
  /// [target] Target operating system to support polymorphic resource.
  /// [userDetails] User configuration.
  const ProvisioningRequest({
    this.customConfiguration,
    this.deviceConfiguration,
    this.onboardingConfiguration,
    required this.osProfile,
    required this.target,
    this.userDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customConfiguration': ?customConfiguration,
      'deviceConfiguration': ?pulumi.Input.mapOptionalInputValue<TargetDeviceConfiguration, Map<String, dynamic>>(deviceConfiguration, (value) => value.toMap()),
      'onboardingConfiguration': ?pulumi.Input.mapOptionalInputValue<OnboardingConfiguration, Map<String, dynamic>>(onboardingConfiguration, (value) => value.toMap()),
      'osProfile': pulumi.Input.mapInputValue<OsProvisionProfile, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'target': target,
      'userDetails': ?pulumi.Input.mapOptionalInputValue<List<UserDetails>, List<Map<String, dynamic>>>(userDetails, (value) => pulumi.Input.encodeList<UserDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ProvisioningRequest.fromMap(Map<String, dynamic> map) {
    return ProvisioningRequest(
      customConfiguration: (() { final guardedValue = map['customConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceConfiguration: (() { final guardedValue = map['deviceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TargetDeviceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      onboardingConfiguration: (() { final guardedValue = map['onboardingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OnboardingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osProfile: pulumi.Input.fromValue(OsProvisionProfile.fromMap((map['osProfile']! as Map).cast<String, dynamic>())),
      target: pulumi.Input.fromValue(map['target']),
      userDetails: (() { final guardedValue = map['userDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserDetails>(guardedValue, (value) => UserDetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
