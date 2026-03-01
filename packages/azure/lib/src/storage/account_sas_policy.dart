// ignore_for_file: unused_element, unnecessary_cast


class AccountSasPolicy {
  /// The SAS expiration action. Possible values are `Log` and `Block`. Defaults to `Log`.
  final String? expirationAction;
  /// The SAS expiration period in format of `DD.HH:MM:SS`.
  final String expirationPeriod;

  /// Creates a new [AccountSasPolicy].
  /// [expirationAction] The SAS expiration action. Possible values are `Log` and `Block`. Defaults to `Log`.
  /// [expirationPeriod] The SAS expiration period in format of `DD.HH:MM:SS`.
  AccountSasPolicy({
    this.expirationAction,
    required this.expirationPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationAction': ?expirationAction,
      'expirationPeriod': expirationPeriod,
    };
  }

  factory AccountSasPolicy.fromMap(Map<String, dynamic> map) {
    return AccountSasPolicy(
      expirationAction: map['expirationAction'] == null ? null : map['expirationAction'] as String,
      expirationPeriod: map['expirationPeriod'] as String,
    );
  }
}

