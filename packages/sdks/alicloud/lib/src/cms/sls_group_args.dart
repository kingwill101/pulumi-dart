// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sls_group_sls_group_config.dart';

/// {@template pulumi_cms_sls_group_sls_group_args_doc}
/// The set of arguments for SlsGroup.
/// {@endtemplate}
/// {@macro pulumi_cms_sls_group_sls_group_args_doc}
class SlsGroupArgs {
  /// The Config of the Sls Group. You can specify up to 25 Config. See `sls_group_config` below.
  final pulumi.Input<List<SlsGroupSlsGroupConfig>> slsGroupConfigs;
  /// The Description of the Sls Group.
  final pulumi.Input<String>? slsGroupDescription;
  /// The name of the resource. The name must be `2` to `32` characters in length, and can contain letters, digits and underscores (_). It must start with a letter.
  final pulumi.Input<String> slsGroupName;

  /// Creates a new [SlsGroupArgs].
  /// [slsGroupConfigs] The Config of the Sls Group. You can specify up to 25 Config. See `sls_group_config` below.
  /// [slsGroupDescription] The Description of the Sls Group.
  /// [slsGroupName] The name of the resource. The name must be `2` to `32` characters in length, and can contain letters, digits and underscores (_). It must start with a letter.
  const SlsGroupArgs({
    required this.slsGroupConfigs,
    this.slsGroupDescription,
    required this.slsGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slsGroupConfigs': pulumi.Input.mapInputValue<List<SlsGroupSlsGroupConfig>, List<Map<String, dynamic>>>(slsGroupConfigs, (value) => pulumi.Input.encodeList<SlsGroupSlsGroupConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'slsGroupDescription': ?slsGroupDescription,
      'slsGroupName': slsGroupName,
    };
  }

  factory SlsGroupArgs.fromMap(Map<String, dynamic> map) {
    return SlsGroupArgs(
      slsGroupConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<SlsGroupSlsGroupConfig>(map['slsGroupConfigs']!, (value) => SlsGroupSlsGroupConfig.fromMap((value as Map).cast<String, dynamic>()))),
      slsGroupDescription: (() { final guardedValue = map['slsGroupDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slsGroupName: pulumi.Input.fromValue(map['slsGroupName'] as String),
    );
  }
}

