import 'package:pulumi/pulumi.dart';
import '../environment_last_deployment/environment_last_deployment.dart';
import '../environment_provisioned_resource/environment_provisioned_resource.dart';
import '../environment_timeouts/environment_timeouts.dart';
import '../environment_user_parameter/environment_user_parameter.dart';
import 'environment_args2.dart';

/// Resource for managing an AWS DataZone Environment.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datazone.Environment("example", {
/// name: "example",
/// blueprintIdentifier: test.environmentBlueprintId,
/// profileIdentifier: testAwsDatazoneEnvironmentProfile.id,
/// projectIdentifier: testAwsDatazoneProject.id,
/// domainIdentifier: testAwsDatazoneDomain.id,
/// userParameters: [
/// {
/// name: "consumerGlueDbName",
/// value: "consumer",
/// },
/// {
/// name: "producerGlueDbName",
/// value: "producer",
/// },
/// {
/// name: "workgroupName",
/// value: "workgroup",
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datazone.Environment("example",
/// name="example",
/// blueprint_identifier=test["environmentBlueprintId"],
/// profile_identifier=test_aws_datazone_environment_profile["id"],
/// project_identifier=test_aws_datazone_project["id"],
/// domain_identifier=test_aws_datazone_domain["id"],
/// user_parameters=[
/// {
/// "name": "consumerGlueDbName",
/// "value": "consumer",
/// },
/// {
/// "name": "producerGlueDbName",
/// "value": "producer",
/// },
/// {
/// "name": "workgroupName",
/// "value": "workgroup",
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.DataZone.Environment("example", new()
/// {
/// Name = "example",
/// BlueprintIdentifier = test.EnvironmentBlueprintId,
/// ProfileIdentifier = testAwsDatazoneEnvironmentProfile.Id,
/// ProjectIdentifier = testAwsDatazoneProject.Id,
/// DomainIdentifier = testAwsDatazoneDomain.Id,
/// UserParameters = new[]
/// {
/// new Aws.DataZone.Inputs.EnvironmentUserParameterArgs
/// {
/// Name = "consumerGlueDbName",
/// Value = "consumer",
/// },
/// new Aws.DataZone.Inputs.EnvironmentUserParameterArgs
/// {
/// Name = "producerGlueDbName",
/// Value = "producer",
/// },
/// new Aws.DataZone.Inputs.EnvironmentUserParameterArgs
/// {
/// Name = "workgroupName",
/// Value = "workgroup",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datazone"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datazone.NewEnvironment(ctx, "example", &datazone.EnvironmentArgs{
/// Name:                pulumi.String("example"),
/// BlueprintIdentifier: pulumi.Any(test.EnvironmentBlueprintId),
/// ProfileIdentifier:   pulumi.Any(testAwsDatazoneEnvironmentProfile.Id),
/// ProjectIdentifier:   pulumi.Any(testAwsDatazoneProject.Id),
/// DomainIdentifier:    pulumi.Any(testAwsDatazoneDomain.Id),
/// UserParameters: datazone.EnvironmentUserParameterArray{
/// &datazone.EnvironmentUserParameterArgs{
/// Name:  pulumi.String("consumerGlueDbName"),
/// Value: pulumi.String("consumer"),
/// },
/// &datazone.EnvironmentUserParameterArgs{
/// Name:  pulumi.String("producerGlueDbName"),
/// Value: pulumi.String("producer"),
/// },
/// &datazone.EnvironmentUserParameterArgs{
/// Name:  pulumi.String("workgroupName"),
/// Value: pulumi.String("workgroup"),
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
/// import com.pulumi.aws.datazone.Environment;
/// import com.pulumi.aws.datazone.EnvironmentArgs;
/// import com.pulumi.aws.datazone.inputs.EnvironmentUserParameterArgs;
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
/// var example = new Environment("example", EnvironmentArgs.builder()
/// .name("example")
/// .blueprintIdentifier(test.environmentBlueprintId())
/// .profileIdentifier(testAwsDatazoneEnvironmentProfile.id())
/// .projectIdentifier(testAwsDatazoneProject.id())
/// .domainIdentifier(testAwsDatazoneDomain.id())
/// .userParameters(
/// EnvironmentUserParameterArgs.builder()
/// .name("consumerGlueDbName")
/// .value("consumer")
/// .build(),
/// EnvironmentUserParameterArgs.builder()
/// .name("producerGlueDbName")
/// .value("producer")
/// .build(),
/// EnvironmentUserParameterArgs.builder()
/// .name("workgroupName")
/// .value("workgroup")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:datazone:Environment
/// properties:
/// name: example
/// blueprintIdentifier: ${test.environmentBlueprintId}
/// profileIdentifier: ${testAwsDatazoneEnvironmentProfile.id}
/// projectIdentifier: ${testAwsDatazoneProject.id}
/// domainIdentifier: ${testAwsDatazoneDomain.id}
/// userParameters:
/// - name: consumerGlueDbName
/// value: consumer
/// - name: producerGlueDbName
/// value: producer
/// - name: workgroupName
/// value: workgroup
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import DataZone Environment using the `domain_idntifier,id`. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/environment:Environment example dzd_d2i7tzk3tnjjf4,5vpywijpwryec0
/// ```
class Environment2 extends CustomResource {
  /// The ID of the Amazon Web Services account where the environment exists
  late final Output<String> accountIdentifier;

  /// The Amazon Web Services region where the environment exists.
  late final Output<String> accountRegion;

  /// The blueprint with which the environment is created.
  late final Output<String> blueprintIdentifier;

  /// The time the environment was created.
  late final Output<String> createdAt;

  /// The user who created the environment.
  late final Output<String> createdBy;

  /// The description of the environment.
  late final Output<String?> description;

  /// The ID of the domain where the environment exists.
  late final Output<String> domainIdentifier;

  /// The business glossary terms that can be used in this environment.
  late final Output<List<String>?> glossaryTerms;

  /// The details of the last deployment of the environment.
  late final Output<List<EnvironmentLastDeployment>> lastDeployments;

  /// The name of the environment.
  late final Output<String> name;

  /// The ID of the profile with which the environment is created.
  late final Output<String> profileIdentifier;

  /// The ID of the project where the environment exists.
  ///
  /// The following arguments are optional:
  late final Output<String> projectIdentifier;

  /// The provider of the environment.
  late final Output<String> providerEnvironment;
  late final Output<List<EnvironmentProvisionedResource>> provisionedResources;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<EnvironmentTimeouts?> timeouts;

  /// The user parameters that are used in the environment.
  /// See User Parameters for more information.
  /// Changing these values recreates the resource.
  late final Output<List<EnvironmentUserParameter>?> userParameters;

  Environment2(
    String name, {
    EnvironmentArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:datazone/environment:Environment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountIdentifier = Output.createUnknown<String>();
    this.accountRegion = Output.createUnknown<String>();
    this.blueprintIdentifier = Output.createUnknown<String>();
    this.createdAt = Output.createUnknown<String>();
    this.createdBy = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.domainIdentifier = Output.createUnknown<String>();
    this.glossaryTerms = Output.createUnknown<List<String>?>();
    this.lastDeployments =
        Output.createUnknown<List<EnvironmentLastDeployment>>();
    this.name = Output.createUnknown<String>();
    this.profileIdentifier = Output.createUnknown<String>();
    this.projectIdentifier = Output.createUnknown<String>();
    this.providerEnvironment = Output.createUnknown<String>();
    this.provisionedResources =
        Output.createUnknown<List<EnvironmentProvisionedResource>>();
    this.region = Output.createUnknown<String>();
    this.timeouts = Output.createUnknown<EnvironmentTimeouts?>();
    this.userParameters =
        Output.createUnknown<List<EnvironmentUserParameter>?>();
  }
}
