// ignore_for_file: unused_element, unnecessary_cast

import 'download_os_profile.dart';

/// Download Request properties
class DownloadRequest {
  /// Operating system profile.
  final DownloadOsProfile osProfile;
  /// Target operating system to support polymorphic resource.
  final String target;

  /// Creates a new [DownloadRequest].
  /// [osProfile] Operating system profile.
  /// [target] Target operating system to support polymorphic resource.
  DownloadRequest({
    required this.osProfile,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osProfile': osProfile.toMap(),
      'target': target,
    };
  }

  factory DownloadRequest.fromMap(Map<String, dynamic> map) {
    return DownloadRequest(
      osProfile: DownloadOsProfile.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      target: map['target'] as String,
    );
  }
}

