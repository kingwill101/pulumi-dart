// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AlidnsDomainAttachment resources.
class AlidnsDomainAttachmentState {
  /// The domain names bound to the DNS instance.
  final pulumi.Input<List<String>>? domainNames;
  /// The id of the DNS instance.
  final pulumi.Input<String>? instanceId;

  /// Creates a new [AlidnsDomainAttachmentState].
  /// [domainNames] The domain names bound to the DNS instance.
  /// [instanceId] The id of the DNS instance.
  AlidnsDomainAttachmentState({
    this.domainNames,
    this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainNames': ?domainNames,
      'instanceId': ?instanceId,
    };
  }

  factory AlidnsDomainAttachmentState.fromMap(Map<String, dynamic> map) {
    return AlidnsDomainAttachmentState(
      domainNames: map['domainNames'] == null ? null : ((map['domainNames']! as List).cast<String>()).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
    );
  }
}

