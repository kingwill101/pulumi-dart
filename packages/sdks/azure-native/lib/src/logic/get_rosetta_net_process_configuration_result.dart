// ignore_for_file: unused_element, unnecessary_cast

import 'rosetta_net_pip_activity_settings_response.dart';
import 'rosetta_net_pip_role_settings_response.dart';

/// Result data returned by getRosettaNetProcessConfiguration.
class GetRosettaNetProcessConfigurationResult {
  /// The RosettaNet process configuration activity settings.
  final RosettaNetPipActivitySettingsResponse? activitySettings;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The changed time.
  final String? changedTime;
  /// The created time.
  final String? createdTime;
  /// The integration account RosettaNet ProcessConfiguration properties.
  final String? description;
  /// The resource id.
  final String? id;
  /// The RosettaNet initiator role settings.
  final RosettaNetPipRoleSettingsResponse? initiatorRoleSettings;
  /// The resource location.
  final String? location;
  /// The metadata.
  final Map<String, String>? metadata;
  /// Gets the resource name.
  final String? name;
  /// The integration account RosettaNet process code.
  final String? processCode;
  /// The integration account RosettaNet process name.
  final String? processName;
  /// The integration account RosettaNet process version.
  final String? processVersion;
  /// The RosettaNet responder role settings.
  final RosettaNetPipRoleSettingsResponse? responderRoleSettings;
  /// The resource tags.
  final Map<String, String>? tags;
  /// Gets the resource type.
  final String? type;

  /// Creates a new [GetRosettaNetProcessConfigurationResult].
  /// [activitySettings] The RosettaNet process configuration activity settings.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [changedTime] The changed time.
  /// [createdTime] The created time.
  /// [description] The integration account RosettaNet ProcessConfiguration properties.
  /// [id] The resource id.
  /// [initiatorRoleSettings] The RosettaNet initiator role settings.
  /// [location] The resource location.
  /// [metadata] The metadata.
  /// [name] Gets the resource name.
  /// [processCode] The integration account RosettaNet process code.
  /// [processName] The integration account RosettaNet process name.
  /// [processVersion] The integration account RosettaNet process version.
  /// [responderRoleSettings] The RosettaNet responder role settings.
  /// [tags] The resource tags.
  /// [type] Gets the resource type.
  const GetRosettaNetProcessConfigurationResult({
    this.activitySettings,
    this.azureApiVersion,
    this.changedTime,
    this.createdTime,
    this.description,
    this.id,
    this.initiatorRoleSettings,
    this.location,
    this.metadata,
    this.name,
    this.processCode,
    this.processName,
    this.processVersion,
    this.responderRoleSettings,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activitySettings': ?activitySettings?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'changedTime': ?changedTime,
      'createdTime': ?createdTime,
      'description': ?description,
      'id': ?id,
      'initiatorRoleSettings': ?initiatorRoleSettings?.toMap(),
      'location': ?location,
      'metadata': ?metadata,
      'name': ?name,
      'processCode': ?processCode,
      'processName': ?processName,
      'processVersion': ?processVersion,
      'responderRoleSettings': ?responderRoleSettings?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetRosettaNetProcessConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetRosettaNetProcessConfigurationResult(
      activitySettings: (() { final guardedValue = map['activitySettings']; if (guardedValue == null) return null; return RosettaNetPipActivitySettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      changedTime: (() { final guardedValue = map['changedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      initiatorRoleSettings: (() { final guardedValue = map['initiatorRoleSettings']; if (guardedValue == null) return null; return RosettaNetPipRoleSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      processCode: (() { final guardedValue = map['processCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      processName: (() { final guardedValue = map['processName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      processVersion: (() { final guardedValue = map['processVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      responderRoleSettings: (() { final guardedValue = map['responderRoleSettings']; if (guardedValue == null) return null; return RosettaNetPipRoleSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
