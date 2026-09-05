import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_args.dart';
import 'environment_last_deployment.dart';
import 'environment_provisioned_resource.dart';
import 'environment_state.dart';
import 'environment_timeouts.dart';
import 'environment_user_parameter.dart';

/// Resource for managing an AWS DataZone Environment.
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
/// const example = new aws.datazone.Environment("example", {
///     userParameters: [
///         {
///             name: "consumerGlueDbName",
///             value: "consumer",
///         },
///         {
///             name: "producerGlueDbName",
///             value: "producer",
///         },
///         {
///             name: "workgroupName",
///             value: "workgroup",
///         },
///     ],
///     name: "example",
///     blueprintIdentifier: test.environmentBlueprintId,
///     profileIdentifier: testAwsDatazoneEnvironmentProfile.id,
///     projectIdentifier: testAwsDatazoneProject.id,
///     domainIdentifier: testAwsDatazoneDomain.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datazone.Environment("example",
///     user_parameters=[
///         {
///             "name": "consumerGlueDbName",
///             "value": "consumer",
///         },
///         {
///             "name": "producerGlueDbName",
///             "value": "producer",
///         },
///         {
///             "name": "workgroupName",
///             "value": "workgroup",
///         },
///     ],
///     name="example",
///     blueprint_identifier=test["environmentBlueprintId"],
///     profile_identifier=test_aws_datazone_environment_profile["id"],
///     project_identifier=test_aws_datazone_project["id"],
///     domain_identifier=test_aws_datazone_domain["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DataZone.Environment("example", new()
///     {
///         UserParameters = new[]
///         {
///             new Aws.DataZone.Inputs.EnvironmentUserParameterArgs
///             {
///                 Name = "consumerGlueDbName",
///                 Value = "consumer",
///             },
///             new Aws.DataZone.Inputs.EnvironmentUserParameterArgs
///             {
///                 Name = "producerGlueDbName",
///                 Value = "producer",
///             },
///             new Aws.DataZone.Inputs.EnvironmentUserParameterArgs
///             {
///                 Name = "workgroupName",
///                 Value = "workgroup",
///             },
///         },
///         Name = "example",
///         BlueprintIdentifier = test.EnvironmentBlueprintId,
///         ProfileIdentifier = testAwsDatazoneEnvironmentProfile.Id,
///         ProjectIdentifier = testAwsDatazoneProject.Id,
///         DomainIdentifier = testAwsDatazoneDomain.Id,
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
/// 		_, err := datazone.NewEnvironment(ctx, "example", &datazone.EnvironmentArgs{
/// 			UserParameters: datazone.EnvironmentUserParameterArray{
/// 				&datazone.EnvironmentUserParameterArgs{
/// 					Name:  pulumi.String("consumerGlueDbName"),
/// 					Value: pulumi.String("consumer"),
/// 				},
/// 				&datazone.EnvironmentUserParameterArgs{
/// 					Name:  pulumi.String("producerGlueDbName"),
/// 					Value: pulumi.String("producer"),
/// 				},
/// 				&datazone.EnvironmentUserParameterArgs{
/// 					Name:  pulumi.String("workgroupName"),
/// 					Value: pulumi.String("workgroup"),
/// 				},
/// 			},
/// 			Name:                pulumi.String("example"),
/// 			BlueprintIdentifier: pulumi.Any(test.EnvironmentBlueprintId),
/// 			ProfileIdentifier:   pulumi.Any(testAwsDatazoneEnvironmentProfile.Id),
/// 			ProjectIdentifier:   pulumi.Any(testAwsDatazoneProject.Id),
/// 			DomainIdentifier:    pulumi.Any(testAwsDatazoneDomain.Id),
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
/// resource "aws_datazone_environment" "example" {
///   user_parameters {
///     name  = "consumerGlueDbName"
///     value = "consumer"
///   }
///   user_parameters {
///     name  = "producerGlueDbName"
///     value = "producer"
///   }
///   user_parameters {
///     name  = "workgroupName"
///     value = "workgroup"
///   }
///   name                 = "example"
///   blueprint_identifier = test.environmentBlueprintId
///   profile_identifier   = testAwsDatazoneEnvironmentProfile.id
///   project_identifier   = testAwsDatazoneProject.id
///   domain_identifier    = testAwsDatazoneDomain.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.datazone.Environment;
/// import com.pulumi.aws.datazone.EnvironmentArgs;
/// import com.pulumi.aws.datazone.inputs.EnvironmentUserParameterArgs;
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
///         var example = new Environment("example", EnvironmentArgs.builder()
///             .userParameters(
///                 EnvironmentUserParameterArgs.builder()
///                     .name("consumerGlueDbName")
///                     .value("consumer")
///                     .build(),
///                 EnvironmentUserParameterArgs.builder()
///                     .name("producerGlueDbName")
///                     .value("producer")
///                     .build(),
///                 EnvironmentUserParameterArgs.builder()
///                     .name("workgroupName")
///                     .value("workgroup")
///                     .build())
///             .name("example")
///             .blueprintIdentifier(test.environmentBlueprintId())
///             .profileIdentifier(testAwsDatazoneEnvironmentProfile.id())
///             .projectIdentifier(testAwsDatazoneProject.id())
///             .domainIdentifier(testAwsDatazoneDomain.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:datazone:Environment
///     properties:
///       userParameters:
///         - name: consumerGlueDbName
///           value: consumer
///         - name: producerGlueDbName
///           value: producer
///         - name: workgroupName
///           value: workgroup
///       name: example
///       blueprintIdentifier: ${test.environmentBlueprintId}
///       profileIdentifier: ${testAwsDatazoneEnvironmentProfile.id}
///       projectIdentifier: ${testAwsDatazoneProject.id}
///       domainIdentifier: ${testAwsDatazoneDomain.id}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `domainIdentifier` - (String) Identifier of the DataZone domain.
/// * `id` - (String) ID of the environment.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import DataZone Environment using the `domain_idntifier,id`. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/environment:Environment example dzd_d2i7tzk3tnjjf4,5vpywijpwryec0
/// ```
class Environment extends pulumi.CustomResource {
  /// The ID of the Amazon Web Services account where the environment exists
  late final pulumi.Output<String> accountIdentifier;
  /// The Amazon Web Services region where the environment exists.
  late final pulumi.Output<String> accountRegion;
  /// The blueprint with which the environment is created.
  late final pulumi.Output<String> blueprintIdentifier;
  /// The time the environment was created.
  late final pulumi.Output<String> createdAt;
  /// The user who created the environment.
  late final pulumi.Output<String> createdBy;
  /// The description of the environment.
  late final pulumi.Output<String?> description;
  /// The ID of the domain where the environment exists.
  late final pulumi.Output<String> domainIdentifier;
  /// The business glossary terms that can be used in this environment.
  late final pulumi.Output<List<String>?> glossaryTerms;
  /// The details of the last deployment of the environment.
  late final pulumi.Output<List<EnvironmentLastDeployment>> lastDeployments;
  /// The name of the environment.
  late final pulumi.Output<String> name;
  /// The ID of the profile with which the environment is created.
  late final pulumi.Output<String> profileIdentifier;
  /// The ID of the project where the environment exists.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> projectIdentifier;
  /// The provider of the environment.
  late final pulumi.Output<String> providerEnvironment;
  late final pulumi.Output<List<EnvironmentProvisionedResource>> provisionedResources;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<EnvironmentTimeouts?> timeouts;
  /// The user parameters that are used in the environment.
  /// See User Parameters for more information.
  /// Changing these values recreates the resource.
  late final pulumi.Output<List<EnvironmentUserParameter>?> userParameters;

