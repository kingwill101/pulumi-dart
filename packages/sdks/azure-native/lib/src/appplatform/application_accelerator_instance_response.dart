// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationAcceleratorInstanceResponse {
  /// Name of the Application Accelerator instance.
  final pulumi.Input<String> name;
  /// Status of the Application Accelerator instance. It can be Pending, Running, Succeeded, Failed, Unknown.
  final pulumi.Input<String> status;

  /// Creates a new [ApplicationAcceleratorInstanceResponse].
  /// [name] Name of the Application Accelerator instance.
  /// [status] Status of the Application Accelerator instance. It can be Pending, Running, Succeeded, Failed, Unknown.
  ApplicationAcceleratorInstanceResponse({
    required this.name,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'status': status,
    };
  }

  factory ApplicationAcceleratorInstanceResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationAcceleratorInstanceResponse(
      name: (map['name'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

