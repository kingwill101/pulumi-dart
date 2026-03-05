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
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rateLimitPercentage: (() { final guardedValue = map['rateLimitPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

