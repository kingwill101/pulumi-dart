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
    pulumi.Output<String>? applicationType,
    pulumi.Output<IdcApplicationAuthorizedTokenIssuer>? authorizedTokenIssuer,
    pulumi.Output<String>? iamRoleArn,
    pulumi.Output<String>? idcDisplayName,
    pulumi.Output<String>? idcInstanceArn,
    pulumi.Output<String>? idcManagedApplicationArn,
    pulumi.Output<String>? identityNamespace,
    pulumi.Output<String>? redshiftIdcApplicationArn,
    pulumi.Output<String>? redshiftIdcApplicationName,
    pulumi.Output<String>? region,
    pulumi.Output<IdcApplicationServiceIntegration>? serviceIntegration,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      applicationType = pulumi.Input.asOptionalInput<String>(applicationType),
      authorizedTokenIssuer = pulumi.Input.asOptionalInput<IdcApplicationAuthorizedTokenIssuer>(authorizedTokenIssuer),
      iamRoleArn = pulumi.Input.asOptionalInput<String>(iamRoleArn),
      idcDisplayName = pulumi.Input.asOptionalInput<String>(idcDisplayName),
      idcInstanceArn = pulumi.Input.asOptionalInput<String>(idcInstanceArn),
      idcManagedApplicationArn = pulumi.Input.asOptionalInput<String>(idcManagedApplicationArn),
      identityNamespace = pulumi.Input.asOptionalInput<String>(identityNamespace),
      redshiftIdcApplicationArn = pulumi.Input.asOptionalInput<String>(redshiftIdcApplicationArn),
      redshiftIdcApplicationName = pulumi.Input.asOptionalInput<String>(redshiftIdcApplicationName),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceIntegration = pulumi.Input.asOptionalInput<IdcApplicationServiceIntegration>(serviceIntegration),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      applicationType: map['applicationType'] == null ? null : pulumi.Output.create<String>(map['applicationType'] as String),
      authorizedTokenIssuer: map['authorizedTokenIssuer'] == null ? null : pulumi.Output.create<IdcApplicationAuthorizedTokenIssuer>(IdcApplicationAuthorizedTokenIssuer.fromMap((map['authorizedTokenIssuer'] as Map).cast<String, dynamic>())),
      iamRoleArn: map['iamRoleArn'] == null ? null : pulumi.Output.create<String>(map['iamRoleArn'] as String),
      idcDisplayName: map['idcDisplayName'] == null ? null : pulumi.Output.create<String>(map['idcDisplayName'] as String),
      idcInstanceArn: map['idcInstanceArn'] == null ? null : pulumi.Output.create<String>(map['idcInstanceArn'] as String),
      idcManagedApplicationArn: map['idcManagedApplicationArn'] == null ? null : pulumi.Output.create<String>(map['idcManagedApplicationArn'] as String),
      identityNamespace: map['identityNamespace'] == null ? null : pulumi.Output.create<String>(map['identityNamespace'] as String),
      redshiftIdcApplicationArn: map['redshiftIdcApplicationArn'] == null ? null : pulumi.Output.create<String>(map['redshiftIdcApplicationArn'] as String),
      redshiftIdcApplicationName: map['redshiftIdcApplicationName'] == null ? null : pulumi.Output.create<String>(map['redshiftIdcApplicationName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceIntegration: map['serviceIntegration'] == null ? null : pulumi.Output.create<IdcApplicationServiceIntegration>(IdcApplicationServiceIntegration.fromMap((map['serviceIntegration'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

