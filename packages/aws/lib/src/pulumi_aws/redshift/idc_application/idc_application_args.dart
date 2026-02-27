// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../idc_application_authorized_token_issuer/idc_application_authorized_token_issuer.dart';
import '../idc_application_service_integration/idc_application_service_integration.dart';

/// The set of arguments for IdcApplication.
class IdcApplicationArgs {
  /// Type of application being created. Valid values are `None` or `Lakehouse`.
  final Input<String>? applicationType;

  /// Token issuer list for the Amazon Redshift IAM Identity Center application instance. Refer to the authorized_token_issuer documentation for more details.
  final Input<IdcApplicationAuthorizedTokenIssuer>? authorizedTokenIssuer;

  /// IAM role ARN for the Amazon Redshift IAM Identity Center application instance.
  final Input<String> iamRoleArn;

  /// Display name for the Amazon Redshift IAM Identity Center application instance.
  final Input<String> idcDisplayName;

  /// ARN of the IAM Identity Center instance where Amazon Redshift creates a new managed application.
  final Input<String> idcInstanceArn;

  /// Namespace for the Amazon Redshift IAM Identity Center application instance.
  final Input<String>? identityNamespace;

  /// Name of the Redshift application in IAM Identity Center.
  final Input<String> redshiftIdcApplicationName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Collection of service integrations for the Redshift IAM Identity Center application. Refer to the service_integration documentation for more details.
  final Input<IdcApplicationServiceIntegration>? serviceIntegration;
  final Input<Map<String, String>>? tags;

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
    final map = <String, dynamic>{};
    final applicationTypeValue = applicationType;
    if (applicationTypeValue != null) {
      map['applicationType'] = applicationTypeValue;
    }
    final authorizedTokenIssuerValue = authorizedTokenIssuer;
    if (authorizedTokenIssuerValue != null) {
      map['authorizedTokenIssuer'] = Input.mapOptionalInputValue<
              IdcApplicationAuthorizedTokenIssuer, Map<String, dynamic>>(
          authorizedTokenIssuerValue, (value) => value.toMap());
    }
    map['iamRoleArn'] = iamRoleArn;
    map['idcDisplayName'] = idcDisplayName;
    map['idcInstanceArn'] = idcInstanceArn;
    final identityNamespaceValue = identityNamespace;
    if (identityNamespaceValue != null) {
      map['identityNamespace'] = identityNamespaceValue;
    }
    map['redshiftIdcApplicationName'] = redshiftIdcApplicationName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final serviceIntegrationValue = serviceIntegration;
    if (serviceIntegrationValue != null) {
      map['serviceIntegration'] = Input.mapOptionalInputValue<
              IdcApplicationServiceIntegration, Map<String, dynamic>>(
          serviceIntegrationValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory IdcApplicationArgs.fromMap(Map<String, dynamic> map) {
    return IdcApplicationArgs(
      applicationType: Input.asOptionalInput<String>(map['applicationType']),
      authorizedTokenIssuer:
          Input.asOptionalInput<IdcApplicationAuthorizedTokenIssuer>(
              map['authorizedTokenIssuer']),
      iamRoleArn: Input.asInput<String>(map['iamRoleArn']),
      idcDisplayName: Input.asInput<String>(map['idcDisplayName']),
      idcInstanceArn: Input.asInput<String>(map['idcInstanceArn']),
      identityNamespace:
          Input.asOptionalInput<String>(map['identityNamespace']),
      redshiftIdcApplicationName:
          Input.asInput<String>(map['redshiftIdcApplicationName']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceIntegration:
          Input.asOptionalInput<IdcApplicationServiceIntegration>(
              map['serviceIntegration']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
