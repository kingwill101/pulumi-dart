import 'package:pulumi/pulumi.dart';
import '../risk_configuration_account_takeover_risk_configuration/risk_configuration_account_takeover_risk_configuration.dart';
import '../risk_configuration_compromised_credentials_risk_configuration/risk_configuration_compromised_credentials_risk_configuration.dart';
import '../risk_configuration_risk_exception_configuration/risk_configuration_risk_exception_configuration.dart';
import 'risk_configuration_args.dart';

/// Provides a Cognito Risk Configuration resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cognito.RiskConfiguration("example", {
/// userPoolId: exampleAwsCognitoUserPool.id,
/// riskExceptionConfiguration: {
/// blockedIpRangeLists: ["10.10.10.10/32"],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.RiskConfiguration("example",
/// user_pool_id=example_aws_cognito_user_pool["id"],
/// risk_exception_configuration={
/// "blocked_ip_range_lists": ["10.10.10.10/32"],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Cognito.RiskConfiguration("example", new()
/// {
/// UserPoolId = exampleAwsCognitoUserPool.Id,
/// RiskExceptionConfiguration = new Aws.Cognito.Inputs.RiskConfigurationRiskExceptionConfigurationArgs
/// {
/// BlockedIpRangeLists = new[]
/// {
/// "10.10.10.10/32",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cognito.NewRiskConfiguration(ctx, "example", &cognito.RiskConfigurationArgs{
/// UserPoolId: pulumi.Any(exampleAwsCognitoUserPool.Id),
/// RiskExceptionConfiguration: &cognito.RiskConfigurationRiskExceptionConfigurationArgs{
/// BlockedIpRangeLists: pulumi.StringArray{
/// pulumi.String("10.10.10.10/32"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cognito.RiskConfiguration;
/// import com.pulumi.aws.cognito.RiskConfigurationArgs;
/// import com.pulumi.aws.cognito.inputs.RiskConfigurationRiskExceptionConfigurationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new RiskConfiguration("example", RiskConfigurationArgs.builder()
/// .userPoolId(exampleAwsCognitoUserPool.id())
/// .riskExceptionConfiguration(RiskConfigurationRiskExceptionConfigurationArgs.builder()
/// .blockedIpRangeLists("10.10.10.10/32")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cognito:RiskConfiguration
/// properties:
/// userPoolId: ${exampleAwsCognitoUserPool.id}
/// riskExceptionConfiguration:
/// blockedIpRangeLists:
/// - 10.10.10.10/32
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Import using the user pool ID and Client ID separated by a `:`:
///
///
/// **Using `pulumi import` to import** Cognito Risk Configurations using the user pool ID or the user pool ID and Client Id separated by a `:`. For example:
///
/// Import using the user pool ID:
///
/// ```sh
/// $ pulumi import aws:cognito/riskConfiguration:RiskConfiguration main example
/// ```
///
/// Import using the user pool ID and Client ID separated by a `:`:
///
/// ```sh
/// $ pulumi import aws:cognito/riskConfiguration:RiskConfiguration main example:example
/// ```
class RiskConfiguration extends CustomResource {
  /// The account takeover risk configuration. See details below.
  late final Output<RiskConfigurationAccountTakeoverRiskConfiguration?>
      accountTakeoverRiskConfiguration;

  /// The app client ID. When the client ID is not provided, the same risk configuration is applied to all the clients in the User Pool.
  late final Output<String?> clientId;

  /// The compromised credentials risk configuration. See details below.
  late final Output<RiskConfigurationCompromisedCredentialsRiskConfiguration?>
      compromisedCredentialsRiskConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The configuration to override the risk decision. See details below.
  late final Output<RiskConfigurationRiskExceptionConfiguration?>
      riskExceptionConfiguration;

  /// The user pool ID.
  late final Output<String> userPoolId;

  RiskConfiguration(
    String name, {
    RiskConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cognito/riskConfiguration:RiskConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountTakeoverRiskConfiguration = Output.createUnknown<
        RiskConfigurationAccountTakeoverRiskConfiguration?>();
    this.clientId = Output.createUnknown<String?>();
    this.compromisedCredentialsRiskConfiguration = Output.createUnknown<
        RiskConfigurationCompromisedCredentialsRiskConfiguration?>();
    this.region = Output.createUnknown<String>();
    this.riskExceptionConfiguration =
        Output.createUnknown<RiskConfigurationRiskExceptionConfiguration?>();
    this.userPoolId = Output.createUnknown<String>();
  }
}
