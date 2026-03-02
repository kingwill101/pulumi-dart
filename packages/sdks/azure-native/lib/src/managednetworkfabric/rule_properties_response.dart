// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rules for the InternetGateways
class RulePropertiesResponse {
  /// Specify action.
  final pulumi.Input<String> action;
  /// List of Addresses to be allowed or denied.
  final pulumi.Input<List<String>> addressList;

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
      action: (map['action'] as String).input(),
      addressList: ((map['addressList'] as List).cast<String>()).input(),
    );
  }
}

