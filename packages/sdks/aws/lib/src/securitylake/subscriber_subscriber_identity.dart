// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriberSubscriberIdentity {
  /// The AWS Regions where Security Lake is automatically enabled.
  final pulumi.Input<String> externalId;
  /// Provides encryption details of Amazon Security Lake object.
  final pulumi.Input<String> principal;

  /// Creates a new [SubscriberSubscriberIdentity].
  /// [externalId] The AWS Regions where Security Lake is automatically enabled.
  /// [principal] Provides encryption details of Amazon Security Lake object.
  SubscriberSubscriberIdentity({
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
      externalId: (map['externalId'] as String).input(),
      principal: (map['principal'] as String).input(),
    );
  }
}

