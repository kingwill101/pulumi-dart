// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_api_api_args_doc}
/// The set of arguments for Api.
/// {@endtemplate}
/// {@macro pulumi_apigee_api_api_args_doc}
class ApiArgs {
  /// Path to the config zip bundle.
  ///
  /// - - -
  final pulumi.Input<String> configBundle;
  final pulumi.Input<String>? detectMd5hash;
  /// The ID of the API proxy.
  final pulumi.Input<String>? name;
  /// The Apigee Organization name associated with the Apigee instance.
  final pulumi.Input<String> orgId;

  /// Creates a new [ApiArgs].
  /// [configBundle] Path to the config zip bundle.
  /// [detectMd5hash] Optional.
  /// [name] The ID of the API proxy.
  /// [orgId] The Apigee Organization name associated with the Apigee instance.
  ApiArgs({
    required String configBundle,
    String? detectMd5hash,
    String? name,
    required String orgId,
  }) :
      configBundle = pulumi.Input.asInput<String>(configBundle),
      detectMd5hash = pulumi.Input.asOptionalInput<String>(detectMd5hash),
      name = pulumi.Input.asOptionalInput<String>(name),
      orgId = pulumi.Input.asInput<String>(orgId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configBundle': configBundle,
      'detectMd5hash': ?detectMd5hash,
      'name': ?name,
      'orgId': orgId,
    };
  }

  factory ApiArgs.fromMap(Map<String, dynamic> map) {
    return ApiArgs(
      configBundle: map['configBundle'] as String,
      detectMd5hash: map['detectMd5hash'] == null ? null : map['detectMd5hash'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      orgId: map['orgId'] as String,
    );
  }
}

