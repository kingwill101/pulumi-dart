// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rosetta_net_pip_activity_settings.dart';
import 'rosetta_net_pip_role_settings.dart';

/// {@template pulumi_logic_rosetta_net_process_configuration_args_doc}
/// The set of arguments for RosettaNetProcessConfiguration.
/// {@endtemplate}
/// {@macro pulumi_logic_rosetta_net_process_configuration_args_doc}
class RosettaNetProcessConfigurationArgs {
  /// The RosettaNet process configuration activity settings.
  final pulumi.Input<RosettaNetPipActivitySettings> activitySettings;
  /// The integration account RosettaNet ProcessConfiguration properties.
  final pulumi.Input<String?>? description;
  /// The RosettaNet initiator role settings.
  final pulumi.Input<RosettaNetPipRoleSettings> initiatorRoleSettings;
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The resource location.
  final pulumi.Input<String?>? location;
  /// The metadata.
  final pulumi.Input<Map<String, String>?>? metadata;
  /// The integration account RosettaNet process code.
  final pulumi.Input<String> processCode;
  /// The integration account RosettaNet process name.
  final pulumi.Input<String> processName;
  /// The integration account RosettaNet process version.
  final pulumi.Input<String> processVersion;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The RosettaNet responder role settings.
  final pulumi.Input<RosettaNetPipRoleSettings> responderRoleSettings;
  /// The integration account RosettaNet ProcessConfiguration name.
  final pulumi.Input<String?>? rosettaNetProcessConfigurationName;
  /// The resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [RosettaNetProcessConfigurationArgs].
  /// [activitySettings] The RosettaNet process configuration activity settings.
  /// [description] The integration account RosettaNet ProcessConfiguration properties.
  /// [initiatorRoleSettings] The RosettaNet initiator role settings.
  /// [integrationAccountName] The integration account name.
  /// [location] The resource location.
  /// [metadata] The metadata.
  /// [processCode] The integration account RosettaNet process code.
  /// [processName] The integration account RosettaNet process name.
  /// [processVersion] The integration account RosettaNet process version.
  /// [resourceGroupName] The resource group name.
  /// [responderRoleSettings] The RosettaNet responder role settings.
  /// [rosettaNetProcessConfigurationName] The integration account RosettaNet ProcessConfiguration name.
  /// [tags] The resource tags.
  const RosettaNetProcessConfigurationArgs({
    required this.activitySettings,
    this.description,
    required this.initiatorRoleSettings,
    required this.integrationAccountName,
    this.location,
    this.metadata,
    required this.processCode,
    required this.processName,
    required this.processVersion,
    required this.resourceGroupName,
    required this.responderRoleSettings,
    this.rosettaNetProcessConfigurationName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activitySettings': pulumi.Input.mapInputValue<RosettaNetPipActivitySettings, Map<String, dynamic>>(activitySettings, (value) => value.toMap()),
      'description': ?description,
      'initiatorRoleSettings': pulumi.Input.mapInputValue<RosettaNetPipRoleSettings, Map<String, dynamic>>(initiatorRoleSettings, (value) => value.toMap()),
      'integrationAccountName': integrationAccountName,
      'location': ?location,
      'metadata': ?metadata,
      'processCode': processCode,
      'processName': processName,
      'processVersion': processVersion,
      'resourceGroupName': resourceGroupName,
      'responderRoleSettings': pulumi.Input.mapInputValue<RosettaNetPipRoleSettings, Map<String, dynamic>>(responderRoleSettings, (value) => value.toMap()),
      'rosettaNetProcessConfigurationName': ?rosettaNetProcessConfigurationName,
      'tags': ?tags,
    };
  }

  factory RosettaNetProcessConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return RosettaNetProcessConfigurationArgs(
      activitySettings: pulumi.Input.fromValue(RosettaNetPipActivitySettings.fromMap((map['activitySettings']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initiatorRoleSettings: pulumi.Input.fromValue(RosettaNetPipRoleSettings.fromMap((map['initiatorRoleSettings']! as Map).cast<String, dynamic>())),
      integrationAccountName: pulumi.Input.fromValue(map['integrationAccountName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      processCode: pulumi.Input.fromValue(map['processCode'] as String),
      processName: pulumi.Input.fromValue(map['processName'] as String),
      processVersion: pulumi.Input.fromValue(map['processVersion'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      responderRoleSettings: pulumi.Input.fromValue(RosettaNetPipRoleSettings.fromMap((map['responderRoleSettings']! as Map).cast<String, dynamic>())),
      rosettaNetProcessConfigurationName: (() { final guardedValue = map['rosettaNetProcessConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
