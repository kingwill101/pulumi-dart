// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// FQDN Outbound Rule for the managed network of a machine learning workspace.
class FqdnOutboundRuleResponse {
  /// Category of a managed network Outbound Rule of a machine learning workspace.
  final pulumi.Input<String>? category;
  final pulumi.Input<String>? destination;

  /// Error information about an outbound rule of a machine learning workspace if RuleStatus is failed.
  final pulumi.Input<String> errorInformation;
  final pulumi.Input<List<String>> parentRuleNames;

  /// Type of a managed network Outbound Rule of a machine learning workspace.
  final pulumi.Input<String>? status;

  /// Type of a managed network Outbound Rule of a machine learning workspace.
  /// Expected value is 'FQDN'.
  final pulumi.Input<String> type;

  /// Creates a new [FqdnOutboundRuleResponse].
  /// [category] Category of a managed network Outbound Rule of a machine learning workspace.
  /// [destination] Optional.
  /// [errorInformation] Error information about an outbound rule of a machine learning workspace if RuleStatus is failed.
  /// [parentRuleNames] Required.
  /// [status] Type of a managed network Outbound Rule of a machine learning workspace.
  /// [type] Type of a managed network Outbound Rule of a machine learning workspace.
  FqdnOutboundRuleResponse({
    this.category,
    this.destination,
    required this.errorInformation,
    required this.parentRuleNames,
    this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'destination': ?destination,
      'errorInformation': errorInformation,
      'parentRuleNames': parentRuleNames,
      'status': ?status,
      'type': type,
    };
  }

  factory FqdnOutboundRuleResponse.fromMap(Map<String, dynamic> map) {
    return FqdnOutboundRuleResponse(
      category: (() {
        final guardedValue = map['category'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destination: (() {
        final guardedValue = map['destination'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      errorInformation: pulumi.Input.fromValue(
        map['errorInformation'] as String,
      ),
      parentRuleNames: pulumi.Input.fromValue(
        (map['parentRuleNames'] as List).cast<String>(),
      ),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
