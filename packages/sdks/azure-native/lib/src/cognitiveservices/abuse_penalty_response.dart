// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The abuse penalty.
class AbusePenaltyResponse {
  /// The action of AbusePenalty.
  final pulumi.Input<String>? action;
  /// The datetime of expiration of the AbusePenalty.
  final pulumi.Input<String>? expiration;
  /// The percentage of rate limit.
  final pulumi.Input<double>? rateLimitPercentage;

  /// Creates a new [AbusePenaltyResponse].
  /// [action] The action of AbusePenalty.
  /// [expiration] The datetime of expiration of the AbusePenalty.
  /// [rateLimitPercentage] The percentage of rate limit.
  AbusePenaltyResponse({
    this.action,
    this.expiration,
    this.rateLimitPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'expiration': ?expiration,
      'rateLimitPercentage': ?rateLimitPercentage,
    };
  }

  factory AbusePenaltyResponse.fromMap(Map<String, dynamic> map) {
    return AbusePenaltyResponse(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      expiration: map['expiration'] == null ? null : (map['expiration']! as String).input(),
      rateLimitPercentage: map['rateLimitPercentage'] == null ? null : (map['rateLimitPercentage']! as double).input(),
    );
  }
}

