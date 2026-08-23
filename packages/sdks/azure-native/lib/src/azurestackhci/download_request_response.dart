// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'download_os_profile_response.dart';

/// Download Request properties
class DownloadRequestResponse {
  /// Operating system profile.
  final pulumi.Input<DownloadOsProfileResponse> osProfile;
  /// Target operating system to support polymorphic resource.
  final pulumi.Input<String> target;

  /// Creates a new [DownloadRequestResponse].
  /// [osProfile] Operating system profile.
  /// [target] Target operating system to support polymorphic resource.
  const DownloadRequestResponse({
    required this.osProfile,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osProfile': pulumi.Input.mapInputValue<DownloadOsProfileResponse, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'target': target,
    };
  }

  factory DownloadRequestResponse.fromMap(Map<String, dynamic> map) {
    return DownloadRequestResponse(
      osProfile: pulumi.Input.fromValue(DownloadOsProfileResponse.fromMap((map['osProfile']! as Map).cast<String, dynamic>())),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}
