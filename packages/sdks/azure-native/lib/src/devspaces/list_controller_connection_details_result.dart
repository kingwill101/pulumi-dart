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
      'connectionDetailsList': ?(() { final guardedValue = connectionDetailsList; if (guardedValue == null) return null; return pulumi.Input.encodeList<ControllerConnectionDetailsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListControllerConnectionDetailsResult.fromMap(Map<String, dynamic> map) {
    return ListControllerConnectionDetailsResult(
      connectionDetailsList: (() { final guardedValue = map['connectionDetailsList']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ControllerConnectionDetailsResponse>(guardedValue, (value) => ControllerConnectionDetailsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

