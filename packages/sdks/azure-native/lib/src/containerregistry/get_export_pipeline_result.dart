// ignore_for_file: unused_element, unnecessary_cast

import 'export_pipeline_target_properties_response.dart';
import 'identity_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getExportPipeline.
class GetExportPipelineResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The resource ID.
  final String? id;
  /// The identity of the export pipeline.
  final IdentityPropertiesResponse? identity;
  /// The location of the export pipeline.
  final String? location;
  /// The name of the resource.
  final String? name;
  /// The list of all options configured for the pipeline.
  final List<String>? options;
  /// The provisioning state of the pipeline at the time the operation was called.
  final String? provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// The target properties of the export pipeline.
  final ExportPipelineTargetPropertiesResponse? target;
  /// The type of the resource.
  final String? type;

  /// Creates a new [GetExportPipelineResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource ID.
  /// [identity] The identity of the export pipeline.
  /// [location] The location of the export pipeline.
  /// [name] The name of the resource.
  /// [options] The list of all options configured for the pipeline.
  /// [provisioningState] The provisioning state of the pipeline at the time the operation was called.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [target] The target properties of the export pipeline.
  /// [type] The type of the resource.
  const GetExportPipelineResult({
    this.azureApiVersion,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.options,
    this.provisioningState,
    this.systemData,
    this.target,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': ?name,
      'options': ?options,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'target': ?target?.toMap(),
      'type': ?type,
    };
  }

  factory GetExportPipelineResult.fromMap(Map<String, dynamic> map) {
    return GetExportPipelineResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return ExportPipelineTargetPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
