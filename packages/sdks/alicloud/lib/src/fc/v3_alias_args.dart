// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fc_v3_alias_v3_alias_args_doc}
/// The set of arguments for V3Alias.
/// {@endtemplate}
/// {@macro pulumi_fc_v3_alias_v3_alias_args_doc}
class V3AliasArgs {
  /// Grayscale version
  final pulumi.Input<Map<String, double>>? additionalVersionWeight;
  /// Function Alias
  final pulumi.Input<String>? aliasName;
  /// Description
  final pulumi.Input<String>? description;
  /// Function Name
  final pulumi.Input<String> functionName;
  /// The version that the alias points
  final pulumi.Input<String>? versionId;

  /// Creates a new [V3AliasArgs].
  /// [additionalVersionWeight] Grayscale version
  /// [aliasName] Function Alias
  /// [description] Description
  /// [functionName] Function Name
  /// [versionId] The version that the alias points
  const V3AliasArgs({
    this.additionalVersionWeight,
    this.aliasName,
    this.description,
    required this.functionName,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalVersionWeight': ?additionalVersionWeight,
      'aliasName': ?aliasName,
      'description': ?description,
      'functionName': functionName,
      'versionId': ?versionId,
    };
  }

  factory V3AliasArgs.fromMap(Map<String, dynamic> map) {
    return V3AliasArgs(
      additionalVersionWeight: (() { final guardedValue = map['additionalVersionWeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, double>()); })(),
      aliasName: (() { final guardedValue = map['aliasName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

