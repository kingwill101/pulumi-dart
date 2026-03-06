// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workforce_cognito_config.dart';
import 'workforce_oidc_config.dart';
import 'workforce_source_ip_config.dart';
import 'workforce_workforce_vpc_config.dart';

/// {@template pulumi_sagemaker_workforce_workforce_args_doc}
/// The set of arguments for Workforce.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_workforce_workforce_args_doc}
class WorkforceArgs {
  /// Use this parameter to configure an Amazon Cognito private workforce. A single Cognito workforce is created using and corresponds to a single Amazon Cognito user pool. Conflicts with `oidc_config`. see Cognito Config details below.
  final pulumi.Input<WorkforceCognitoConfig>? cognitoConfig;
  /// Use this parameter to configure a private workforce using your own OIDC Identity Provider. Conflicts with `cognito_config`. see OIDC Config details below.
  final pulumi.Input<WorkforceOidcConfig>? oidcConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of IP address ranges Used to create an allow list of IP addresses for a private workforce. By default, a workforce isn't restricted to specific IP addresses. see Source Ip Config details below.
  final pulumi.Input<WorkforceSourceIpConfig>? sourceIpConfig;
  /// The name of the Workforce (must be unique).
  final pulumi.Input<String> workforceName;
  /// configure a workforce using VPC. see Workforce VPC Config details below.
  final pulumi.Input<WorkforceWorkforceVpcConfig>? workforceVpcConfig;

  /// Creates a new [WorkforceArgs].
  /// [cognitoConfig] Use this parameter to configure an Amazon Cognito private workforce. A single Cognito workforce is created using and corresponds to a single Amazon Cognito user pool. Conflicts with `oidc_config`. see Cognito Config details below.
  /// [oidcConfig] Use this parameter to configure a private workforce using your own OIDC Identity Provider. Conflicts with `cognito_config`. see OIDC Config details below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceIpConfig] A list of IP address ranges Used to create an allow list of IP addresses for a private workforce. By default, a workforce isn't restricted to specific IP addresses. see Source Ip Config details below.
  /// [workforceName] The name of the Workforce (must be unique).
  /// [workforceVpcConfig] configure a workforce using VPC. see Workforce VPC Config details below.
  const WorkforceArgs({
    this.cognitoConfig,
    this.oidcConfig,
    this.region,
    this.sourceIpConfig,
    required this.workforceName,
    this.workforceVpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cognitoConfig': ?pulumi.Input.mapOptionalInputValue<WorkforceCognitoConfig, Map<String, dynamic>>(cognitoConfig, (value) => value.toMap()),
      'oidcConfig': ?pulumi.Input.mapOptionalInputValue<WorkforceOidcConfig, Map<String, dynamic>>(oidcConfig, (value) => value.toMap()),
      'region': ?region,
      'sourceIpConfig': ?pulumi.Input.mapOptionalInputValue<WorkforceSourceIpConfig, Map<String, dynamic>>(sourceIpConfig, (value) => value.toMap()),
      'workforceName': workforceName,
      'workforceVpcConfig': ?pulumi.Input.mapOptionalInputValue<WorkforceWorkforceVpcConfig, Map<String, dynamic>>(workforceVpcConfig, (value) => value.toMap()),
    };
  }

  factory WorkforceArgs.fromMap(Map<String, dynamic> map) {
    return WorkforceArgs(
      cognitoConfig: (() { final guardedValue = map['cognitoConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkforceCognitoConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oidcConfig: (() { final guardedValue = map['oidcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkforceOidcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceIpConfig: (() { final guardedValue = map['sourceIpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkforceSourceIpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workforceName: pulumi.Input.fromValue(map['workforceName'] as String),
      workforceVpcConfig: (() { final guardedValue = map['workforceVpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkforceWorkforceVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

