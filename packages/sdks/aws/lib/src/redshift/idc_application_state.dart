// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'idc_application_authorized_token_issuer.dart';
import 'idc_application_service_integration.dart';

/// Input properties used for looking up and filtering IdcApplication resources.
class IdcApplicationState {
  /// Type of application being created. Valid values are `None` or `Lakehouse`.
  final pulumi.Input<String?>? applicationType;
  /// Token issuer list for the Amazon Redshift IAM Identity Center application instance. Refer to the authorizedTokenIssuer documentation for more details.
  final pulumi.Input<IdcApplicationAuthorizedTokenIssuer?>? authorizedTokenIssuer;
  /// IAM role ARN for the Amazon Redshift IAM Identity Center application instance.
  final pulumi.Input<String?>? iamRoleArn;
  /// Display name for the Amazon Redshift IAM Identity Center application instance.
  final pulumi.Input<String?>? idcDisplayName;
  /// ARN of the IAM Identity Center instance where Amazon Redshift creates a new managed application.
  final pulumi.Input<String?>? idcInstanceArn;
  /// ARN for the Amazon Redshift IAM Identity Center application.
  final pulumi.Input<String?>? idcManagedApplicationArn;
  /// Namespace for the Amazon Redshift IAM Identity Center application instance.
  final pulumi.Input<String?>? identityNamespace;
  /// ARN of the Redshift application in IAM Identity Center.
  final pulumi.Input<String?>? redshiftIdcApplicationArn;
  /// Name of the Redshift application in IAM Identity Center.
  final pulumi.Input<String?>? redshiftIdcApplicationName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Collection of service integrations for the Redshift IAM Identity Center application. Refer to the serviceIntegration documentation for more details.
  final pulumi.Input<IdcApplicationServiceIntegration?>? serviceIntegration;
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [IdcApplicationState].
  /// [applicationType] Type of application being created. Valid values are `None` or `Lakehouse`.
  /// [authorizedTokenIssuer] Token issuer list for the Amazon Redshift IAM Identity Center application instance. Refer to the authorizedTokenIssuer documentation for more details.
  /// [iamRoleArn] IAM role ARN for the Amazon Redshift IAM Identity Center application instance.
  /// [idcDisplayName] Display name for the Amazon Redshift IAM Identity Center application instance.
  /// [idcInstanceArn] ARN of the IAM Identity Center instance where Amazon Redshift creates a new managed application.
  /// [idcManagedApplicationArn] ARN for the Amazon Redshift IAM Identity Center application.
  /// [identityNamespace] Namespace for the Amazon Redshift IAM Identity Center application instance.
  /// [redshiftIdcApplicationArn] ARN of the Redshift application in IAM Identity Center.
  /// [redshiftIdcApplicationName] Name of the Redshift application in IAM Identity Center.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceIntegration] Collection of service integrations for the Redshift IAM Identity Center application. Refer to the serviceIntegration documentation for more details.
  /// [tags] Optional.
  /// [tagsAll] Optional.
  const IdcApplicationState({
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
      applicationType: (() { final guardedValue = map['applicationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizedTokenIssuer: (() { final guardedValue = map['authorizedTokenIssuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdcApplicationAuthorizedTokenIssuer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      iamRoleArn: (() { final guardedValue = map['iamRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idcDisplayName: (() { final guardedValue = map['idcDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idcInstanceArn: (() { final guardedValue = map['idcInstanceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idcManagedApplicationArn: (() { final guardedValue = map['idcManagedApplicationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityNamespace: (() { final guardedValue = map['identityNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redshiftIdcApplicationArn: (() { final guardedValue = map['redshiftIdcApplicationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redshiftIdcApplicationName: (() { final guardedValue = map['redshiftIdcApplicationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceIntegration: (() { final guardedValue = map['serviceIntegration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdcApplicationServiceIntegration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
