// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the recovery orchestration group.
class RecoveryGroupProperties {
  /// A description of the recovery orchestration group.
  final pulumi.Input<String> description;
  /// A unique id for the recovery orchestration group, which is a GUID.
  final pulumi.Input<String> groupUniqueId;
  /// The order ID of the recovery orchestration group.
  final pulumi.Input<int> orderId;
  /// Post-actions for the recovery orchestration group.
  final pulumi.Input<List<dynamic>?>? postActions;
  /// Pre-actions for the recovery orchestration group.
  final pulumi.Input<List<dynamic>?>? preActions;

  /// Creates a new [RecoveryGroupProperties].
  /// [description] A description of the recovery orchestration group.
  /// [groupUniqueId] A unique id for the recovery orchestration group, which is a GUID.
  /// [orderId] The order ID of the recovery orchestration group.
  /// [postActions] Post-actions for the recovery orchestration group.
  /// [preActions] Pre-actions for the recovery orchestration group.
  const RecoveryGroupProperties({
    required this.description,
    required this.groupUniqueId,
    required this.orderId,
    this.postActions,
    this.preActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'groupUniqueId': groupUniqueId,
      'orderId': orderId,
      'postActions': ?postActions,
      'preActions': ?preActions,
    };
  }

  factory RecoveryGroupProperties.fromMap(Map<String, dynamic> map) {
    return RecoveryGroupProperties(
      description: pulumi.Input.fromValue(map['description'] as String),
      groupUniqueId: pulumi.Input.fromValue(map['groupUniqueId'] as String),
      orderId: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['orderId'])),
      postActions: (() { final guardedValue = map['postActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      preActions: (() { final guardedValue = map['preActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
    );
  }
}
