// ignore_for_file: unused_element, unnecessary_cast

class ConversationProfileHumanAgentHandoffConfigLivePersonConfig {
  /// Account number of the LivePerson account to connect.
  final String accountNumber;

  ConversationProfileHumanAgentHandoffConfigLivePersonConfig({
    required this.accountNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountNumber'] = accountNumber;
    return map;
  }

  factory ConversationProfileHumanAgentHandoffConfigLivePersonConfig.fromMap(
      Map<String, dynamic> map) {
    return ConversationProfileHumanAgentHandoffConfigLivePersonConfig(
      accountNumber: map['accountNumber'] as String,
    );
  }
}
