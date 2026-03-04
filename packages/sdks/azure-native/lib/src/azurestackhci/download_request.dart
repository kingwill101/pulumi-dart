// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'download_os_profile.dart';

/// Download Request properties
class DownloadRequest {
  /// Operating system profile.
  final pulumi.Input<DownloadOsProfile> osProfile;

  /// Target operating system to support polymorphic resource.
  final pulumi.Input<String> target;

  /// Creates a new [DownloadRequest].
  /// [osProfile] Operating system profile.
  /// [target] Target operating system to support polymorphic resource.
  DownloadRequest({required this.osProfile, required this.target});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osProfile':
          pulumi.Input.mapInputValue<DownloadOsProfile, Map<String, dynamic>>(
            osProfile,
            (value) => value.toMap(),
          ),
      'target': target,
    };
  }

  factory DownloadRequest.fromMap(Map<String, dynamic> map) {
    return DownloadRequest(
      osProfile: pulumi.Input.fromValue(
        DownloadOsProfile.fromMap(
          (map['osProfile']! as Map).cast<String, dynamic>(),
        ),
      ),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}
