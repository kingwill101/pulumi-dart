// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'onboarding_configuration_response.dart';
import 'os_provision_profile_response.dart';
import 'target_device_configuration_response.dart';
import 'user_details_response.dart';

/// Represents a provisioning request.
class ProvisioningRequestResponse {
  /// Base64 encoded custom configuration for CAPI to use
  final String? customConfiguration;
  /// Device configuration.
  final TargetDeviceConfigurationResponse? deviceConfiguration;
  /// Onboarding configuration.
  final OnboardingConfigurationResponse? onboardingConfiguration;
  /// Operating system profile.
  final OsProvisionProfileResponse osProfile;
  /// Target operating system to support polymorphic resource.
  final String target;
  /// User configuration.
  final List<UserDetailsResponse>? userDetails;

  /// Creates a new [ProvisioningRequestResponse].
  /// [customConfiguration] Base64 encoded custom configuration for CAPI to use
  /// [deviceConfiguration] Device configuration.
  /// [onboardingConfiguration] Onboarding configuration.
  /// [osProfile] Operating system profile.
  /// [target] Target operating system to support polymorphic resource.
  /// [userDetails] User configuration.
  ProvisioningRequestResponse({
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
      'userDetails': ?userDetails == null ? null : pulumi.Input.encodeList<UserDetailsResponse, Map<String, dynamic>>(userDetails!, (value) => value.toMap()),
    };
  }

  factory ProvisioningRequestResponse.fromMap(Map<String, dynamic> map) {
    return ProvisioningRequestResponse(
      customConfiguration: map['customConfiguration'] == null ? null : map['customConfiguration'] as String,
      deviceConfiguration: map['deviceConfiguration'] == null ? null : TargetDeviceConfigurationResponse.fromMap((map['deviceConfiguration'] as Map).cast<String, dynamic>()),
      onboardingConfiguration: map['onboardingConfiguration'] == null ? null : OnboardingConfigurationResponse.fromMap((map['onboardingConfiguration'] as Map).cast<String, dynamic>()),
      osProfile: OsProvisionProfileResponse.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      target: map['target'] as String,
      userDetails: map['userDetails'] == null ? null : pulumi.Input.decodeList<UserDetailsResponse>(map['userDetails'], (value) => UserDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

