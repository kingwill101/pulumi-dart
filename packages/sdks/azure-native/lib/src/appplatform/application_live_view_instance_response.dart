// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Collection of instances belong to the Application Live View
class ApplicationLiveViewInstanceResponse {
  /// Name of the Application Live View instance.
  final pulumi.Input<String> name;
  /// Status of the Application Live View instance. It can be Pending, Running, Succeeded, Failed, Unknown.
  final pulumi.Input<String> status;

  /// Creates a new [ApplicationLiveViewInstanceResponse].
  /// [name] Name of the Application Live View instance.
  /// [status] Status of the Application Live View instance. It can be Pending, Running, Succeeded, Failed, Unknown.
  ApplicationLiveViewInstanceResponse({
    required this.name,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'status': status,
    };
  }

  factory ApplicationLiveViewInstanceResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationLiveViewInstanceResponse(
      name: (map['name'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

