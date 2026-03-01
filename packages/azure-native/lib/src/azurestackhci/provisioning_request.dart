// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'onboarding_configuration.dart';
import 'os_provision_profile.dart';
import 'target_device_configuration.dart';
import 'user_details.dart';

/// Represents a provisioning request.
class ProvisioningRequest {
  /// Base64 encoded custom configuration for CAPI to use
  final String? customConfiguration;
  /// Device configuration.
  final TargetDeviceConfiguration? deviceConfiguration;
  /// Onboarding configuration.
  final OnboardingConfiguration? onboardingConfiguration;
  /// Operating system profile.
  final OsProvisionProfile osProfile;
  /// Target operating system to support polymorphic resource.
  final String target;
  /// User configuration.
  final List<UserDetails>? userDetails;

  /// Creates a new [ProvisioningRequest].
  /// [customConfiguration] Base64 encoded custom configuration for CAPI to use
  /// [deviceConfiguration] Device configuration.
  /// [onboardingConfiguration] Onboarding configuration.
  /// [osProfile] Operating system profile.
  /// [target] Target operating system to support polymorphic resource.
  /// [userDetails] User configuration.
  ProvisioningRequest({
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
      'deviceConfiguration': ?deviceConfiguration == null ? null : deviceConfiguration!.toMap(),
      'onboardingConfiguration': ?onboardingConfiguration == null ? null : onboardingConfiguration!.toMap(),
      'osProfile': osProfile.toMap(),
      'target': target,
      'userDetails': ?userDetails == null ? null : pulumi.Input.encodeList<UserDetails, Map<String, dynamic>>(userDetails!, (value) => value.toMap()),
    };
  }

  factory ProvisioningRequest.fromMap(Map<String, dynamic> map) {
    return ProvisioningRequest(
      customConfiguration: map['customConfiguration'] == null ? null : map['customConfiguration'] as String,
      deviceConfiguration: map['deviceConfiguration'] == null ? null : TargetDeviceConfiguration.fromMap((map['deviceConfiguration'] as Map).cast<String, dynamic>()),
      onboardingConfiguration: map['onboardingConfiguration'] == null ? null : OnboardingConfiguration.fromMap((map['onboardingConfiguration'] as Map).cast<String, dynamic>()),
      osProfile: OsProvisionProfile.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      target: map['target'] as String,
      userDetails: map['userDetails'] == null ? null : pulumi.Input.decodeList<UserDetails>(map['userDetails'], (value) => UserDetails.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

