// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConnection.
class GetConnectionConnectorsV1Args {
  final pulumi.Input<String> connectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  GetConnectionConnectorsV1Args({
    required this.connectionId,
    required this.location,
    this.project,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionId'] = connectionId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetConnectionConnectorsV1Args.fromMap(Map<String, dynamic> map) {
    return GetConnectionConnectorsV1Args(
      connectionId: pulumi.Input.asInput<String>(map['connectionId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
    );
  }
}
