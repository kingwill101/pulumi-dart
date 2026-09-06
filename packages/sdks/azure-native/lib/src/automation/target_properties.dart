// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_query_properties.dart';
import 'non_azure_query_properties.dart';

/// Group specific to the update configuration.
class TargetProperties {
  /// List of Azure queries in the software update configuration.
  final pulumi.Input<List<AzureQueryProperties>?>? azureQueries;
  /// List of non Azure queries in the software update configuration.
  final pulumi.Input<List<NonAzureQueryProperties>?>? nonAzureQueries;

  /// Creates a new [TargetProperties].
  /// [azureQueries] List of Azure queries in the software update configuration.
  /// [nonAzureQueries] List of non Azure queries in the software update configuration.
  const TargetProperties({
    this.azureQueries,
    this.nonAzureQueries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureQueries': ?pulumi.Input.mapOptionalInputValue<List<AzureQueryProperties>, List<Map<String, dynamic>>>(azureQueries, (value) => pulumi.Input.encodeList<AzureQueryProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nonAzureQueries': ?pulumi.Input.mapOptionalInputValue<List<NonAzureQueryProperties>, List<Map<String, dynamic>>>(nonAzureQueries, (value) => pulumi.Input.encodeList<NonAzureQueryProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TargetProperties.fromMap(Map<String, dynamic> map) {
    return TargetProperties(
      azureQueries: (() { final guardedValue = map['azureQueries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureQueryProperties>(guardedValue, (value) => AzureQueryProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nonAzureQueries: (() { final guardedValue = map['nonAzureQueries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NonAzureQueryProperties>(guardedValue, (value) => NonAzureQueryProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
