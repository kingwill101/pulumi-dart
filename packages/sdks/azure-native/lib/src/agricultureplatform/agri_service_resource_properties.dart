// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_connector_credential_map.dart';
import 'installed_solution_map.dart';

/// Details of the Agriculture AgriDataManager.
class AgriServiceResourceProperties {
  /// Data connector credentials of AgriService instance.
  final pulumi.Input<List<DataConnectorCredentialMap>>? dataConnectorCredentials;
  /// AgriService installed solutions.
  final pulumi.Input<List<InstalledSolutionMap>>? installedSolutions;

  /// Creates a new [AgriServiceResourceProperties].
  /// [dataConnectorCredentials] Data connector credentials of AgriService instance.
  /// [installedSolutions] AgriService installed solutions.
  AgriServiceResourceProperties({
    this.dataConnectorCredentials,
    this.installedSolutions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataConnectorCredentials': ?pulumi.Input.mapOptionalInputValue<List<DataConnectorCredentialMap>, List<Map<String, dynamic>>>(dataConnectorCredentials, (value) => pulumi.Input.encodeList<DataConnectorCredentialMap, Map<String, dynamic>>(value, (value) => value.toMap())),
      'installedSolutions': ?pulumi.Input.mapOptionalInputValue<List<InstalledSolutionMap>, List<Map<String, dynamic>>>(installedSolutions, (value) => pulumi.Input.encodeList<InstalledSolutionMap, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgriServiceResourceProperties.fromMap(Map<String, dynamic> map) {
    return AgriServiceResourceProperties(
      dataConnectorCredentials: map['dataConnectorCredentials'] == null ? null : (pulumi.Input.decodeList<DataConnectorCredentialMap>(map['dataConnectorCredentials']!, (value) => DataConnectorCredentialMap.fromMap((value as Map).cast<String, dynamic>()))).input(),
      installedSolutions: map['installedSolutions'] == null ? null : (pulumi.Input.decodeList<InstalledSolutionMap>(map['installedSolutions']!, (value) => InstalledSolutionMap.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

