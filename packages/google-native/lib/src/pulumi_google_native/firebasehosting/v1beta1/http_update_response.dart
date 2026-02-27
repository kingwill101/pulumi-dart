// ignore_for_file: unused_element, unnecessary_cast

import 'status_response_firebasehosting_v1beta1.dart';

/// A file you can add to your existing, non-Hosting hosting service that confirms your intent to allow Hosting's Certificate Authorities to create an SSL certificate for your domain.
class HttpUpdateResponse {
  /// An error encountered during the last contents check. If null, the check completed successfully.
  final StatusResponseFirebasehostingV1beta1 checkError;

  /// A text string to serve at the path.
  final String desired;

  /// Whether Hosting was able to find the required file contents on the specified path during its last check.
  final String discovered;

  /// The last time Hosting systems checked for the file contents.
  final String lastCheckTime;

  /// The path to the file.
  final String path;

  HttpUpdateResponse({
    required this.checkError,
    required this.desired,
    required this.discovered,
    required this.lastCheckTime,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['checkError'] = checkError.toMap();
    map['desired'] = desired;
    map['discovered'] = discovered;
    map['lastCheckTime'] = lastCheckTime;
    map['path'] = path;
    return map;
  }

  factory HttpUpdateResponse.fromMap(Map<String, dynamic> map) {
    return HttpUpdateResponse(
      checkError: StatusResponseFirebasehostingV1beta1.fromMap(
          (map['checkError'] as Map).cast<String, dynamic>()),
      desired: map['desired'] as String,
      discovered: map['discovered'] as String,
      lastCheckTime: map['lastCheckTime'] as String,
      path: map['path'] as String,
    );
  }
}
