// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_android_application.dart';

/// The Android apps that are allowed to use the key.
class V2AndroidKeyRestrictions {
  /// A list of Android applications that are allowed to make API calls with this key.
  final List<V2AndroidApplication>? allowedApplications;

  /// Creates a new [V2AndroidKeyRestrictions].
  /// [allowedApplications] A list of Android applications that are allowed to make API calls with this key.
  V2AndroidKeyRestrictions({
    this.allowedApplications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedApplications': ?allowedApplications == null ? null : pulumi.Input.encodeList<V2AndroidApplication, Map<String, dynamic>>(allowedApplications!, (value) => value.toMap()),
    };
  }

  factory V2AndroidKeyRestrictions.fromMap(Map<String, dynamic> map) {
    return V2AndroidKeyRestrictions(
      allowedApplications: map['allowedApplications'] == null ? null : pulumi.Input.decodeList<V2AndroidApplication>(map['allowedApplications'], (value) => V2AndroidApplication.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

