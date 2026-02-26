// ignore_for_file: unused_element, unnecessary_cast

/// Identifies an account and how to log into it.
class AccountResponse {
  /// An automatic google login account.
  final Map<String, dynamic> googleAuto;

  AccountResponse({
    required this.googleAuto,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['googleAuto'] = googleAuto;
    return map;
  }

  factory AccountResponse.fromMap(Map<String, dynamic> map) {
    return AccountResponse(
      googleAuto: (map['googleAuto'] as Map).cast<String, dynamic>(),
    );
  }
}
