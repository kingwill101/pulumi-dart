// ignore_for_file: unused_element, unnecessary_cast

/// Configuration specific to LivePerson (https://www.liveperson.com).
class GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig {
  /// Account number of the LivePerson account to connect. This is the account number you input at the login page.
  final String accountNumber;

  GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig({
    required this.accountNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountNumber'] = accountNumber;
    return map;
  }

  factory GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig(
      accountNumber: map['accountNumber'] as String,
    );
  }
}
