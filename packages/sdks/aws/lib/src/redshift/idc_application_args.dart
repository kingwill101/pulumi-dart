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
    this.applicationType,
    this.authorizedTokenIssuer,
    required this.iamRoleArn,
    required this.idcDisplayName,
    required this.idcInstanceArn,
    this.identityNamespace,
    required this.redshiftIdcApplicationName,
    this.region,
    this.serviceIntegration,
    this.tags,
  });

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
      applicationType: map['applicationType'] == null ? null : ((map['applicationType'] as String).input()).input(),
      authorizedTokenIssuer: map['authorizedTokenIssuer'] == null ? null : ((IdcApplicationAuthorizedTokenIssuer.fromMap((map['authorizedTokenIssuer']! as Map).cast<String, dynamic>())).input()).input(),
      iamRoleArn: (map['iamRoleArn'] as String).input(),
      idcDisplayName: (map['idcDisplayName'] as String).input(),
      idcInstanceArn: (map['idcInstanceArn'] as String).input(),
      identityNamespace: map['identityNamespace'] == null ? null : ((map['identityNamespace'] as String).input()).input(),
      redshiftIdcApplicationName: (map['redshiftIdcApplicationName'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      serviceIntegration: map['serviceIntegration'] == null ? null : ((IdcApplicationServiceIntegration.fromMap((map['serviceIntegration']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