  /// Creates a new [Environment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Environment]. {@macro pulumi_datazone_environment_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Environment(
    String name, {
    EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datazone/environment:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accountIdentifier = registerOutput<String>('accountIdentifier');
    accountRegion = registerOutput<String>('accountRegion');
    blueprintIdentifier = registerOutput<String>('blueprintIdentifier');
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    description = registerOutput<String?>('description');
    domainIdentifier = registerOutput<String>('domainIdentifier');
    glossaryTerms = registerOutput<List<String>?>('glossaryTerms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastDeployments = registerOutput<List<EnvironmentLastDeployment>>('lastDeployments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EnvironmentLastDeployment>(guardedValue, (value) => EnvironmentLastDeployment.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    profileIdentifier = registerOutput<String>('profileIdentifier');
    projectIdentifier = registerOutput<String>('projectIdentifier');
    providerEnvironment = registerOutput<String>('providerEnvironment');
    provisionedResources = registerOutput<List<EnvironmentProvisionedResource>>('provisionedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EnvironmentProvisionedResource>(guardedValue, (value) => EnvironmentProvisionedResource.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    timeouts = registerOutput<EnvironmentTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    userParameters = registerOutput<List<EnvironmentUserParameter>?>('userParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EnvironmentUserParameter>(guardedValue, (value) => EnvironmentUserParameter.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [Environment] resource's state with the given [name] and [id].
  static Environment get(
    String name,
    pulumi.Input<String> id, {
    EnvironmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Environment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Environment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datazone/environment:Environment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountIdentifier = registerOutput<String>('accountIdentifier');
    accountRegion = registerOutput<String>('accountRegion');
    blueprintIdentifier = registerOutput<String>('blueprintIdentifier');
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    description = registerOutput<String?>('description');
    domainIdentifier = registerOutput<String>('domainIdentifier');
    glossaryTerms = registerOutput<List<String>?>('glossaryTerms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastDeployments = registerOutput<List<EnvironmentLastDeployment>>('lastDeployments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EnvironmentLastDeployment>(guardedValue, (value) => EnvironmentLastDeployment.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    profileIdentifier = registerOutput<String>('profileIdentifier');
    projectIdentifier = registerOutput<String>('projectIdentifier');
    providerEnvironment = registerOutput<String>('providerEnvironment');
    provisionedResources = registerOutput<List<EnvironmentProvisionedResource>>('provisionedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EnvironmentProvisionedResource>(guardedValue, (value) => EnvironmentProvisionedResource.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    timeouts = registerOutput<EnvironmentTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    userParameters = registerOutput<List<EnvironmentUserParameter>?>('userParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EnvironmentUserParameter>(guardedValue, (value) => EnvironmentUserParameter.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [Environment] resource.
  Environment.reference(String urn)
    : super(
        'aws:datazone/environment:Environment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountIdentifier = registerOutput<String>('accountIdentifier');
    accountRegion = registerOutput<String>('accountRegion');
    blueprintIdentifier = registerOutput<String>('blueprintIdentifier');
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    description = registerOutput<String?>('description');
    domainIdentifier = registerOutput<String>('domainIdentifier');
    glossaryTerms = registerOutput<List<String>?>('glossaryTerms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastDeployments = registerOutput<List<EnvironmentLastDeployment>>('lastDeployments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EnvironmentLastDeployment>(guardedValue, (value) => EnvironmentLastDeployment.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    profileIdentifier = registerOutput<String>('profileIdentifier');
    projectIdentifier = registerOutput<String>('projectIdentifier');
    providerEnvironment = registerOutput<String>('providerEnvironment');
    provisionedResources = registerOutput<List<EnvironmentProvisionedResource>>('provisionedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EnvironmentProvisionedResource>(guardedValue, (value) => EnvironmentProvisionedResource.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    timeouts = registerOutput<EnvironmentTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    userParameters = registerOutput<List<EnvironmentUserParameter>?>('userParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EnvironmentUserParameter>(guardedValue, (value) => EnvironmentUserParameter.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
