// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apig_http_api_http_api_args_doc}
/// The set of arguments for HttpApi.
/// {@endtemplate}
/// {@macro pulumi_apig_http_api_http_api_args_doc}
class HttpApiArgs {
  /// API path
  final pulumi.Input<String>? basePath;
  /// Description of API
  final pulumi.Input<String>? description;
  /// The name of the resource
  final pulumi.Input<String> httpApiName;
  /// API protocol
  final pulumi.Input<List<String>> protocols;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// API type
  final pulumi.Input<String>? type;

  /// Creates a new [HttpApiArgs].
  /// [basePath] API path
  /// [description] Description of API
  /// [httpApiName] The name of the resource
  /// [protocols] API protocol
  /// [resourceGroupId] The ID of the resource group
  /// [type] API type
  HttpApiArgs({
    pulumi.Output<String>? basePath,
    pulumi.Output<String>? description,
    required pulumi.Output<String> httpApiName,
    required pulumi.Output<List<String>> protocols,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? type,
  }) :
      basePath = pulumi.Input.asOptionalInput<String>(basePath),
      description = pulumi.Input.asOptionalInput<String>(description),
      httpApiName = pulumi.Input.asInput<String>(httpApiName),
      protocols = pulumi.Input.asInput<List<String>>(protocols),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basePath': ?basePath,
      'description': ?description,
      'httpApiName': httpApiName,
      'protocols': protocols,
      'resourceGroupId': ?resourceGroupId,
      'type': ?type,
    };
  }

  factory HttpApiArgs.fromMap(Map<String, dynamic> map) {
    return HttpApiArgs(
      basePath: map['basePath'] == null ? null : pulumi.Output.create<String>(map['basePath'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      httpApiName: pulumi.Output.create<String>(map['httpApiName'] as String),
      protocols: pulumi.Output.create<List<String>>((map['protocols'] as List).cast<String>()),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

