// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Collection of instances belong to the Dev Tool Portal.
class DevToolPortalInstanceResponse {
  /// Name of the Dev Tool Portal instance.
  final pulumi.Input<String> name;
  /// Status of the Dev Tool Portal instance. It can be Pending, Running, Succeeded, Failed, Unknown.
  final pulumi.Input<String> status;

  /// Creates a new [DevToolPortalInstanceResponse].
  /// [name] Name of the Dev Tool Portal instance.
  /// [status] Status of the Dev Tool Portal instance. It can be Pending, Running, Succeeded, Failed, Unknown.
  DevToolPortalInstanceResponse({
    required this.name,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'status': status,
    };
  }

  factory DevToolPortalInstanceResponse.fromMap(Map<String, dynamic> map) {
    return DevToolPortalInstanceResponse(
      name: (map['name'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

