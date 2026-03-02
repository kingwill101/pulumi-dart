// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_upgrade_node_image_selection.dart';

/// {@template pulumi_containerservice_auto_upgrade_profile_args_doc}
/// The set of arguments for AutoUpgradeProfile.
/// {@endtemplate}
/// {@macro pulumi_containerservice_auto_upgrade_profile_args_doc}
class AutoUpgradeProfileArgs {
  /// The name of the AutoUpgradeProfile resource.
  final pulumi.Input<String>? autoUpgradeProfileName;
  /// Configures how auto-upgrade will be run.
  final pulumi.Input<String> channel;
  /// If set to False: the auto upgrade has effect - target managed clusters will be upgraded on schedule.
  /// If set to True: the auto upgrade has no effect - no upgrade will be run on the target managed clusters.
  /// This is a boolean and not an enum because enabled/disabled are all available states of the auto upgrade profile.
  /// By default, this is set to False.
  final pulumi.Input<bool>? disabled;
  /// The name of the Fleet resource.
  final pulumi.Input<String> fleetName;
  /// The node image upgrade to be applied to the target clusters in auto upgrade.
  final pulumi.Input<AutoUpgradeNodeImageSelection>? nodeImageSelection;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource id of the UpdateStrategy resource to reference. If not specified, the auto upgrade will run on all clusters which are members of the fleet.
  final pulumi.Input<String>? updateStrategyId;

  /// Creates a new [AutoUpgradeProfileArgs].
  /// [autoUpgradeProfileName] The name of the AutoUpgradeProfile resource.
  /// [channel] Configures how auto-upgrade will be run.
  /// [disabled] If set to False: the auto upgrade has effect - target managed clusters will be upgraded on schedule.
  /// [fleetName] The name of the Fleet resource.
  /// [nodeImageSelection] The node image upgrade to be applied to the target clusters in auto upgrade.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [updateStrategyId] The resource id of the UpdateStrategy resource to reference. If not specified, the auto upgrade will run on all clusters which are members of the fleet.
  AutoUpgradeProfileArgs({
    this.autoUpgradeProfileName,
    required this.channel,
    this.disabled,
    required this.fleetName,
    this.nodeImageSelection,
    required this.resourceGroupName,
    this.updateStrategyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeProfileName': ?autoUpgradeProfileName,
      'channel': channel,
      'disabled': ?disabled,
      'fleetName': fleetName,
      'nodeImageSelection': ?pulumi.Input.mapOptionalInputValue<AutoUpgradeNodeImageSelection, Map<String, dynamic>>(nodeImageSelection, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'updateStrategyId': ?updateStrategyId,
    };
  }

  factory AutoUpgradeProfileArgs.fromMap(Map<String, dynamic> map) {
    return AutoUpgradeProfileArgs(
      autoUpgradeProfileName: map['autoUpgradeProfileName'] == null ? null : (map['autoUpgradeProfileName'] as String).input(),
      channel: (map['channel'] as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      fleetName: (map['fleetName'] as String).input(),
      nodeImageSelection: map['nodeImageSelection'] == null ? null : (AutoUpgradeNodeImageSelection.fromMap((map['nodeImageSelection'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      updateStrategyId: map['updateStrategyId'] == null ? null : (map['updateStrategyId'] as String).input(),
    );
  }
}

