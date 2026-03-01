// ignore_for_file: unused_element, unnecessary_cast

/// Identifies an account and how to log into it.
class Account {
  /// An automatic google login account.
  final Map<String, dynamic>? googleAuto;

  /// Creates a new [Account].
  /// [googleAuto] An automatic google login account.
  Account({this.googleAuto});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'googleAuto': ?googleAuto};
  }

  factory Account.fromMap(Map<String, dynamic> map) {
    return Account(
      googleAuto: map['googleAuto'] == null
          ? null
          : (map['googleAuto'] as Map).cast<String, dynamic>(),
    );
  }
}
