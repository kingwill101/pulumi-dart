// ignore_for_file: unused_element, unnecessary_cast

/// Identifies an account and how to log into it.
class Account {
  /// An automatic google login account.
  final Map<String, dynamic>? googleAuto;

  Account({
    this.googleAuto,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final googleAutoValue = googleAuto;
    if (googleAutoValue != null) {
      map['googleAuto'] = googleAutoValue;
    }
    return map;
  }

  factory Account.fromMap(Map<String, dynamic> map) {
    return Account(
      googleAuto: map['googleAuto'] == null
          ? null
          : (map['googleAuto'] as Map).cast<String, dynamic>(),
    );
  }
}
