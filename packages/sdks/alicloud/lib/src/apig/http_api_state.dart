// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HttpApi resources.
class HttpApiState {
  /// API path
  final pulumi.Input<String>? basePath;

  /// Description of API
  final pulumi.Input<String>? description;

  /// The name of the resource
  final pulumi.Input<String>? httpApiName;

  /// API protocol
  final pulumi.Input<List<String>>? protocols;

  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;

  /// API type
  final pulumi.Input<String>? type;

  /// Creates a new [HttpApiState].
  /// [basePath] API path
  /// [description] Description of API
  /// [httpApiName] The name of the resource
  /// [protocols] API protocol
  /// [resourceGroupId] The ID of the resource group
  /// [type] API type
  HttpApiState({
    this.basePath,
    this.description,
    this.httpApiName,
    this.protocols,
    this.resourceGroupId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basePath': ?basePath,
      'description': ?description,
      'httpApiName': ?httpApiName,
      'protocols': ?protocols,
      'resourceGroupId': ?resourceGroupId,
      'type': ?type,
    };
  }

  factory HttpApiState.fromMap(Map<String, dynamic> map) {
    return HttpApiState(
      basePath: (() {
        final guardedValue = map['basePath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      httpApiName: (() {
        final guardedValue = map['httpApiName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocols: (() {
        final guardedValue = map['protocols'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
