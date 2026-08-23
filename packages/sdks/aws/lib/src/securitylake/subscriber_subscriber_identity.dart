// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriberSubscriberIdentity {
  /// The external ID used to establish trust relationship with the AWS identity.
  final pulumi.Input<String> externalId;
  /// The AWS identity principal.
  final pulumi.Input<String> principal;

  /// Creates a new [SubscriberSubscriberIdentity].
  /// [externalId] The external ID used to establish trust relationship with the AWS identity.
  /// [principal] The AWS identity principal.
  const SubscriberSubscriberIdentity({
    required this.externalId,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalId': externalId,
      'principal': principal,
    };
  }

  factory SubscriberSubscriberIdentity.fromMap(Map<String, dynamic> map) {
    return SubscriberSubscriberIdentity(
      externalId: pulumi.Input.fromValue(map['externalId'] as String),
      principal: pulumi.Input.fromValue(map['principal'] as String),
    );
  }
}
