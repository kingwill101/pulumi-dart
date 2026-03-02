// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering V3Alias resources.
class V3AliasState {
  /// Grayscale version
  final pulumi.Input<Map<String, double>>? additionalVersionWeight;
  /// Function Alias
  final pulumi.Input<String>? aliasName;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// Description
  final pulumi.Input<String>? description;
  /// Function Name
  final pulumi.Input<String>? functionName;
  /// (Available since v1.234.0) Last modification time
  final pulumi.Input<String>? lastModifiedTime;
  /// The version that the alias points
  final pulumi.Input<String>? versionId;

  /// Creates a new [V3AliasState].
  /// [additionalVersionWeight] Grayscale version
  /// [aliasName] Function Alias
  /// [createTime] The creation time of the resource
  /// [description] Description
  /// [functionName] Function Name
  /// [lastModifiedTime] (Available since v1.234.0) Last modification time
  /// [versionId] The version that the alias points
  V3AliasState({
    this.additionalVersionWeight,
    this.aliasName,
    this.createTime,
    this.description,
    this.functionName,
    this.lastModifiedTime,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalVersionWeight': ?additionalVersionWeight,
      'aliasName': ?aliasName,
      'createTime': ?createTime,
      'description': ?description,
      'functionName': ?functionName,
      'lastModifiedTime': ?lastModifiedTime,
      'versionId': ?versionId,
    };
  }

  factory V3AliasState.fromMap(Map<String, dynamic> map) {
    return V3AliasState(
      additionalVersionWeight: map['additionalVersionWeight'] == null ? null : ((map['additionalVersionWeight'] as Map).cast<String, double>()).input(),
      aliasName: map['aliasName'] == null ? null : (map['aliasName'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      functionName: map['functionName'] == null ? null : (map['functionName'] as String).input(),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : (map['lastModifiedTime'] as String).input(),
      versionId: map['versionId'] == null ? null : (map['versionId'] as String).input(),
    );
  }
}

