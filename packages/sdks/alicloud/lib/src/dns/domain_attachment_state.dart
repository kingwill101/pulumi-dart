// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DomainAttachment resources.
class DomainAttachmentState {
  /// The domain names bound to the DNS instance.
  final pulumi.Input<List<String>>? domainNames;

  /// The id of the DNS instance.
  final pulumi.Input<String>? instanceId;

  /// Creates a new [DomainAttachmentState].
  /// [domainNames] The domain names bound to the DNS instance.
  /// [instanceId] The id of the DNS instance.
  DomainAttachmentState({this.domainNames, this.instanceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainNames': ?domainNames,
      'instanceId': ?instanceId,
    };
  }

  factory DomainAttachmentState.fromMap(Map<String, dynamic> map) {
    return DomainAttachmentState(
      domainNames: (() {
        final guardedValue = map['domainNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
