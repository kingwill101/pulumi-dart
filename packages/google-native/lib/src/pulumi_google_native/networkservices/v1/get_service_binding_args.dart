// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getServiceBinding.
class GetServiceBindingArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> serviceBindingId;

  GetServiceBindingArgs({
    required this.location,
    this.project,
    required this.serviceBindingId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceBindingId'] = serviceBindingId;
    return map;
  }

  factory GetServiceBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceBindingArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceBindingId: Input.asInput<String>(map['serviceBindingId']),
    );
  }
}
