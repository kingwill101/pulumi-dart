// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_android_application_response.dart';

/// The Android apps that are allowed to use the key.
class V2AndroidKeyRestrictionsResponse {
  /// A list of Android applications that are allowed to make API calls with this key.
  final List<V2AndroidApplicationResponse> allowedApplications;

  /// Creates a new [V2AndroidKeyRestrictionsResponse].
  /// [allowedApplications] A list of Android applications that are allowed to make API calls with this key.
  V2AndroidKeyRestrictionsResponse({
    required this.allowedApplications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedApplications': pulumi.Input.encodeList<V2AndroidApplicationResponse, Map<String, dynamic>>(allowedApplications, (value) => value.toMap()),
    };
  }

  factory V2AndroidKeyRestrictionsResponse.fromMap(Map<String, dynamic> map) {
    return V2AndroidKeyRestrictionsResponse(
      allowedApplications: pulumi.Input.decodeList<V2AndroidApplicationResponse>(map['allowedApplications'], (value) => V2AndroidApplicationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

