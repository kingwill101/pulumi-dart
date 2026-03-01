// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_application.dart';

/// The Android apps that are allowed to use the key.
class AndroidKeyRestrictions {
  /// A list of Android applications that are allowed to make API calls with this key.
  final List<AndroidApplication>? allowedApplications;

  /// Creates a new [AndroidKeyRestrictions].
  /// [allowedApplications] A list of Android applications that are allowed to make API calls with this key.
  AndroidKeyRestrictions({this.allowedApplications});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedApplications': ?allowedApplications == null
          ? null
          : pulumi.Input.encodeList<AndroidApplication, Map<String, dynamic>>(
              allowedApplications!,
              (value) => value.toMap(),
            ),
    };
  }

  factory AndroidKeyRestrictions.fromMap(Map<String, dynamic> map) {
    return AndroidKeyRestrictions(
      allowedApplications: map['allowedApplications'] == null
          ? null
          : pulumi.Input.decodeList<AndroidApplication>(
              map['allowedApplications'],
              (value) => AndroidApplication.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
