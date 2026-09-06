// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recovery_group.dart';

/// Settings for the recovery orchestration groups.
class RecoveryGroupsSetting {
  /// Additional recovery orchestration group settings.
  final pulumi.Input<List<RecoveryGroup>?>? additionalGroups;
  /// The default recovery orchestration group setting. Every recovery orchestration plan has a default recovery orchestration group.
  final pulumi.Input<RecoveryGroup> defaultGroup;

  /// Creates a new [RecoveryGroupsSetting].
  /// [additionalGroups] Additional recovery orchestration group settings.
  /// [defaultGroup] The default recovery orchestration group setting. Every recovery orchestration plan has a default recovery orchestration group.
  const RecoveryGroupsSetting({
    this.additionalGroups,
    required this.defaultGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalGroups': ?pulumi.Input.mapOptionalInputValue<List<RecoveryGroup>, List<Map<String, dynamic>>>(additionalGroups, (value) => pulumi.Input.encodeList<RecoveryGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultGroup': pulumi.Input.mapInputValue<RecoveryGroup, Map<String, dynamic>>(defaultGroup, (value) => value.toMap()),
    };
  }

  factory RecoveryGroupsSetting.fromMap(Map<String, dynamic> map) {
    return RecoveryGroupsSetting(
      additionalGroups: (() { final guardedValue = map['additionalGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RecoveryGroup>(guardedValue, (value) => RecoveryGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultGroup: pulumi.Input.fromValue(RecoveryGroup.fromMap((map['defaultGroup']! as Map).cast<String, dynamic>())),
    );
  }
}
