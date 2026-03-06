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
  const V3FunctionVersionState({
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

