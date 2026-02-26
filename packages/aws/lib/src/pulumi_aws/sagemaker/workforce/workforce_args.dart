// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../workforce_cognito_config/workforce_cognito_config.dart';
import '../workforce_oidc_config/workforce_oidc_config.dart';
import '../workforce_source_ip_config/workforce_source_ip_config.dart';
import '../workforce_workforce_vpc_config/workforce_workforce_vpc_config.dart';

/// The set of arguments for Workforce.
class WorkforceArgs {
  /// Use this parameter to configure an Amazon Cognito private workforce. A single Cognito workforce is created using and corresponds to a single Amazon Cognito user pool. Conflicts with <span pulumi-lang-nodejs="`oidcConfig`" pulumi-lang-dotnet="`OidcConfig`" pulumi-lang-go="`oidcConfig`" pulumi-lang-python="`oidc_config`" pulumi-lang-yaml="`oidcConfig`" pulumi-lang-java="`oidcConfig`">`oidc_config`</span>. see Cognito Config details below.
  final Input<WorkforceCognitoConfig>? cognitoConfig;

  /// Use this parameter to configure a private workforce using your own OIDC Identity Provider. Conflicts with <span pulumi-lang-nodejs="`cognitoConfig`" pulumi-lang-dotnet="`CognitoConfig`" pulumi-lang-go="`cognitoConfig`" pulumi-lang-python="`cognito_config`" pulumi-lang-yaml="`cognitoConfig`" pulumi-lang-java="`cognitoConfig`">`cognito_config`</span>. see OIDC Config details below.
  final Input<WorkforceOidcConfig>? oidcConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A list of IP address ranges Used to create an allow list of IP addresses for a private workforce. By default, a workforce isn't restricted to specific IP addresses. see Source Ip Config details below.
  final Input<WorkforceSourceIpConfig>? sourceIpConfig;

  /// The name of the Workforce (must be unique).
  final Input<String> workforceName;

  /// configure a workforce using VPC. see Workforce VPC Config details below.
  final Input<WorkforceWorkforceVpcConfig>? workforceVpcConfig;

  WorkforceArgs({
    this.cognitoConfig,
    this.oidcConfig,
    this.region,
    this.sourceIpConfig,
    required this.workforceName,
    this.workforceVpcConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cognitoConfigValue = cognitoConfig;
    if (cognitoConfigValue != null) {
      map['cognitoConfig'] = Input.mapOptionalInputValue<WorkforceCognitoConfig,
          Map<String, dynamic>>(cognitoConfigValue, (value) => value.toMap());
    }
    final oidcConfigValue = oidcConfig;
    if (oidcConfigValue != null) {
      map['oidcConfig'] = Input.mapOptionalInputValue<WorkforceOidcConfig,
          Map<String, dynamic>>(oidcConfigValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sourceIpConfigValue = sourceIpConfig;
    if (sourceIpConfigValue != null) {
      map['sourceIpConfig'] = Input.mapOptionalInputValue<
          WorkforceSourceIpConfig,
          Map<String, dynamic>>(sourceIpConfigValue, (value) => value.toMap());
    }
    map['workforceName'] = workforceName;
    final workforceVpcConfigValue = workforceVpcConfig;
    if (workforceVpcConfigValue != null) {
      map['workforceVpcConfig'] = Input.mapOptionalInputValue<
              WorkforceWorkforceVpcConfig, Map<String, dynamic>>(
          workforceVpcConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory WorkforceArgs.fromMap(Map<String, dynamic> map) {
    return WorkforceArgs(
      cognitoConfig:
          Input.asOptionalInput<WorkforceCognitoConfig>(map['cognitoConfig']),
      oidcConfig: Input.asOptionalInput<WorkforceOidcConfig>(map['oidcConfig']),
      region: Input.asOptionalInput<String>(map['region']),
      sourceIpConfig:
          Input.asOptionalInput<WorkforceSourceIpConfig>(map['sourceIpConfig']),
      workforceName: Input.asInput<String>(map['workforceName']),
      workforceVpcConfig: Input.asOptionalInput<WorkforceWorkforceVpcConfig>(
          map['workforceVpcConfig']),
    );
  }
}
