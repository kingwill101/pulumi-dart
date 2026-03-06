// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_version_response.dart';

/// Result data returned by listManufacturingDataServiceAvailableVersions.
class ListManufacturingDataServiceAvailableVersionsResult {
  /// The list of versions
  final List<ApplicationVersionResponse> versions;

  /// Creates a new [ListManufacturingDataServiceAvailableVersionsResult].
  /// [versions] The list of versions
  const ListManufacturingDataServiceAvailableVersionsResult({
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'versions': pulumi.Input.encodeList<ApplicationVersionResponse, Map<String, dynamic>>(versions, (value) => value.toMap()),
    };
  }

  factory ListManufacturingDataServiceAvailableVersionsResult.fromMap(Map<String, dynamic> map) {
    return ListManufacturingDataServiceAvailableVersionsResult(
      versions: pulumi.Input.decodeList<ApplicationVersionResponse>(map['versions']!, (value) => ApplicationVersionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

