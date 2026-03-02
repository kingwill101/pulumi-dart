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
    this.basePath,
    this.description,
    required this.httpApiName,
    required this.protocols,
    this.resourceGroupId,
    this.type,
  });

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
      basePath: map['basePath'] == null ? null : (map['basePath']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      httpApiName: (map['httpApiName'] as String).input(),
      protocols: ((map['protocols'] as List).cast<String>()).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

