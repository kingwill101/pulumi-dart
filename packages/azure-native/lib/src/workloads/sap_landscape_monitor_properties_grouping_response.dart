// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sap_landscape_monitor_sid_mapping_response.dart';

/// Gets or sets the SID groupings by landscape and Environment.
class SapLandscapeMonitorPropertiesGroupingResponse {
  /// Gets or sets the list of landscape to SID mappings.
  final List<SapLandscapeMonitorSidMappingResponse>? landscape;
  /// Gets or sets the list of Sap Applications to SID mappings.
  final List<SapLandscapeMonitorSidMappingResponse>? sapApplication;

  /// Creates a new [SapLandscapeMonitorPropertiesGroupingResponse].
  /// [landscape] Gets or sets the list of landscape to SID mappings.
  /// [sapApplication] Gets or sets the list of Sap Applications to SID mappings.
  SapLandscapeMonitorPropertiesGroupingResponse({
    this.landscape,
    this.sapApplication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'landscape': ?landscape == null ? null : pulumi.Input.encodeList<SapLandscapeMonitorSidMappingResponse, Map<String, dynamic>>(landscape!, (value) => value.toMap()),
      'sapApplication': ?sapApplication == null ? null : pulumi.Input.encodeList<SapLandscapeMonitorSidMappingResponse, Map<String, dynamic>>(sapApplication!, (value) => value.toMap()),
    };
  }

  factory SapLandscapeMonitorPropertiesGroupingResponse.fromMap(Map<String, dynamic> map) {
    return SapLandscapeMonitorPropertiesGroupingResponse(
      landscape: map['landscape'] == null ? null : pulumi.Input.decodeList<SapLandscapeMonitorSidMappingResponse>(map['landscape'], (value) => SapLandscapeMonitorSidMappingResponse.fromMap((value as Map).cast<String, dynamic>())),
      sapApplication: map['sapApplication'] == null ? null : pulumi.Input.decodeList<SapLandscapeMonitorSidMappingResponse>(map['sapApplication'], (value) => SapLandscapeMonitorSidMappingResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

