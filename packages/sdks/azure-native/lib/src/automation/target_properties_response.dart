// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_query_properties_response.dart';
import 'non_azure_query_properties_response.dart';

/// Group specific to the update configuration.
class TargetPropertiesResponse {
  /// List of Azure queries in the software update configuration.
  final List<AzureQueryPropertiesResponse>? azureQueries;
  /// List of non Azure queries in the software update configuration.
  final List<NonAzureQueryPropertiesResponse>? nonAzureQueries;

  /// Creates a new [TargetPropertiesResponse].
  /// [azureQueries] List of Azure queries in the software update configuration.
  /// [nonAzureQueries] List of non Azure queries in the software update configuration.
  TargetPropertiesResponse({
    this.azureQueries,
    this.nonAzureQueries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureQueries': ?azureQueries == null ? null : pulumi.Input.encodeList<AzureQueryPropertiesResponse, Map<String, dynamic>>(azureQueries!, (value) => value.toMap()),
      'nonAzureQueries': ?nonAzureQueries == null ? null : pulumi.Input.encodeList<NonAzureQueryPropertiesResponse, Map<String, dynamic>>(nonAzureQueries!, (value) => value.toMap()),
    };
  }

  factory TargetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TargetPropertiesResponse(
      azureQueries: map['azureQueries'] == null ? null : pulumi.Input.decodeList<AzureQueryPropertiesResponse>(map['azureQueries'], (value) => AzureQueryPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      nonAzureQueries: map['nonAzureQueries'] == null ? null : pulumi.Input.decodeList<NonAzureQueryPropertiesResponse>(map['nonAzureQueries'], (value) => NonAzureQueryPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

