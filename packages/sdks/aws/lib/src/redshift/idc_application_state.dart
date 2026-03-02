// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'idc_application_authorized_token_issuer.dart';
import 'idc_application_service_integration.dart';

/// Input properties used for looking up and filtering IdcApplication resources.
class IdcApplicationState {
  /// Type of application being created. Valid values are `None` or `Lakehouse`.
  final pulumi.Input<String>? applicationType;
  /// Token issuer list for the Amazon Redshift IAM Identity Center application instance. Refer to the authorized_token_issuer documentation for more details.
  final pulumi.Input<IdcApplicationAuthorizedTokenIssuer>? authorizedTokenIssuer;
  /// IAM role ARN for the Amazon Redshift IAM Identity Center application instance.
  final pulumi.Input<String>? iamRoleArn;
  /// Display name for the Amazon Redshift IAM Identity Center application instance.
  final pulumi.Input<String>? idcDisplayName;
  /// ARN of the IAM Identity Center instance where Amazon Redshift creates a new managed application.
  final pulumi.Input<String>? idcInstanceArn;
  /// ARN for the Amazon Redshift IAM Identity Center application.
  final pulumi.Input<String>? idcManagedApplicationArn;
  /// Namespace for the Amazon Redshift IAM Identity Center application instance.
  final pulumi.Input<String>? identityNamespace;
  /// ARN of the Redshift application in IAM Identity Center.
  final pulumi.Input<String>? redshiftIdcApplicationArn;
  /// Name of the Redshift application in IAM Identity Center.
  final pulumi.Input<String>? redshiftIdcApplicationName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Collection of service integrations for the Redshift IAM Identity Center application. Refer to the service_integration documentation for more details.
  final pulumi.Input<IdcApplicationServiceIntegration>? serviceIntegration;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [IdcApplicationState].
  /// [applicationType] Type of application being created. Valid values are `None` or `Lakehouse`.
  /// [authorizedTokenIssuer] Token issuer list for the Amazon Redshift IAM Identity Center application instance. Refer to the authorized_token_issuer documentation for more details.
  /// [iamRoleArn] IAM role ARN for the Amazon Redshift IAM Identity Center application instance.
  /// [idcDisplayName] Display name for the Amazon Redshift IAM Identity Center application instance.
  /// [idcInstanceArn] ARN of the IAM Identity Center instance where Amazon Redshift creates a new managed application.
  /// [idcManagedApplicationArn] ARN for the Amazon Redshift IAM Identity Center application.
  /// [identityNamespace] Namespace for the Amazon Redshift IAM Identity Center application instance.
  /// [redshiftIdcApplicationArn] ARN of the Redshift application in IAM Identity Center.
  /// [redshiftIdcApplicationName] Name of the Redshift application in IAM Identity Center.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceIntegration] Collection of service integrations for the Redshift IAM Identity Center application. Refer to the service_integration documentation for more details.
  /// [tags] Optional.
  /// [tagsAll] Optional.
  IdcApplicationState({
    this.applicationType,
    this.authorizedTokenIssuer,
    this.iamRoleArn,
    this.idcDisplayName,
    this.idcInstanceArn,
    this.idcManagedApplicationArn,
    this.identityNamespace,
    this.redshiftIdcApplicationArn,
    this.redshiftIdcApplicationName,
    this.region,
    this.serviceIntegration,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationType': ?applicationType,
      'authorizedTokenIssuer': ?pulumi.Input.mapOptionalInputValue<IdcApplicationAuthorizedTokenIssuer, Map<String, dynamic>>(authorizedTokenIssuer, (value) => value.toMap()),
      'iamRoleArn': ?iamRoleArn,
      'idcDisplayName': ?idcDisplayName,
      'idcInstanceArn': ?idcInstanceArn,
      'idcManagedApplicationArn': ?idcManagedApplicationArn,
      'identityNamespace': ?identityNamespace,
      'redshiftIdcApplicationArn': ?redshiftIdcApplicationArn,
      'redshiftIdcApplicationName': ?redshiftIdcApplicationName,
      'region': ?region,
      'serviceIntegration': ?pulumi.Input.mapOptionalInputValue<IdcApplicationServiceIntegration, Map<String, dynamic>>(serviceIntegration, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory IdcApplicationState.fromMap(Map<String, dynamic> map) {
    return IdcApplicationState(
      applicationType: map['applicationType'] == null ? null : (map['applicationType'] as String).input(),
      authorizedTokenIssuer: map['authorizedTokenIssuer'] == null ? null : (IdcApplicationAuthorizedTokenIssuer.fromMap((map['authorizedTokenIssuer'] as Map).cast<String, dynamic>())).input(),
      iamRoleArn: map['iamRoleArn'] == null ? null : (map['iamRoleArn'] as String).input(),
      idcDisplayName: map['idcDisplayName'] == null ? null : (map['idcDisplayName'] as String).input(),
      idcInstanceArn: map['idcInstanceArn'] == null ? null : (map['idcInstanceArn'] as String).input(),
      idcManagedApplicationArn: map['idcManagedApplicationArn'] == null ? null : (map['idcManagedApplicationArn'] as String).input(),
      identityNamespace: map['identityNamespace'] == null ? null : (map['identityNamespace'] as String).input(),
      redshiftIdcApplicationArn: map['redshiftIdcApplicationArn'] == null ? null : (map['redshiftIdcApplicationArn'] as String).input(),
      redshiftIdcApplicationName: map['redshiftIdcApplicationName'] == null ? null : (map['redshiftIdcApplicationName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      serviceIntegration: map['serviceIntegration'] == null ? null : (IdcApplicationServiceIntegration.fromMap((map['serviceIntegration'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

