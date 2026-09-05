import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_blueprint_configuration_args.dart';
import 'environment_blueprint_configuration_state.dart';

/// Resource for managing an AWS DataZone Environment Blueprint Configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datazone.Domain("example", {
///     name: "example_domain",
///     domainExecutionRole: domainExecutionRole.arn,
/// });
/// const defaultDataLake = aws.datazone.getEnvironmentBlueprintOutput({
///     domainId: example.id,
///     name: "DefaultDataLake",
///     managed: true,
/// });
/// const exampleEnvironmentBlueprintConfiguration = new aws.datazone.EnvironmentBlueprintConfiguration("example", {
///     domainId: example.id,
///     environmentBlueprintId: defaultDataLake.id,
///     enabledRegions: ["us-east-1"],
///     regionalParameters: {
///         "us-east-1": {
///             s3Location: "s3://my-amazon-datazone-bucket",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datazone.Domain("example",
///     name="example_domain",
///     domain_execution_role=domain_execution_role["arn"])
/// default_data_lake = aws.datazone.get_environment_blueprint_output(domain_id=example.id,
///     name="DefaultDataLake",
///     managed=True)
/// example_environment_blueprint_configuration = aws.datazone.EnvironmentBlueprintConfiguration("example",
///     domain_id=example.id,
///     environment_blueprint_id=default_data_lake.id,
///     enabled_regions=["us-east-1"],
///     regional_parameters={
///         "us-east-1": {
///             "s3Location": "s3://my-amazon-datazone-bucket",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DataZone.Domain("example", new()
///     {
///         Name = "example_domain",
///         DomainExecutionRole = domainExecutionRole.Arn,
///     });
///
///     var defaultDataLake = Aws.DataZone.GetEnvironmentBlueprint.Invoke(new()
///     {
///         DomainId = example.Id,
///         Name = "DefaultDataLake",
///         Managed = true,
///     });
///
///     var exampleEnvironmentBlueprintConfiguration = new Aws.DataZone.EnvironmentBlueprintConfiguration("example", new()
///     {
///         DomainId = example.Id,
///         EnvironmentBlueprintId = defaultDataLake.Apply(getEnvironmentBlueprintResult => getEnvironmentBlueprintResult.Id),
///         EnabledRegions = new[]
///         {
///             "us-east-1",
///         },
///         RegionalParameters =
///         {
///             { "us-east-1", new InputMap<string>
///             {
///                 { "s3Location", "s3://my-amazon-datazone-bucket" },
///             } },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datazone"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := datazone.NewDomain(ctx, "example", &datazone.DomainArgs{
/// 			Name:                pulumi.String("example_domain"),
/// 			DomainExecutionRole: pulumi.Any(domainExecutionRole.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDataLake := datazone.GetEnvironmentBlueprintOutput(ctx, datazone.GetEnvironmentBlueprintOutputArgs{
/// 			DomainId: example.ID().ToIDOutput().ToStringOutput(),
/// 			Name:     pulumi.String("DefaultDataLake"),
/// 			Managed:  pulumi.Bool(true),
/// 		}, nil)
/// 		_, err = datazone.NewEnvironmentBlueprintConfiguration(ctx, "example", &datazone.EnvironmentBlueprintConfigurationArgs{
/// 			DomainId:               example.ID().ToIDOutput().ToStringOutput(),
/// 			EnvironmentBlueprintId: defaultDataLake.Id(),
/// 			EnabledRegions: pulumi.StringArray{
/// 				pulumi.String("us-east-1"),
/// 			},
/// 			RegionalParameters: pulumi.StringMapMap{
/// 				"us-east-1": pulumi.StringMap{
/// 					"s3Location": pulumi.String("s3://my-amazon-datazone-bucket"),
/// 				},
/// 			},
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
/// data "aws_datazone_getenvironmentblueprint" "defaultDataLake" {
///   domain_id = aws_datazone_domain.example.id
///   name      = "DefaultDataLake"
///   managed   = true
/// }
///
/// resource "aws_datazone_domain" "example" {
///   name                  = "example_domain"
///   domain_execution_role = domainExecutionRole.arn
/// }
/// resource "aws_datazone_environmentblueprintconfiguration" "example" {
///   domain_id                = aws_datazone_domain.example.id
///   environment_blueprint_id = data.aws_datazone_getenvironmentblueprint.defaultDataLake.id
///   enabled_regions          = ["us-east-1"]
///   regional_parameters = {
///     "us-east-1" = {
///       "s3Location" = "s3://my-amazon-datazone-bucket"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.datazone.Domain;
/// import com.pulumi.aws.datazone.DomainArgs;
/// import com.pulumi.aws.datazone.DatazoneFunctions;
/// import com.pulumi.aws.datazone.inputs.GetEnvironmentBlueprintArgs;
/// import com.pulumi.aws.datazone.EnvironmentBlueprintConfiguration;
/// import com.pulumi.aws.datazone.EnvironmentBlueprintConfigurationArgs;
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
///         var example = new Domain("example", DomainArgs.builder()
///             .name("example_domain")
///             .domainExecutionRole(domainExecutionRole.arn())
///             .build());
///
///         final var defaultDataLake = DatazoneFunctions.getEnvironmentBlueprint(GetEnvironmentBlueprintArgs.builder()
///             .domainId(example.id())
///             .name("DefaultDataLake")
///             .managed(true)
///             .build());
///
///         var exampleEnvironmentBlueprintConfiguration = new EnvironmentBlueprintConfiguration("exampleEnvironmentBlueprintConfiguration", EnvironmentBlueprintConfigurationArgs.builder()
///             .domainId(example.id())
///             .environmentBlueprintId(defaultDataLake.applyValue(_defaultDataLake -> _defaultDataLake.id()))
///             .enabledRegions("us-east-1")
///             .regionalParameters(Map.of("us-east-1", Map.of("s3Location", "s3://my-amazon-datazone-bucket")))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:datazone:Domain
///     properties:
///       name: example_domain
///       domainExecutionRole: ${domainExecutionRole.arn}
///   exampleEnvironmentBlueprintConfiguration:
///     type: aws:datazone:EnvironmentBlueprintConfiguration
///     name: example
///     properties:
///       domainId: ${example.id}
///       environmentBlueprintId: ${defaultDataLake.id}
///       enabledRegions:
///         - us-east-1
///       regionalParameters:
///         us-east-1:
///           s3Location: s3://my-amazon-datazone-bucket
/// variables:
///   defaultDataLake:
///     fn::invoke:
///       function: aws:datazone:getEnvironmentBlueprint
///       arguments:
///         domainId: ${example.id}
///         name: DefaultDataLake
///         managed: true
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `domainId` - (String) ID of the DataZone domain.
/// * `environmentBlueprintId` - (String) ID of the environment blueprint.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import DataZone Environment Blueprint Configuration using the `domainId` and `environmentBlueprintId`, separated by a `/`. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/environmentBlueprintConfiguration:EnvironmentBlueprintConfiguration example domain-id-12345/environment-blueprint-id-54321
/// ```
class EnvironmentBlueprintConfiguration extends pulumi.CustomResource {
  /// ID of the Domain.
  late final pulumi.Output<String> domainId;
  /// Regions in which the blueprint is enabled
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>> enabledRegions;
  /// ID of the Environment Blueprint
  late final pulumi.Output<String> environmentBlueprintId;
  /// A map of global parameters to configure for the blueprint across all regions.
  late final pulumi.Output<Map<String, String>?> globalParameters;
  /// ARN of the manage access role with which this blueprint is created.
  late final pulumi.Output<String?> manageAccessRoleArn;
  /// ARN of the provisioning role with which this blueprint is created.
  late final pulumi.Output<String?> provisioningRoleArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Parameters for each region in which the blueprint is enabled
  late final pulumi.Output<Map<String, Map<String, String>>?> regionalParameters;

