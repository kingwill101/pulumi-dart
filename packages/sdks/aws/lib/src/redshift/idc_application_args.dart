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
  final pulumi.Input<IdcApplicationAuthorizedTokenIssuer>?
  authorizedTokenIssuer;

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
      'authorizedTokenIssuer':
          ?pulumi.Input.mapOptionalInputValue<
            IdcApplicationAuthorizedTokenIssuer,
            Map<String, dynamic>
          >(authorizedTokenIssuer, (value) => value.toMap()),
      'iamRoleArn': iamRoleArn,
      'idcDisplayName': idcDisplayName,
      'idcInstanceArn': idcInstanceArn,
      'identityNamespace': ?identityNamespace,
      'redshiftIdcApplicationName': redshiftIdcApplicationName,
      'region': ?region,
      'serviceIntegration':
          ?pulumi.Input.mapOptionalInputValue<
            IdcApplicationServiceIntegration,
            Map<String, dynamic>
          >(serviceIntegration, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory IdcApplicationArgs.fromMap(Map<String, dynamic> map) {
    return IdcApplicationArgs(
      applicationType: (() {
        final guardedValue = map['applicationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authorizedTokenIssuer: (() {
        final guardedValue = map['authorizedTokenIssuer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IdcApplicationAuthorizedTokenIssuer.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      iamRoleArn: pulumi.Input.fromValue(map['iamRoleArn'] as String),
      idcDisplayName: pulumi.Input.fromValue(map['idcDisplayName'] as String),
      idcInstanceArn: pulumi.Input.fromValue(map['idcInstanceArn'] as String),
      identityNamespace: (() {
        final guardedValue = map['identityNamespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      redshiftIdcApplicationName: pulumi.Input.fromValue(
        map['redshiftIdcApplicationName'] as String,
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceIntegration: (() {
        final guardedValue = map['serviceIntegration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IdcApplicationServiceIntegration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
