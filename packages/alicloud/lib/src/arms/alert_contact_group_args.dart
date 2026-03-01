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
  AlertContactGroupArgs({
    required String alertContactGroupName,
    List<String>? contactIds,
  }) :
      alertContactGroupName = pulumi.Input.asInput<String>(alertContactGroupName),
      contactIds = pulumi.Input.asOptionalInput<List<String>>(contactIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertContactGroupName': alertContactGroupName,
      'contactIds': ?contactIds,
    };
  }

  factory AlertContactGroupArgs.fromMap(Map<String, dynamic> map) {
    return AlertContactGroupArgs(
      alertContactGroupName: map['alertContactGroupName'] as String,
      contactIds: map['contactIds'] == null ? null : (map['contactIds'] as List).cast<String>(),
    );
  }
}

