// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainConfigFunctionArg {
  /// The name of arg.
  final pulumi.Input<String> argName;
  /// The value of arg.
  final pulumi.Input<String> argValue;

  /// Creates a new [DomainConfigFunctionArg].
  /// [argName] The name of arg.
  /// [argValue] The value of arg.
  DomainConfigFunctionArg({
    required this.argName,
    required this.argValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'argName': argName,
      'argValue': argValue,
    };
  }

  factory DomainConfigFunctionArg.fromMap(Map<String, dynamic> map) {
    return DomainConfigFunctionArg(
      argName: (map['argName'] as String).input(),
      argValue: (map['argValue'] as String).input(),
    );
  }
}

