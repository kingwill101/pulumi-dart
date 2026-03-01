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
  V3AliasArgs({
    Map<String, double>? additionalVersionWeight,
    String? aliasName,
    String? description,
    required String functionName,
    String? versionId,
  }) :
      additionalVersionWeight = pulumi.Input.asOptionalInput<Map<String, double>>(additionalVersionWeight),
      aliasName = pulumi.Input.asOptionalInput<String>(aliasName),
      description = pulumi.Input.asOptionalInput<String>(description),
      functionName = pulumi.Input.asInput<String>(functionName),
      versionId = pulumi.Input.asOptionalInput<String>(versionId);

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
      additionalVersionWeight: map['additionalVersionWeight'] == null ? null : (map['additionalVersionWeight'] as Map).cast<String, double>(),
      aliasName: map['aliasName'] == null ? null : map['aliasName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      functionName: map['functionName'] as String,
      versionId: map['versionId'] == null ? null : map['versionId'] as String,
    );
  }
}

