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

  SdkVersion({
    this.sdkSupportStatus,
    this.version,
    this.versionDisplayName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sdkSupportStatusValue = sdkSupportStatus;
    if (sdkSupportStatusValue != null) {
      map['sdkSupportStatus'] = sdkSupportStatusValue.value;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    final versionDisplayNameValue = versionDisplayName;
    if (versionDisplayNameValue != null) {
      map['versionDisplayName'] = versionDisplayNameValue;
    }
    return map;
  }

  factory SdkVersion.fromMap(Map<String, dynamic> map) {
    return SdkVersion(
      sdkSupportStatus: map['sdkSupportStatus'] == null
          ? null
          : SdkVersionSdkSupportStatus.fromValue(
              map['sdkSupportStatus'] as String),
      version: map['version'] == null ? null : map['version'] as String,
      versionDisplayName: map['versionDisplayName'] == null
          ? null
          : map['versionDisplayName'] as String,
    );
  }
}
