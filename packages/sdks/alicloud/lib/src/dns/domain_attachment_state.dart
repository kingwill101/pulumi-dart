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
  DomainAttachmentState({
    pulumi.Output<List<String>>? domainNames,
    pulumi.Output<String>? instanceId,
  }) :
      domainNames = pulumi.Input.asOptionalInput<List<String>>(domainNames),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainNames': ?domainNames,
      'instanceId': ?instanceId,
    };
  }

  factory DomainAttachmentState.fromMap(Map<String, dynamic> map) {
    return DomainAttachmentState(
      domainNames: map['domainNames'] == null ? null : pulumi.Output.create<List<String>>((map['domainNames'] as List).cast<String>()),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
    );
  }
}

