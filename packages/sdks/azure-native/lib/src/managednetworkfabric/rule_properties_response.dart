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
  const RulePropertiesResponse({
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
      action: pulumi.Input.fromValue(map['action'] as String),
      addressList: pulumi.Input.fromValue((map['addressList'] as List).cast<String>()),
    );
  }
}

