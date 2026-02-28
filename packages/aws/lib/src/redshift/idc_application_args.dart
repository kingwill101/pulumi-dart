// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'idc_application_authorized_token_issuer.dart';
import 'idc_application_service_integration.dart';

/// {@template pulumi_redshift_idc_application_idc_application_args_doc}
/// The set of arguments for IdcApplication.
/// {@endtemplate}
/// {@macro pulumi_redshift_idc_application_idc_application_args_doc}
class IdcApplicationArgs {
  /// Type of application being created. Valid values are `None` or `Lakehouse`.
  final pulumi.Input<String>? applicationType;
  /// Token issuer list for the Amazon Redshift IAM Identity Center application instance. Refer to the authorized_token_issuer documentation for more details.
  final pulumi.Input<IdcApplicationAuthorizedTokenIssuer>? authorizedTokenIssuer;
  /// IAM role ARN for the Amazon Redshift IAM Identity Center application instance.
  final pulumi.Input<String> iamRoleArn;
  /// Display name for the Amazon Redshift IAM Identity Center application instance.
  final pulumi.Input<String> idcDisplayName;
  /// ARN of the IAM Identity Center instance where Amazon Redshift creates a new managed application.
  final pulumi.Input<String> idcInstanceArn;
  /// Namespace for the Amazon Redshift IAM Identity Center application instance.
  final pulumi.Input<String>? identityNamespace;
  /// Name of the Redshift application in IAM Identity Center.
  final pulumi.Input<String> redshiftIdcApplicationName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Collection of service integrations for the Redshift IAM Identity Center application. Refer to the service_integration documentation for more details.
  final pulumi.Input<IdcApplicationServiceIntegration>? serviceIntegration;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IdcApplicationArgs].
  /// [applicationType] Type of application being created. Valid values are `None` or `Lakehouse`.
  /// [authorizedTokenIssuer] Token issuer list for the Amazon Redshift IAM Identity Center application instance. Refer to the authorized_token_issuer documentation for more details.
  /// [iamRoleArn] IAM role ARN for the Amazon Redshift IAM Identity Center application instance.
  /// [idcDisplayName] Display name for the Amazon Redshift IAM Identity Center application instance.
  /// [idcInstanceArn] ARN of the IAM Identity Center instance where Amazon Redshift creates a new managed application.
  /// [identityNamespace] Namespace for the Amazon Redshift IAM Identity Center application instance.
  /// [redshiftIdcApplicationName] Name of the Redshift application in IAM Identity Center.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceIntegration] Collection of service integrations for the Redshift IAM Identity Center application. Refer to the service_integration documentation for more details.
  /// [tags] Optional.
  IdcApplicationArgs({
    String? applicationType,
    IdcApplicationAuthorizedTokenIssuer? authorizedTokenIssuer,
    required String iamRoleArn,
    required String idcDisplayName,
    required String idcInstanceArn,
    String? identityNamespace,
    required String redshiftIdcApplicationName,
    String? region,
    IdcApplicationServiceIntegration? serviceIntegration,
    Map<String, String>? tags,
  }) :
      applicationType = pulumi.Input.asOptionalInput<String>(applicationType),
      authorizedTokenIssuer = pulumi.Input.asOptionalInput<IdcApplicationAuthorizedTokenIssuer>(authorizedTokenIssuer),
      iamRoleArn = pulumi.Input.asInput<String>(iamRoleArn),
      idcDisplayName = pulumi.Input.asInput<String>(idcDisplayName),
      idcInstanceArn = pulumi.Input.asInput<String>(idcInstanceArn),
      identityNamespace = pulumi.Input.asOptionalInput<String>(identityNamespace),
      redshiftIdcApplicationName = pulumi.Input.asInput<String>(redshiftIdcApplicationName),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceIntegration = pulumi.Input.asOptionalInput<IdcApplicationServiceIntegration>(serviceIntegration),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationType': ?applicationType,
      'authorizedTokenIssuer': ?pulumi.Input.mapOptionalInputValue<IdcApplicationAuthorizedTokenIssuer, Map<String, dynamic>>(authorizedTokenIssuer, (value) => value.toMap()),
      'iamRoleArn': iamRoleArn,
      'idcDisplayName': idcDisplayName,
      'idcInstanceArn': idcInstanceArn,
      'identityNamespace': ?identityNamespace,
      'redshiftIdcApplicationName': redshiftIdcApplicationName,
      'region': ?region,
      'serviceIntegration': ?pulumi.Input.mapOptionalInputValue<IdcApplicationServiceIntegration, Map<String, dynamic>>(serviceIntegration, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory IdcApplicationArgs.fromMap(Map<String, dynamic> map) {
    return IdcApplicationArgs(
      applicationType: map['applicationType'] == null ? null : map['applicationType'] as String,
      authorizedTokenIssuer: map['authorizedTokenIssuer'] == null ? null : IdcApplicationAuthorizedTokenIssuer.fromMap((map['authorizedTokenIssuer'] as Map).cast<String, dynamic>()),
      iamRoleArn: map['iamRoleArn'] as String,
      idcDisplayName: map['idcDisplayName'] as String,
      idcInstanceArn: map['idcInstanceArn'] as String,
      identityNamespace: map['identityNamespace'] == null ? null : map['identityNamespace'] as String,
      redshiftIdcApplicationName: map['redshiftIdcApplicationName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serviceIntegration: map['serviceIntegration'] == null ? null : IdcApplicationServiceIntegration.fromMap((map['serviceIntegration'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

