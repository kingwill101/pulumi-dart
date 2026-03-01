// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_query_properties.dart';
import 'non_azure_query_properties.dart';

/// Group specific to the update configuration.
class TargetProperties {
  /// List of Azure queries in the software update configuration.
  final List<AzureQueryProperties>? azureQueries;
  /// List of non Azure queries in the software update configuration.
  final List<NonAzureQueryProperties>? nonAzureQueries;

  /// Creates a new [TargetProperties].
  /// [azureQueries] List of Azure queries in the software update configuration.
  /// [nonAzureQueries] List of non Azure queries in the software update configuration.
  TargetProperties({
    this.azureQueries,
    this.nonAzureQueries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureQueries': ?azureQueries == null ? null : pulumi.Input.encodeList<AzureQueryProperties, Map<String, dynamic>>(azureQueries!, (value) => value.toMap()),
      'nonAzureQueries': ?nonAzureQueries == null ? null : pulumi.Input.encodeList<NonAzureQueryProperties, Map<String, dynamic>>(nonAzureQueries!, (value) => value.toMap()),
    };
  }

  factory TargetProperties.fromMap(Map<String, dynamic> map) {
    return TargetProperties(
      azureQueries: map['azureQueries'] == null ? null : pulumi.Input.decodeList<AzureQueryProperties>(map['azureQueries'], (value) => AzureQueryProperties.fromMap((value as Map).cast<String, dynamic>())),
      nonAzureQueries: map['nonAzureQueries'] == null ? null : pulumi.Input.decodeList<NonAzureQueryProperties>(map['nonAzureQueries'], (value) => NonAzureQueryProperties.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

