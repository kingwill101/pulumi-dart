// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'onboarding_configuration_response.dart';
import 'os_provision_profile_response.dart';
import 'target_device_configuration_response.dart';
import 'user_details_response.dart';

/// Represents a provisioning request.
class ProvisioningRequestResponse {
  /// Base64 encoded custom configuration for CAPI to use
  final pulumi.Input<String>? customConfiguration;
  /// Device configuration.
  final pulumi.Input<TargetDeviceConfigurationResponse>? deviceConfiguration;
  /// Onboarding configuration.
  final pulumi.Input<OnboardingConfigurationResponse>? onboardingConfiguration;
  /// Operating system profile.
  final pulumi.Input<OsProvisionProfileResponse> osProfile;
  /// Target operating system to support polymorphic resource.
  final pulumi.Input<String> target;
  /// User configuration.
  final pulumi.Input<List<UserDetailsResponse>>? userDetails;

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
      'deviceConfiguration': ?pulumi.Input.mapOptionalInputValue<TargetDeviceConfigurationResponse, Map<String, dynamic>>(deviceConfiguration, (value) => value.toMap()),
      'onboardingConfiguration': ?pulumi.Input.mapOptionalInputValue<OnboardingConfigurationResponse, Map<String, dynamic>>(onboardingConfiguration, (value) => value.toMap()),
      'osProfile': pulumi.Input.mapInputValue<OsProvisionProfileResponse, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'target': target,
      'userDetails': ?pulumi.Input.mapOptionalInputValue<List<UserDetailsResponse>, List<Map<String, dynamic>>>(userDetails, (value) => pulumi.Input.encodeList<UserDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ProvisioningRequestResponse.fromMap(Map<String, dynamic> map) {
    return ProvisioningRequestResponse(
      customConfiguration: map['customConfiguration'] == null ? null : (map['customConfiguration'] as String).input(),
      deviceConfiguration: map['deviceConfiguration'] == null ? null : (TargetDeviceConfigurationResponse.fromMap((map['deviceConfiguration'] as Map).cast<String, dynamic>())).input(),
      onboardingConfiguration: map['onboardingConfiguration'] == null ? null : (OnboardingConfigurationResponse.fromMap((map['onboardingConfiguration'] as Map).cast<String, dynamic>())).input(),
      osProfile: (OsProvisionProfileResponse.fromMap((map['osProfile'] as Map).cast<String, dynamic>())).input(),
      target: (map['target'] as String).input(),
      userDetails: map['userDetails'] == null ? null : (pulumi.Input.decodeList<UserDetailsResponse>(map['userDetails'], (value) => UserDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

