// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Route policy statement condition properties.
class StatementConditionProperties {
  /// List of IP Community resource IDs.
  final pulumi.Input<List<String>>? ipCommunityIds;
  /// List of IP Extended Community resource IDs.
  final pulumi.Input<List<String>>? ipExtendedCommunityIds;
  /// Arm Resource Id of IpPrefix.
  final pulumi.Input<String>? ipPrefixId;
  /// Type of the condition used.
  final pulumi.Input<String>? type;

  /// Creates a new [StatementConditionProperties].
  /// [ipCommunityIds] List of IP Community resource IDs.
  /// [ipExtendedCommunityIds] List of IP Extended Community resource IDs.
  /// [ipPrefixId] Arm Resource Id of IpPrefix.
  /// [type] Type of the condition used.
  StatementConditionProperties({
    this.ipCommunityIds,
    this.ipExtendedCommunityIds,
    this.ipPrefixId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipCommunityIds': ?ipCommunityIds,
      'ipExtendedCommunityIds': ?ipExtendedCommunityIds,
      'ipPrefixId': ?ipPrefixId,
      'type': ?type,
    };
  }

  factory StatementConditionProperties.fromMap(Map<String, dynamic> map) {
    return StatementConditionProperties(
      ipCommunityIds: (() { final guardedValue = map['ipCommunityIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipExtendedCommunityIds: (() { final guardedValue = map['ipExtendedCommunityIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipPrefixId: (() { final guardedValue = map['ipPrefixId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

