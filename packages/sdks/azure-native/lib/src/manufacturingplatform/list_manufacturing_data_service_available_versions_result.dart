// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_version_response.dart';

/// Result data returned by listManufacturingDataServiceAvailableVersions.
class ListManufacturingDataServiceAvailableVersionsResult {
  /// The list of versions
  final List<ApplicationVersionResponse>? versions;

  /// Creates a new [ListManufacturingDataServiceAvailableVersionsResult].
  /// [versions] The list of versions
  const ListManufacturingDataServiceAvailableVersionsResult({
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'versions': ?(() { final guardedValue = versions; if (guardedValue == null) return null; return pulumi.Input.encodeList<ApplicationVersionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListManufacturingDataServiceAvailableVersionsResult.fromMap(Map<String, dynamic> map) {
    return ListManufacturingDataServiceAvailableVersionsResult(
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationVersionResponse>(guardedValue, (value) => ApplicationVersionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
