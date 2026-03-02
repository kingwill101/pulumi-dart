// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_record_response.dart';

/// Result data returned by listOrganizationRegions.
class ListOrganizationRegionsResult {
  /// List of regions supported by confluent
  final List<RegionRecordResponse>? data;

  /// Creates a new [ListOrganizationRegionsResult].
  /// [data] List of regions supported by confluent
  ListOrganizationRegionsResult({
    this.data,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data == null ? null : pulumi.Input.encodeList<RegionRecordResponse, Map<String, dynamic>>(data!, (value) => value.toMap()),
    };
  }

  factory ListOrganizationRegionsResult.fromMap(Map<String, dynamic> map) {
    return ListOrganizationRegionsResult(
      data: map['data'] == null ? null : pulumi.Input.decodeList<RegionRecordResponse>(map['data']!, (value) => RegionRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

