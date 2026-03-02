// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering V3FunctionVersion resources.
class V3FunctionVersionState {
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// Description of the function version
  final pulumi.Input<String>? description;
  /// Function Name
  final pulumi.Input<String>? functionName;
  /// (Available since v1.234.0) Update time
  final pulumi.Input<String>? lastModifiedTime;
  /// Function Version
  final pulumi.Input<String>? versionId;

  /// Creates a new [V3FunctionVersionState].
  /// [createTime] The creation time of the resource
  /// [description] Description of the function version
  /// [functionName] Function Name
  /// [lastModifiedTime] (Available since v1.234.0) Update time
  /// [versionId] Function Version
  V3FunctionVersionState({
    this.createTime,
    this.description,
    this.functionName,
    this.lastModifiedTime,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'functionName': ?functionName,
      'lastModifiedTime': ?lastModifiedTime,
      'versionId': ?versionId,
    };
  }

  factory V3FunctionVersionState.fromMap(Map<String, dynamic> map) {
    return V3FunctionVersionState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      functionName: map['functionName'] == null ? null : (map['functionName'] as String).input(),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : (map['lastModifiedTime'] as String).input(),
      versionId: map['versionId'] == null ? null : (map['versionId'] as String).input(),
    );
  }
}

