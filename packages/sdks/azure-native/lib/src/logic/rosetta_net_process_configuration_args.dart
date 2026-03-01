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
  final pulumi.Input<String>? description;
  /// The RosettaNet initiator role settings.
  final pulumi.Input<RosettaNetPipRoleSettings> initiatorRoleSettings;
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The metadata.
  final pulumi.Input<Map<String, String>>? metadata;
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
  final pulumi.Input<String>? rosettaNetProcessConfigurationName;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;

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
  RosettaNetProcessConfigurationArgs({
    required pulumi.Output<RosettaNetPipActivitySettings> activitySettings,
    pulumi.Output<String>? description,
    required pulumi.Output<RosettaNetPipRoleSettings> initiatorRoleSettings,
    required pulumi.Output<String> integrationAccountName,
    pulumi.Output<String>? location,
    pulumi.Output<Map<String, String>>? metadata,
    required pulumi.Output<String> processCode,
    required pulumi.Output<String> processName,
    required pulumi.Output<String> processVersion,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<RosettaNetPipRoleSettings> responderRoleSettings,
    pulumi.Output<String>? rosettaNetProcessConfigurationName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      activitySettings = pulumi.Input.asInput<RosettaNetPipActivitySettings>(activitySettings),
      description = pulumi.Input.asOptionalInput<String>(description),
      initiatorRoleSettings = pulumi.Input.asInput<RosettaNetPipRoleSettings>(initiatorRoleSettings),
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      location = pulumi.Input.asOptionalInput<String>(location),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      processCode = pulumi.Input.asInput<String>(processCode),
      processName = pulumi.Input.asInput<String>(processName),
      processVersion = pulumi.Input.asInput<String>(processVersion),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      responderRoleSettings = pulumi.Input.asInput<RosettaNetPipRoleSettings>(responderRoleSettings),
      rosettaNetProcessConfigurationName = pulumi.Input.asOptionalInput<String>(rosettaNetProcessConfigurationName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      activitySettings: pulumi.Output.create<RosettaNetPipActivitySettings>(RosettaNetPipActivitySettings.fromMap((map['activitySettings'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      initiatorRoleSettings: pulumi.Output.create<RosettaNetPipRoleSettings>(RosettaNetPipRoleSettings.fromMap((map['initiatorRoleSettings'] as Map).cast<String, dynamic>())),
      integrationAccountName: pulumi.Output.create<String>(map['integrationAccountName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      processCode: pulumi.Output.create<String>(map['processCode'] as String),
      processName: pulumi.Output.create<String>(map['processName'] as String),
      processVersion: pulumi.Output.create<String>(map['processVersion'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      responderRoleSettings: pulumi.Output.create<RosettaNetPipRoleSettings>(RosettaNetPipRoleSettings.fromMap((map['responderRoleSettings'] as Map).cast<String, dynamic>())),
      rosettaNetProcessConfigurationName: map['rosettaNetProcessConfigurationName'] == null ? null : pulumi.Output.create<String>(map['rosettaNetProcessConfigurationName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

