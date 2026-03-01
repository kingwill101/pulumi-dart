// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_get_spot_datafeed_subscription_get_spot_datafeed_subscription_args_doc}
/// Arguments for getSpotDatafeedSubscription.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_spot_datafeed_subscription_get_spot_datafeed_subscription_args_doc}
class GetSpotDatafeedSubscriptionArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetSpotDatafeedSubscriptionArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetSpotDatafeedSubscriptionArgs({
    String? region,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory GetSpotDatafeedSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetSpotDatafeedSubscriptionArgs(
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

