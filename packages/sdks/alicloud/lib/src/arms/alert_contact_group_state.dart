// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AlertContactGroup resources.
class AlertContactGroupState {
  /// The name of the resource.
  final pulumi.Input<String>? alertContactGroupName;
  /// The list id of alert contact.
  final pulumi.Input<List<String>>? contactIds;

  /// Creates a new [AlertContactGroupState].
  /// [alertContactGroupName] The name of the resource.
  /// [contactIds] The list id of alert contact.
  AlertContactGroupState({
    pulumi.Output<String>? alertContactGroupName,
    pulumi.Output<List<String>>? contactIds,
  }) :
      alertContactGroupName = pulumi.Input.asOptionalInput<String>(alertContactGroupName),
      contactIds = pulumi.Input.asOptionalInput<List<String>>(contactIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertContactGroupName': ?alertContactGroupName,
      'contactIds': ?contactIds,
    };
  }

  factory AlertContactGroupState.fromMap(Map<String, dynamic> map) {
    return AlertContactGroupState(
      alertContactGroupName: map['alertContactGroupName'] == null ? null : pulumi.Output.create<String>(map['alertContactGroupName'] as String),
      contactIds: map['contactIds'] == null ? null : pulumi.Output.create<List<String>>((map['contactIds'] as List).cast<String>()),
    );
  }
}

