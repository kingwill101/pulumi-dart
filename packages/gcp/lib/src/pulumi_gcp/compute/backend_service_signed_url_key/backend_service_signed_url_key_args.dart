// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for BackendServiceSignedUrlKey.
class BackendServiceSignedUrlKeyArgs {
  /// The backend service this signed URL key belongs.
  final pulumi.Input<String> backendService;

  /// 128-bit key value used for signing the URL. The key value must be a
  /// valid RFC 4648 Section 5 base64url encoded string.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> keyValue;

  /// Name of the signed URL key.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  BackendServiceSignedUrlKeyArgs({
    required this.backendService,
    required this.keyValue,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backendService'] = backendService;
    map['keyValue'] = keyValue;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory BackendServiceSignedUrlKeyArgs.fromMap(Map<String, dynamic> map) {
    return BackendServiceSignedUrlKeyArgs(
      backendService: pulumi.Input.asInput<String>(map['backendService']),
      keyValue: pulumi.Input.asInput<String>(map['keyValue']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
