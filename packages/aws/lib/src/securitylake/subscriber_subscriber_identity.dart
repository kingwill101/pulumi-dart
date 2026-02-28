// ignore_for_file: unused_element, unnecessary_cast

class SubscriberSubscriberIdentity {
  /// The AWS Regions where Security Lake is automatically enabled.
  final String externalId;

  /// Provides encryption details of Amazon Security Lake object.
  final String principal;

  /// Creates a new [SubscriberSubscriberIdentity].
  /// [externalId] The AWS Regions where Security Lake is automatically enabled.
  /// [principal] Provides encryption details of Amazon Security Lake object.
  SubscriberSubscriberIdentity({
    required this.externalId,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['externalId'] = externalId;
    map['principal'] = principal;
    return map;
  }

  factory SubscriberSubscriberIdentity.fromMap(Map<String, dynamic> map) {
    return SubscriberSubscriberIdentity(
      externalId: map['externalId'] as String,
      principal: map['principal'] as String,
    );
  }
}
