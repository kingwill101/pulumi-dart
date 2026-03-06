// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sls_group_sls_group_config.dart';

/// Input properties used for looking up and filtering SlsGroup resources.
class SlsGroupState {
  /// The Config of the Sls Group. You can specify up to 25 Config. See `sls_group_config` below.
  final pulumi.Input<List<SlsGroupSlsGroupConfig>>? slsGroupConfigs;
  /// The Description of the Sls Group.
  final pulumi.Input<String>? slsGroupDescription;
  /// The name of the resource. The name must be `2` to `32` characters in length, and can contain letters, digits and underscores (_). It must start with a letter.
  final pulumi.Input<String>? slsGroupName;

  /// Creates a new [SlsGroupState].
  /// [slsGroupConfigs] The Config of the Sls Group. You can specify up to 25 Config. See `sls_group_config` below.
  /// [slsGroupDescription] The Description of the Sls Group.
  /// [slsGroupName] The name of the resource. The name must be `2` to `32` characters in length, and can contain letters, digits and underscores (_). It must start with a letter.
  const SlsGroupState({
    this.slsGroupConfigs,
    this.slsGroupDescription,
    this.slsGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slsGroupConfigs': ?pulumi.Input.mapOptionalInputValue<List<SlsGroupSlsGroupConfig>, List<Map<String, dynamic>>>(slsGroupConfigs, (value) => pulumi.Input.encodeList<SlsGroupSlsGroupConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'slsGroupDescription': ?slsGroupDescription,
      'slsGroupName': ?slsGroupName,
    };
  }

  factory SlsGroupState.fromMap(Map<String, dynamic> map) {
    return SlsGroupState(
      slsGroupConfigs: (() { final guardedValue = map['slsGroupConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SlsGroupSlsGroupConfig>(guardedValue, (value) => SlsGroupSlsGroupConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      slsGroupDescription: (() { final guardedValue = map['slsGroupDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slsGroupName: (() { final guardedValue = map['slsGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

