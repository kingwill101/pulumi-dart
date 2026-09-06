// ignore_for_file: unused_element, unnecessary_cast

import 'archive_package_source_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getArchife.
class GetArchifeResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The resource ID.
  final String? id;
  /// The name of the resource.
  final String? name;
  /// The package source of the archive.
  final ArchivePackageSourcePropertiesResponse? packageSource;
  /// The provisioning state of the archive at the time the operation was called.
  final String? provisioningState;
  /// The published version of the archive.
  final String? publishedVersion;
  final String? repositoryEndpoint;
  final String? repositoryEndpointPrefix;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// The type of the resource.
  final String? type;

  /// Creates a new [GetArchifeResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource ID.
  /// [name] The name of the resource.
  /// [packageSource] The package source of the archive.
  /// [provisioningState] The provisioning state of the archive at the time the operation was called.
  /// [publishedVersion] The published version of the archive.
  /// [repositoryEndpoint] Optional.
  /// [repositoryEndpointPrefix] Optional.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The type of the resource.
  const GetArchifeResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.packageSource,
    this.provisioningState,
    this.publishedVersion,
    this.repositoryEndpoint,
    this.repositoryEndpointPrefix,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'packageSource': ?packageSource?.toMap(),
      'provisioningState': ?provisioningState,
      'publishedVersion': ?publishedVersion,
      'repositoryEndpoint': ?repositoryEndpoint,
      'repositoryEndpointPrefix': ?repositoryEndpointPrefix,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetArchifeResult.fromMap(Map<String, dynamic> map) {
    return GetArchifeResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      packageSource: (() { final guardedValue = map['packageSource']; if (guardedValue == null) return null; return ArchivePackageSourcePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publishedVersion: (() { final guardedValue = map['publishedVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryEndpoint: (() { final guardedValue = map['repositoryEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryEndpointPrefix: (() { final guardedValue = map['repositoryEndpointPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
