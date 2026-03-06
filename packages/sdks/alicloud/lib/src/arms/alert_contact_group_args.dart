// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_alert_contact_group_alert_contact_group_args_doc}
/// The set of arguments for AlertContactGroup.
/// {@endtemplate}
/// {@macro pulumi_arms_alert_contact_group_alert_contact_group_args_doc}
class AlertContactGroupArgs {
  /// The name of the resource.
  final pulumi.Input<String> alertContactGroupName;
  /// The list id of alert contact.
  final pulumi.Input<List<String>>? contactIds;

  /// Creates a new [AlertContactGroupArgs].
  /// [alertContactGroupName] The name of the resource.
  /// [contactIds] The list id of alert contact.
  const AlertContactGroupArgs({
    required this.alertContactGroupName,
    this.contactIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertContactGroupName': alertContactGroupName,
      'contactIds': ?contactIds,
    };
  }

  factory AlertContactGroupArgs.fromMap(Map<String, dynamic> map) {
    return AlertContactGroupArgs(
      alertContactGroupName: pulumi.Input.fromValue(map['alertContactGroupName'] as String),
      contactIds: (() { final guardedValue = map['contactIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

