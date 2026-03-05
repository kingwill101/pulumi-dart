// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_query_properties_response.dart';
import 'non_azure_query_properties_response.dart';

/// Group specific to the update configuration.
class TargetPropertiesResponse {
  /// List of Azure queries in the software update configuration.
  final pulumi.Input<List<AzureQueryPropertiesResponse>>? azureQueries;
  /// List of non Azure queries in the software update configuration.
  final pulumi.Input<List<NonAzureQueryPropertiesResponse>>? nonAzureQueries;

  /// Creates a new [TargetPropertiesResponse].
  /// [azureQueries] List of Azure queries in the software update configuration.
  /// [nonAzureQueries] List of non Azure queries in the software update configuration.
  TargetPropertiesResponse({
    this.azureQueries,
    this.nonAzureQueries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureQueries': ?pulumi.Input.mapOptionalInputValue<List<AzureQueryPropertiesResponse>, List<Map<String, dynamic>>>(azureQueries, (value) => pulumi.Input.encodeList<AzureQueryPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nonAzureQueries': ?pulumi.Input.mapOptionalInputValue<List<NonAzureQueryPropertiesResponse>, List<Map<String, dynamic>>>(nonAzureQueries, (value) => pulumi.Input.encodeList<NonAzureQueryPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TargetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TargetPropertiesResponse(
      azureQueries: (() { final guardedValue = map['azureQueries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureQueryPropertiesResponse>(guardedValue, (value) => AzureQueryPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nonAzureQueries: (() { final guardedValue = map['nonAzureQueries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NonAzureQueryPropertiesResponse>(guardedValue, (value) => NonAzureQueryPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

