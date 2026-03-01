// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elastic_get_organization_api_key_args_doc}
/// Arguments for getOrganizationApiKey.
/// {@endtemplate}
/// {@macro pulumi_elastic_get_organization_api_key_args_doc}
class GetOrganizationApiKeyArgs {
  /// The User email Id
  final pulumi.Input<String>? emailId;

  /// Creates a new [GetOrganizationApiKeyArgs].
  /// [emailId] The User email Id
  GetOrganizationApiKeyArgs({
    pulumi.Output<String>? emailId,
  }) :
      emailId = pulumi.Input.asOptionalInput<String>(emailId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailId': ?emailId,
    };
  }

  factory GetOrganizationApiKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationApiKeyArgs(
      emailId: map['emailId'] == null ? null : pulumi.Output.create<String>(map['emailId'] as String),
    );
  }
}

