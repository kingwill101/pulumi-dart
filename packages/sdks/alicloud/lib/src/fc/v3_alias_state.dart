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
    pulumi.Output<Map<String, double>>? additionalVersionWeight,
    pulumi.Output<String>? aliasName,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? functionName,
    pulumi.Output<String>? lastModifiedTime,
    pulumi.Output<String>? versionId,
  }) :
      additionalVersionWeight = pulumi.Input.asOptionalInput<Map<String, double>>(additionalVersionWeight),
      aliasName = pulumi.Input.asOptionalInput<String>(aliasName),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      functionName = pulumi.Input.asOptionalInput<String>(functionName),
      lastModifiedTime = pulumi.Input.asOptionalInput<String>(lastModifiedTime),
      versionId = pulumi.Input.asOptionalInput<String>(versionId);

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
      additionalVersionWeight: map['additionalVersionWeight'] == null ? null : pulumi.Output.create<Map<String, double>>((map['additionalVersionWeight'] as Map).cast<String, double>()),
      aliasName: map['aliasName'] == null ? null : pulumi.Output.create<String>(map['aliasName'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      functionName: map['functionName'] == null ? null : pulumi.Output.create<String>(map['functionName'] as String),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : pulumi.Output.create<String>(map['lastModifiedTime'] as String),
      versionId: map['versionId'] == null ? null : pulumi.Output.create<String>(map['versionId'] as String),
    );
  }
}

