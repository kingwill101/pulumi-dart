// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'sdk_bug_response.dart';

/// The version of the SDK used to run the job.
class SdkVersionResponse {
  /// Known bugs found in this SDK version.
  final List<SdkBugResponse> bugs;

  /// The support status for this SDK version.
  final String sdkSupportStatus;

  /// The version of the SDK used to run the job.
  final String version;

  /// A readable string describing the version of the SDK.
  final String versionDisplayName;

  SdkVersionResponse({
    required this.bugs,
    required this.sdkSupportStatus,
    required this.version,
    required this.versionDisplayName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bugs'] = Input.encodeList<SdkBugResponse, Map<String, dynamic>>(
        bugs, (value) => value.toMap());
    map['sdkSupportStatus'] = sdkSupportStatus;
    map['version'] = version;
    map['versionDisplayName'] = versionDisplayName;
    return map;
  }

  factory SdkVersionResponse.fromMap(Map<String, dynamic> map) {
    return SdkVersionResponse(
      bugs: Input.decodeList<SdkBugResponse>(
          map['bugs'],
          (value) =>
              SdkBugResponse.fromMap((value as Map).cast<String, dynamic>())),
      sdkSupportStatus: map['sdkSupportStatus'] as String,
      version: map['version'] as String,
      versionDisplayName: map['versionDisplayName'] as String,
    );
  }
}
