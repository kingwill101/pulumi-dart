// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSubscriptionJobsJobSubscriptionHost {
  /// Classic network address.
  final pulumi.Input<String> privateHost;

  /// Public network address.
  final pulumi.Input<String> publicHost;

  /// VPC network address.
  final pulumi.Input<String> vpcHost;

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

  factory GetSubscriptionJobsJobSubscriptionHost.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetSubscriptionJobsJobSubscriptionHost(
      privateHost: pulumi.Input.fromValue(map['privateHost'] as String),
      publicHost: pulumi.Input.fromValue(map['publicHost'] as String),
      vpcHost: pulumi.Input.fromValue(map['vpcHost'] as String),
    );
  }
}
