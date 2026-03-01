// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identity_ec2_credential_v3_ec2_credential_v3_args_doc}
/// The set of arguments for Ec2CredentialV3.
/// {@endtemplate}
/// {@macro pulumi_identity_ec2_credential_v3_ec2_credential_v3_args_doc}
class Ec2CredentialV3Args {
  /// The ID of the project the EC2 credential is created
  /// for and that authentication requests using this EC2 credential will
  /// be scoped to. Only administrative users can specify a project ID different
  /// from the current auth scope.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new EC2 credential.
  final pulumi.Input<String>? region;
  /// The ID of the user the EC2 credential is created for.
  /// Only administrative users can specify a user ID different from the current
  /// auth scope.
  final pulumi.Input<String>? userId;

  /// Creates a new [Ec2CredentialV3Args].
  /// [projectId] The ID of the project the EC2 credential is created
  /// [region] The region in which to obtain the V3 Keystone client.
  /// [userId] The ID of the user the EC2 credential is created for.
  Ec2CredentialV3Args({
    String? projectId,
    String? region,
    String? userId,
  }) :
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      userId = pulumi.Input.asOptionalInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': ?projectId,
      'region': ?region,
      'userId': ?userId,
    };
  }

  factory Ec2CredentialV3Args.fromMap(Map<String, dynamic> map) {
    return Ec2CredentialV3Args(
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      userId: map['userId'] == null ? null : map['userId'] as String,
    );
  }
}

