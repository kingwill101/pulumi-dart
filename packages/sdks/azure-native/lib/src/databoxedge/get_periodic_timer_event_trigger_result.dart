// ignore_for_file: unused_element, unnecessary_cast

import 'periodic_timer_source_info_response.dart';
import 'role_sink_info_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPeriodicTimerEventTrigger.
class GetPeriodicTimerEventTriggerResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A custom context tag typically used to correlate the trigger against its usage. For example, if a periodic timer trigger is intended for certain specific IoT modules in the device, the tag can be the name or the image URL of the module.
  final String? customContextTag;
  /// The path ID that uniquely identifies the object.
  final String? id;
  /// Trigger Kind.
  /// Expected value is 'PeriodicTimerEvent'.
  final String? kind;
  /// The object name.
  final String? name;
  /// Role Sink information.
  final RoleSinkInfoResponse? sinkInfo;
  /// Periodic timer details.
  final PeriodicTimerSourceInfoResponse? sourceInfo;
  /// Metadata pertaining to creation and last modification of Trigger
  final SystemDataResponse? systemData;
  /// The hierarchical type of the object.
  final String? type;

  /// Creates a new [GetPeriodicTimerEventTriggerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customContextTag] A custom context tag typically used to correlate the trigger against its usage. For example, if a periodic timer trigger is intended for certain specific IoT modules in the device, the tag can be the name or the image URL of the module.
  /// [id] The path ID that uniquely identifies the object.
  /// [kind] Trigger Kind.
  /// [name] The object name.
  /// [sinkInfo] Role Sink information.
  /// [sourceInfo] Periodic timer details.
  /// [systemData] Metadata pertaining to creation and last modification of Trigger
  /// [type] The hierarchical type of the object.
  const GetPeriodicTimerEventTriggerResult({
    this.azureApiVersion,
    this.customContextTag,
    this.id,
    this.kind,
    this.name,
    this.sinkInfo,
    this.sourceInfo,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'customContextTag': ?customContextTag,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'sinkInfo': ?sinkInfo?.toMap(),
      'sourceInfo': ?sourceInfo?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetPeriodicTimerEventTriggerResult.fromMap(Map<String, dynamic> map) {
    return GetPeriodicTimerEventTriggerResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customContextTag: (() { final guardedValue = map['customContextTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sinkInfo: (() { final guardedValue = map['sinkInfo']; if (guardedValue == null) return null; return RoleSinkInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sourceInfo: (() { final guardedValue = map['sourceInfo']; if (guardedValue == null) return null; return PeriodicTimerSourceInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
