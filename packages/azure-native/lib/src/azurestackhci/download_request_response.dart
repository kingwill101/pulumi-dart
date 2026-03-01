// ignore_for_file: unused_element, unnecessary_cast

import 'download_os_profile_response.dart';

/// Download Request properties
class DownloadRequestResponse {
  /// Operating system profile.
  final DownloadOsProfileResponse osProfile;
  /// Target operating system to support polymorphic resource.
  final String target;

  /// Creates a new [DownloadRequestResponse].
  /// [osProfile] Operating system profile.
  /// [target] Target operating system to support polymorphic resource.
  DownloadRequestResponse({
    required this.osProfile,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osProfile': osProfile.toMap(),
      'target': target,
    };
  }

  factory DownloadRequestResponse.fromMap(Map<String, dynamic> map) {
    return DownloadRequestResponse(
      osProfile: DownloadOsProfileResponse.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      target: map['target'] as String,
    );
  }
}

