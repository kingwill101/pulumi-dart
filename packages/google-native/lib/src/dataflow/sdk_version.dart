// ignore_for_file: unused_element, unnecessary_cast

import 'sdk_version_sdk_support_status.dart';

/// The version of the SDK used to run the job.
class SdkVersion {
  /// The support status for this SDK version.
  final SdkVersionSdkSupportStatus? sdkSupportStatus;

  /// The version of the SDK used to run the job.
  final String? version;

  /// A readable string describing the version of the SDK.
  final String? versionDisplayName;

  /// Creates a new [SdkVersion].
  /// [sdkSupportStatus] The support status for this SDK version.
  /// [version] The version of the SDK used to run the job.
  /// [versionDisplayName] A readable string describing the version of the SDK.
  SdkVersion({this.sdkSupportStatus, this.version, this.versionDisplayName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sdkSupportStatus': ?sdkSupportStatus == null
          ? null
          : sdkSupportStatus!.value,
      'version': ?version,
      'versionDisplayName': ?versionDisplayName,
    };
  }

  factory SdkVersion.fromMap(Map<String, dynamic> map) {
    return SdkVersion(
      sdkSupportStatus: map['sdkSupportStatus'] == null
          ? null
          : SdkVersionSdkSupportStatus.fromValue(
              map['sdkSupportStatus'] as String,
            ),
      version: map['version'] == null ? null : map['version'] as String,
      versionDisplayName: map['versionDisplayName'] == null
          ? null
          : map['versionDisplayName'] as String,
    );
  }
}
