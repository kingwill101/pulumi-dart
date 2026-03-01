// ignore_for_file: unused_element, unnecessary_cast

import 'image_reference_response.dart';
import 'osprofile_response.dart';

/// Defines the virtual machine configuration.
class VirtualMachineConfigurationResponse {
  /// The image reference.
  final ImageReferenceResponse imageReference;
  /// The OS profile.
  final OSProfileResponse osProfile;
  /// The virtual machine size.
  final String vmSize;

  /// Creates a new [VirtualMachineConfigurationResponse].
  /// [imageReference] The image reference.
  /// [osProfile] The OS profile.
  /// [vmSize] The virtual machine size.
  VirtualMachineConfigurationResponse({
    required this.imageReference,
    required this.osProfile,
    required this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageReference': imageReference.toMap(),
      'osProfile': osProfile.toMap(),
      'vmSize': vmSize,
    };
  }

  factory VirtualMachineConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineConfigurationResponse(
      imageReference: ImageReferenceResponse.fromMap((map['imageReference'] as Map).cast<String, dynamic>()),
      osProfile: OSProfileResponse.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      vmSize: map['vmSize'] as String,
    );
  }
}

