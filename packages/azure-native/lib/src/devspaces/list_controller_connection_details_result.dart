// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'controller_connection_details_response.dart';

/// Result data returned by listControllerConnectionDetails.
class ListControllerConnectionDetailsResult {
  /// List of Azure Dev Spaces Controller connection details.
  final List<ControllerConnectionDetailsResponse>? connectionDetailsList;

  /// Creates a new [ListControllerConnectionDetailsResult].
  /// [connectionDetailsList] List of Azure Dev Spaces Controller connection details.
  ListControllerConnectionDetailsResult({
    this.connectionDetailsList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionDetailsList': ?connectionDetailsList == null ? null : pulumi.Input.encodeList<ControllerConnectionDetailsResponse, Map<String, dynamic>>(connectionDetailsList!, (value) => value.toMap()),
    };
  }

  factory ListControllerConnectionDetailsResult.fromMap(Map<String, dynamic> map) {
    return ListControllerConnectionDetailsResult(
      connectionDetailsList: map['connectionDetailsList'] == null ? null : pulumi.Input.decodeList<ControllerConnectionDetailsResponse>(map['connectionDetailsList'], (value) => ControllerConnectionDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

