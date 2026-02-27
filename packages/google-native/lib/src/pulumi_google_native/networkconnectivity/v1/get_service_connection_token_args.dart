// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getServiceConnectionToken.
class GetServiceConnectionTokenArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> serviceConnectionTokenId;

  GetServiceConnectionTokenArgs({
    required this.location,
    this.project,
    required this.serviceConnectionTokenId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceConnectionTokenId'] = serviceConnectionTokenId;
    return map;
  }

  factory GetServiceConnectionTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceConnectionTokenArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceConnectionTokenId:
          Input.asInput<String>(map['serviceConnectionTokenId']),
    );
  }
}
