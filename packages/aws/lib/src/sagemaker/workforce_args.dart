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
  WorkforceArgs({
    WorkforceCognitoConfig? cognitoConfig,
    WorkforceOidcConfig? oidcConfig,
    String? region,
    WorkforceSourceIpConfig? sourceIpConfig,
    required String workforceName,
    WorkforceWorkforceVpcConfig? workforceVpcConfig,
  })  : cognitoConfig =
            pulumi.Input.asOptionalInput<WorkforceCognitoConfig>(cognitoConfig),
        oidcConfig =
            pulumi.Input.asOptionalInput<WorkforceOidcConfig>(oidcConfig),
        region = pulumi.Input.asOptionalInput<String>(region),
        sourceIpConfig = pulumi.Input.asOptionalInput<WorkforceSourceIpConfig>(
            sourceIpConfig),
        workforceName = pulumi.Input.asInput<String>(workforceName),
        workforceVpcConfig =
            pulumi.Input.asOptionalInput<WorkforceWorkforceVpcConfig>(
                workforceVpcConfig);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cognitoConfigValue = cognitoConfig;
    if (cognitoConfigValue != null) {
      map['cognitoConfig'] = pulumi.Input.mapOptionalInputValue<
          WorkforceCognitoConfig,
          Map<String, dynamic>>(cognitoConfigValue, (value) => value.toMap());
    }
    final oidcConfigValue = oidcConfig;
    if (oidcConfigValue != null) {
      map['oidcConfig'] = pulumi.Input.mapOptionalInputValue<
          WorkforceOidcConfig,
          Map<String, dynamic>>(oidcConfigValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sourceIpConfigValue = sourceIpConfig;
    if (sourceIpConfigValue != null) {
      map['sourceIpConfig'] = pulumi.Input.mapOptionalInputValue<
          WorkforceSourceIpConfig,
          Map<String, dynamic>>(sourceIpConfigValue, (value) => value.toMap());
    }
    map['workforceName'] = workforceName;
    final workforceVpcConfigValue = workforceVpcConfig;
    if (workforceVpcConfigValue != null) {
      map['workforceVpcConfig'] = pulumi.Input.mapOptionalInputValue<
              WorkforceWorkforceVpcConfig, Map<String, dynamic>>(
          workforceVpcConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory WorkforceArgs.fromMap(Map<String, dynamic> map) {
    return WorkforceArgs(
      cognitoConfig: map['cognitoConfig'] == null
          ? null
          : WorkforceCognitoConfig.fromMap(
              (map['cognitoConfig'] as Map).cast<String, dynamic>()),
      oidcConfig: map['oidcConfig'] == null
          ? null
          : WorkforceOidcConfig.fromMap(
              (map['oidcConfig'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      sourceIpConfig: map['sourceIpConfig'] == null
          ? null
          : WorkforceSourceIpConfig.fromMap(
              (map['sourceIpConfig'] as Map).cast<String, dynamic>()),
      workforceName: map['workforceName'] as String,
      workforceVpcConfig: map['workforceVpcConfig'] == null
          ? null
          : WorkforceWorkforceVpcConfig.fromMap(
              (map['workforceVpcConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
