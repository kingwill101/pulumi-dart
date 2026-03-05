// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rules for the InternetGateways
class RuleProperties {
  /// Specify action.
  final pulumi.Input<String> action;
  /// List of Addresses to be allowed or denied.
  final pulumi.Input<List<String>> addressList;

  /// Creates a new [RuleProperties].
  /// [action] Specify action.
  /// [addressList] List of Addresses to be allowed or denied.
  RuleProperties({
    required this.action,
    required this.addressList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'addressList': addressList,
    };
  }

  factory RuleProperties.fromMap(Map<String, dynamic> map) {
    return RuleProperties(
      action: pulumi.Input.fromValue(map['action'] as String),
      addressList: pulumi.Input.fromValue((map['addressList'] as List).cast<String>()),
    );
  }
}

