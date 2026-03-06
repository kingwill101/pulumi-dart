// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workforce_cognito_config.dart';
import 'workforce_oidc_config.dart';
import 'workforce_source_ip_config.dart';
import 'workforce_workforce_vpc_config.dart';

/// Input properties used for looking up and filtering Workforce resources.
class WorkforceState {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Workforce.
  final pulumi.Input<String>? arn;
  /// Use this parameter to configure an Amazon Cognito private workforce. A single Cognito workforce is created using and corresponds to a single Amazon Cognito user pool. Conflicts with `oidc_config`. see Cognito Config details below.
  final pulumi.Input<WorkforceCognitoConfig>? cognitoConfig;
  /// Use this parameter to configure a private workforce using your own OIDC Identity Provider. Conflicts with `cognito_config`. see OIDC Config details below.
  final pulumi.Input<WorkforceOidcConfig>? oidcConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of IP address ranges Used to create an allow list of IP addresses for a private workforce. By default, a workforce isn't restricted to specific IP addresses. see Source Ip Config details below.
  final pulumi.Input<WorkforceSourceIpConfig>? sourceIpConfig;
  /// The subdomain for your OIDC Identity Provider.
  final pulumi.Input<String>? subdomain;
  /// The name of the Workforce (must be unique).
  final pulumi.Input<String>? workforceName;
  /// configure a workforce using VPC. see Workforce VPC Config details below.
  final pulumi.Input<WorkforceWorkforceVpcConfig>? workforceVpcConfig;

  /// Creates a new [WorkforceState].
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this Workforce.
  /// [cognitoConfig] Use this parameter to configure an Amazon Cognito private workforce. A single Cognito workforce is created using and corresponds to a single Amazon Cognito user pool. Conflicts with `oidc_config`. see Cognito Config details below.
  /// [oidcConfig] Use this parameter to configure a private workforce using your own OIDC Identity Provider. Conflicts with `cognito_config`. see OIDC Config details below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceIpConfig] A list of IP address ranges Used to create an allow list of IP addresses for a private workforce. By default, a workforce isn't restricted to specific IP addresses. see Source Ip Config details below.
  /// [subdomain] The subdomain for your OIDC Identity Provider.
  /// [workforceName] The name of the Workforce (must be unique).
  /// [workforceVpcConfig] configure a workforce using VPC. see Workforce VPC Config details below.
  const WorkforceState({
    this.arn,
    this.cognitoConfig,
    this.oidcConfig,
    this.region,
    this.sourceIpConfig,
    this.subdomain,
    this.workforceName,
    this.workforceVpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cognitoConfig': ?pulumi.Input.mapOptionalInputValue<WorkforceCognitoConfig, Map<String, dynamic>>(cognitoConfig, (value) => value.toMap()),
      'oidcConfig': ?pulumi.Input.mapOptionalInputValue<WorkforceOidcConfig, Map<String, dynamic>>(oidcConfig, (value) => value.toMap()),
      'region': ?region,
      'sourceIpConfig': ?pulumi.Input.mapOptionalInputValue<WorkforceSourceIpConfig, Map<String, dynamic>>(sourceIpConfig, (value) => value.toMap()),
      'subdomain': ?subdomain,
      'workforceName': ?workforceName,
      'workforceVpcConfig': ?pulumi.Input.mapOptionalInputValue<WorkforceWorkforceVpcConfig, Map<String, dynamic>>(workforceVpcConfig, (value) => value.toMap()),
    };
  }

  factory WorkforceState.fromMap(Map<String, dynamic> map) {
    return WorkforceState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cognitoConfig: (() { final guardedValue = map['cognitoConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkforceCognitoConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oidcConfig: (() { final guardedValue = map['oidcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkforceOidcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceIpConfig: (() { final guardedValue = map['sourceIpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkforceSourceIpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subdomain: (() { final guardedValue = map['subdomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workforceName: (() { final guardedValue = map['workforceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workforceVpcConfig: (() { final guardedValue = map['workforceVpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkforceWorkforceVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