  /// Creates a new [EnvironmentBlueprintConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentBlueprintConfiguration]. {@macro pulumi_datazone_environment_blueprint_configuration_environment_blueprint_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentBlueprintConfiguration(
    String name, {
    EnvironmentBlueprintConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datazone/environmentBlueprintConfiguration:EnvironmentBlueprintConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    domainId = registerOutput<String>('domainId');
    enabledRegions = registerOutput<List<String>>('enabledRegions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    environmentBlueprintId = registerOutput<String>('environmentBlueprintId');
    globalParameters = registerOutput<Map<String, String>?>('globalParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    manageAccessRoleArn = registerOutput<String?>('manageAccessRoleArn');
    provisioningRoleArn = registerOutput<String?>('provisioningRoleArn');
    region = registerOutput<String>('region');
    regionalParameters = registerOutput<Map<String, Map<String, String>>?>('regionalParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>()); });
  }

  /// Gets an existing [EnvironmentBlueprintConfiguration] resource's state with the given [name] and [id].
  static EnvironmentBlueprintConfiguration get(
    String name,
    pulumi.Input<String> id, {
    EnvironmentBlueprintConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EnvironmentBlueprintConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EnvironmentBlueprintConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datazone/environmentBlueprintConfiguration:EnvironmentBlueprintConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    domainId = registerOutput<String>('domainId');
    enabledRegions = registerOutput<List<String>>('enabledRegions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    environmentBlueprintId = registerOutput<String>('environmentBlueprintId');
    globalParameters = registerOutput<Map<String, String>?>('globalParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    manageAccessRoleArn = registerOutput<String?>('manageAccessRoleArn');
    provisioningRoleArn = registerOutput<String?>('provisioningRoleArn');
    region = registerOutput<String>('region');
    regionalParameters = registerOutput<Map<String, Map<String, String>>?>('regionalParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>()); });
  }

  /// Creates a typed reference to an existing [EnvironmentBlueprintConfiguration] resource.
  EnvironmentBlueprintConfiguration.reference(String urn)
    : super(
        'aws:datazone/environmentBlueprintConfiguration:EnvironmentBlueprintConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    domainId = registerOutput<String>('domainId');
    enabledRegions = registerOutput<List<String>>('enabledRegions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    environmentBlueprintId = registerOutput<String>('environmentBlueprintId');
    globalParameters = registerOutput<Map<String, String>?>('globalParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    manageAccessRoleArn = registerOutput<String?>('manageAccessRoleArn');
    provisioningRoleArn = registerOutput<String?>('provisioningRoleArn');
    region = registerOutput<String>('region');
    regionalParameters = registerOutput<Map<String, Map<String, String>>?>('regionalParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>()); });
  }
}
