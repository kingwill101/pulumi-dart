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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? functionName,
    pulumi.Output<String>? lastModifiedTime,
    pulumi.Output<String>? versionId,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      functionName = pulumi.Input.asOptionalInput<String>(functionName),
      lastModifiedTime = pulumi.Input.asOptionalInput<String>(lastModifiedTime),
      versionId = pulumi.Input.asOptionalInput<String>(versionId);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      functionName: map['functionName'] == null ? null : pulumi.Output.create<String>(map['functionName'] as String),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : pulumi.Output.create<String>(map['lastModifiedTime'] as String),
      versionId: map['versionId'] == null ? null : pulumi.Output.create<String>(map['versionId'] as String),
    );
  }
}

