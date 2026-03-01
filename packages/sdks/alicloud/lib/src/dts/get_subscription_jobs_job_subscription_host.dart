// ignore_for_file: unused_element, unnecessary_cast


class GetSubscriptionJobsJobSubscriptionHost {
  /// Classic network address.
  final String privateHost;
  /// Public network address.
  final String publicHost;
  /// VPC network address.
  final String vpcHost;

  /// Creates a new [GetSubscriptionJobsJobSubscriptionHost].
  /// [privateHost] Classic network address.
  /// [publicHost] Public network address.
  /// [vpcHost] VPC network address.
  GetSubscriptionJobsJobSubscriptionHost({
    required this.privateHost,
    required this.publicHost,
    required this.vpcHost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateHost': privateHost,
      'publicHost': publicHost,
      'vpcHost': vpcHost,
    };
  }

  factory GetSubscriptionJobsJobSubscriptionHost.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionJobsJobSubscriptionHost(
      privateHost: map['privateHost'] as String,
      publicHost: map['publicHost'] as String,
      vpcHost: map['vpcHost'] as String,
    );
  }
}

