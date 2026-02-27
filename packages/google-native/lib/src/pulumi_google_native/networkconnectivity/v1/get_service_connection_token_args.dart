// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServiceConnectionToken.
class GetServiceConnectionTokenArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceConnectionTokenId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceConnectionTokenId:
          pulumi.Input.asInput<String>(map['serviceConnectionTokenId']),
    );
  }
}
