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
    pulumi.Output<String>? basePath,
    pulumi.Output<String>? description,
    pulumi.Output<String>? httpApiName,
    pulumi.Output<List<String>>? protocols,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? type,
  }) :
      basePath = pulumi.Input.asOptionalInput<String>(basePath),
      description = pulumi.Input.asOptionalInput<String>(description),
      httpApiName = pulumi.Input.asOptionalInput<String>(httpApiName),
      protocols = pulumi.Input.asOptionalInput<List<String>>(protocols),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      basePath: map['basePath'] == null ? null : pulumi.Output.create<String>(map['basePath'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      httpApiName: map['httpApiName'] == null ? null : pulumi.Output.create<String>(map['httpApiName'] as String),
      protocols: map['protocols'] == null ? null : pulumi.Output.create<List<String>>((map['protocols'] as List).cast<String>()),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

