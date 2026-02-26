// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getManagementServer.
class GetManagementServerArgs {
  final Input<String> location;

  GetManagementServerArgs({
    required this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    return map;
  }

  factory GetManagementServerArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementServerArgs(
      location: Input.asInput<String>(map['location']),
    );
  }
}
