import 'package:pulumi/pulumi.dart' as pulumi;
import 'risk_configuration_account_takeover_risk_configuration.dart';
import 'risk_configuration_args.dart';
import 'risk_configuration_compromised_credentials_risk_configuration.dart';
import 'risk_configuration_risk_exception_configuration.dart';
import 'risk_configuration_state.dart';

/// Provides a Cognito Risk Configuration resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cognito.RiskConfiguration("example", {
///     riskExceptionConfiguration: {
///         blockedIpRangeLists: ["10.10.10.10/32"],
///     },
///     userPoolId: exampleAwsCognitoUserPool.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.RiskConfiguration("example",
///     risk_exception_configuration={
///         "blocked_ip_range_lists": ["10.10.10.10/32"],
///     },
///     user_pool_id=example_aws_cognito_user_pool["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Cognito.RiskConfiguration("example", new()
///     {
///         RiskExceptionConfiguration = new Aws.Cognito.Inputs.RiskConfigurationRiskExceptionConfigurationArgs
///         {
///             BlockedIpRangeLists = new[]
///             {
///                 "10.10.10.10/32",
///             },
///         },
///         UserPoolId = exampleAwsCognitoUserPool.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognito.NewRiskConfiguration(ctx, "example", &cognito.RiskConfigurationArgs{
/// 			RiskExceptionConfiguration: &cognito.RiskConfigurationRiskExceptionConfigurationArgs{
/// 				BlockedIpRangeLists: pulumi.StringArray{
/// 					pulumi.String("10.10.10.10/32"),
/// 				},
/// 			},
/// 			UserPoolId: pulumi.Any(exampleAwsCognitoUserPool.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cognito_riskconfiguration" "example" {
///   risk_exception_configuration = {
///     blocked_ip_range_lists = ["10.10.10.10/32"]
///   }
///   user_pool_id = exampleAwsCognitoUserPool.id
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new RiskConfiguration("example", RiskConfigurationArgs.builder()
///             .riskExceptionConfiguration(RiskConfigurationRiskExceptionConfigurationArgs.builder()
///                 .blockedIpRangeLists("10.10.10.10/32")
///                 .build())
///             .userPoolId(exampleAwsCognitoUserPool.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cognito:RiskConfiguration
///     properties:
///       riskExceptionConfiguration:
///         blockedIpRangeLists:
///           - 10.10.10.10/32
///       userPoolId: ${exampleAwsCognitoUserPool.id}
/// ```
///
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
class RiskConfiguration extends pulumi.CustomResource {
  /// The account takeover risk configuration. See details below.
  late final pulumi.Output<RiskConfigurationAccountTakeoverRiskConfiguration?> accountTakeoverRiskConfiguration;
  /// The app client ID. When the client ID is not provided, the same risk configuration is applied to all the clients in the User Pool.
  late final pulumi.Output<String?> clientId;
  /// The compromised credentials risk configuration. See details below.
  late final pulumi.Output<RiskConfigurationCompromisedCredentialsRiskConfiguration?> compromisedCredentialsRiskConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The configuration to override the risk decision. See details below.
  late final pulumi.Output<RiskConfigurationRiskExceptionConfiguration?> riskExceptionConfiguration;
  /// The user pool ID.
  late final pulumi.Output<String> userPoolId;

  /// Creates a new [RiskConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RiskConfiguration]. {@macro pulumi_cognito_risk_configuration_risk_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RiskConfiguration(
    String name, {
    RiskConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/riskConfiguration:RiskConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accountTakeoverRiskConfiguration = registerOutput<RiskConfigurationAccountTakeoverRiskConfiguration?>('accountTakeoverRiskConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RiskConfigurationAccountTakeoverRiskConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientId = registerOutput<String?>('clientId');
    compromisedCredentialsRiskConfiguration = registerOutput<RiskConfigurationCompromisedCredentialsRiskConfiguration?>('compromisedCredentialsRiskConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RiskConfigurationCompromisedCredentialsRiskConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    riskExceptionConfiguration = registerOutput<RiskConfigurationRiskExceptionConfiguration?>('riskExceptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RiskConfigurationRiskExceptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    userPoolId = registerOutput<String>('userPoolId');
  }

  /// Gets an existing [RiskConfiguration] resource's state with the given [name] and [id].
  static RiskConfiguration get(
    String name,
    pulumi.Input<String> id, {
    RiskConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RiskConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RiskConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/riskConfiguration:RiskConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountTakeoverRiskConfiguration = registerOutput<RiskConfigurationAccountTakeoverRiskConfiguration?>('accountTakeoverRiskConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RiskConfigurationAccountTakeoverRiskConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientId = registerOutput<String?>('clientId');
    compromisedCredentialsRiskConfiguration = registerOutput<RiskConfigurationCompromisedCredentialsRiskConfiguration?>('compromisedCredentialsRiskConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RiskConfigurationCompromisedCredentialsRiskConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    riskExceptionConfiguration = registerOutput<RiskConfigurationRiskExceptionConfiguration?>('riskExceptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RiskConfigurationRiskExceptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    userPoolId = registerOutput<String>('userPoolId');
  }

  /// Creates a typed reference to an existing [RiskConfiguration] resource.
  RiskConfiguration.reference(String urn)
    : super(
        'aws:cognito/riskConfiguration:RiskConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountTakeoverRiskConfiguration = registerOutput<RiskConfigurationAccountTakeoverRiskConfiguration?>('accountTakeoverRiskConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RiskConfigurationAccountTakeoverRiskConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientId = registerOutput<String?>('clientId');
    compromisedCredentialsRiskConfiguration = registerOutput<RiskConfigurationCompromisedCredentialsRiskConfiguration?>('compromisedCredentialsRiskConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RiskConfigurationCompromisedCredentialsRiskConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    riskExceptionConfiguration = registerOutput<RiskConfigurationRiskExceptionConfiguration?>('riskExceptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RiskConfigurationRiskExceptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    userPoolId = registerOutput<String>('userPoolId');
  }
}
