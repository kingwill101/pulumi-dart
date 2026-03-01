// ignore_for_file: unused_element, unnecessary_cast


/// The abuse penalty.
class AbusePenaltyResponse {
  /// The action of AbusePenalty.
  final String? action;
  /// The datetime of expiration of the AbusePenalty.
  final String? expiration;
  /// The percentage of rate limit.
  final double? rateLimitPercentage;

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
      action: map['action'] == null ? null : map['action'] as String,
      expiration: map['expiration'] == null ? null : map['expiration'] as String,
      rateLimitPercentage: map['rateLimitPercentage'] == null ? null : map['rateLimitPercentage'] as double,
    );
  }
}

