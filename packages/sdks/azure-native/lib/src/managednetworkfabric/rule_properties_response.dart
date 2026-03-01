// ignore_for_file: unused_element, unnecessary_cast


/// Rules for the InternetGateways
class RulePropertiesResponse {
  /// Specify action.
  final String action;
  /// List of Addresses to be allowed or denied.
  final List<String> addressList;

  /// Creates a new [RulePropertiesResponse].
  /// [action] Specify action.
  /// [addressList] List of Addresses to be allowed or denied.
  RulePropertiesResponse({
    required this.action,
    required this.addressList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'addressList': addressList,
    };
  }

  factory RulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RulePropertiesResponse(
      action: map['action'] as String,
      addressList: (map['addressList'] as List).cast<String>(),
    );
  }
}

