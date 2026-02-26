// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDataSourceReference.
class GetDataSourceReferenceArgs {
  /// - (Required) The id of the data source reference.
  final Input<String> dataSourceReferenceId;
  final Input<String> location;

  /// - (Optional) The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final Input<String>? project;

  GetDataSourceReferenceArgs({
    required this.dataSourceReferenceId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataSourceReferenceId'] = dataSourceReferenceId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDataSourceReferenceArgs.fromMap(Map<String, dynamic> map) {
    return GetDataSourceReferenceArgs(
      dataSourceReferenceId:
          Input.asInput<String>(map['dataSourceReferenceId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
