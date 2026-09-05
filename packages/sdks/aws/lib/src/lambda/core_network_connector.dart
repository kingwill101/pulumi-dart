import 'package:pulumi/pulumi.dart' as pulumi;
import 'core_network_connector_args.dart';
import 'core_network_connector_configuration.dart';
import 'core_network_connector_state.dart';
import 'core_network_connector_timeouts.dart';

/// Manages an AWS Lambda Network Connector. A network connector provisions elastic network interfaces (ENIs) in the subnets you specify, routing outbound traffic from [Lambda MicroVMs](https://docs.aws.amazon.com/lambda/latest/dg/microvms-networking.html) through your VPC — for example to reach private resources, or to give MicroVM traffic a stable source IP by exiting through your NAT gateway.
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
/// const exampleRole = new aws.iam.Role("example", {
///     name: "example-network-connector-operator",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Principal: {
///                 Service: "network-connectors.lambda.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const example = new aws.lambda.CoreNetworkConnector("example", {
///     configuration: {
///         vpcEgressConfiguration: {
///             associatedComputeResourceTypes: ["MicroVm"],
///             networkProtocol: "IPv4",
///             subnetIds: exampleAwsSubnet.map(__item => __item.id),
///             securityGroupIds: [exampleAwsSecurityGroup.id],
///         },
///     },
///     name: "example",
///     operatorRole: exampleRole.arn,
/// });
/// const exampleRolePolicy = new aws.iam.RolePolicy("example", {
///     name: "example-network-connector-operator",
///     role: exampleRole.id,
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [
///             {
///                 Sid: "CreateENI",
///                 Effect: "Allow",
///                 Action: "ec2:CreateNetworkInterface",
///                 Resource: [
///                     "arn:aws:ec2:*:*:network-interface/*",
///                     "arn:aws:ec2:*:*:subnet/*",
///                     "arn:aws:ec2:*:*:security-group/*",
///                 ],
///             },
///             {
///                 Sid: "TagENI",
///                 Effect: "Allow",
///                 Action: "ec2:CreateTags",
///                 Resource: "arn:aws:ec2:*:*:network-interface/*",
///                 Condition: {
///                     StringEquals: {
///                         "ec2:ManagedResourceOperator": "network-connectors.lambda.amazonaws.com",
///                     },
///                 },
///             },
///         ],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example_role = aws.iam.Role("example",
///     name="example-network-connector-operator",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "network-connectors.lambda.amazonaws.com",
///             },
///         }],
///     }))
/// example = aws.lambda_.CoreNetworkConnector("example",
///     configuration={
///         "vpc_egress_configuration": {
///             "associated_compute_resource_types": ["MicroVm"],
///             "network_protocol": "IPv4",
///             "subnet_ids": [__item["id"] for __item in example_aws_subnet],
///             "security_group_ids": [example_aws_security_group["id"]],
///         },
///     },
///     name="example",
///     operator_role=example_role.arn)
/// example_role_policy = aws.iam.RolePolicy("example",
///     name="example-network-connector-operator",
///     role=example_role.id,
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [
///             {
///                 "Sid": "CreateENI",
///                 "Effect": "Allow",
///                 "Action": "ec2:CreateNetworkInterface",
///                 "Resource": [
///                     "arn:aws:ec2:*:*:network-interface/*",
///                     "arn:aws:ec2:*:*:subnet/*",
///                     "arn:aws:ec2:*:*:security-group/*",
///                 ],
///             },
///             {
///                 "Sid": "TagENI",
///                 "Effect": "Allow",
///                 "Action": "ec2:CreateTags",
///                 "Resource": "arn:aws:ec2:*:*:network-interface/*",
///                 "Condition": {
///                     "StringEquals": {
///                         "ec2:ManagedResourceOperator": "network-connectors.lambda.amazonaws.com",
///                     },
///                 },
///             },
///         ],
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleRole = new Aws.Iam.Role("example", new()
///     {
///         Name = "example-network-connector-operator",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "sts:AssumeRole",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "network-connectors.lambda.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var example = new Aws.Lambda.CoreNetworkConnector("example", new()
///     {
///         Configuration = new Aws.Lambda.Inputs.CoreNetworkConnectorConfigurationArgs
///         {
///             VpcEgressConfiguration = new Aws.Lambda.Inputs.CoreNetworkConnectorConfigurationVpcEgressConfigurationArgs
///             {
///                 AssociatedComputeResourceTypes = new[]
///                 {
///                     "MicroVm",
///                 },
///                 NetworkProtocol = "IPv4",
///                 SubnetIds = exampleAwsSubnet.Select(__item => __item.Id).ToList(),
///                 SecurityGroupIds = new[]
///                 {
///                     exampleAwsSecurityGroup.Id,
///                 },
///             },
///         },
///         Name = "example",
///         OperatorRole = exampleRole.Arn,
///     });
///
///     var exampleRolePolicy = new Aws.Iam.RolePolicy("example", new()
///     {
///         Name = "example-network-connector-operator",
///         Role = exampleRole.Id,
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "CreateENI",
///                     ["Effect"] = "Allow",
///                     ["Action"] = "ec2:CreateNetworkInterface",
///                     ["Resource"] = new[]
///                     {
///                         "arn:aws:ec2:*:*:network-interface/*",
///                         "arn:aws:ec2:*:*:subnet/*",
///                         "arn:aws:ec2:*:*:security-group/*",
///                     },
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "TagENI",
///                     ["Effect"] = "Allow",
///                     ["Action"] = "ec2:CreateTags",
///                     ["Resource"] = "arn:aws:ec2:*:*:network-interface/*",
///                     ["Condition"] = new Dictionary<string, object?>
///                     {
///                         ["StringEquals"] = new Dictionary<string, object?>
///                         {
///                             ["ec2:ManagedResourceOperator"] = "network-connectors.lambda.amazonaws.com",
///                         },
///                     },
///                 },
///             },
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Principal": map[string]string{
/// "Service": "network-connectors.lambda.amazonaws.com",
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// Name: pulumi.String("example-network-connector-operator"),
/// AssumeRolePolicy: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = lambda.NewCoreNetworkConnector(ctx, "example", &lambda.CoreNetworkConnectorArgs{
/// Configuration: &lambda.CoreNetworkConnectorConfigurationArgs{
/// VpcEgressConfiguration: &lambda.CoreNetworkConnectorConfigurationVpcEgressConfigurationArgs{
/// AssociatedComputeResourceTypes: pulumi.StringArray{
/// pulumi.String("MicroVm"),
/// },
/// NetworkProtocol: pulumi.String("IPv4"),
/// SubnetIds: pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:5,40-62)),
/// SecurityGroupIds: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// },
/// },
/// Name: pulumi.String("example"),
/// OperatorRole: exampleRole.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON1, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []interface{}{
/// map[string]interface{}{
/// "Sid": "CreateENI",
/// "Effect": "Allow",
/// "Action": "ec2:CreateNetworkInterface",
/// "Resource": []string{
/// "arn:aws:ec2:*:*:network-interface/*",
/// "arn:aws:ec2:*:*:subnet/*",
/// "arn:aws:ec2:*:*:security-group/*",
/// },
/// },
/// map[string]interface{}{
/// "Sid": "TagENI",
/// "Effect": "Allow",
/// "Action": "ec2:CreateTags",
/// "Resource": "arn:aws:ec2:*:*:network-interface/*",
/// "Condition": map[string]map[string]string{
/// "StringEquals": map[string]string{
/// "ec2:ManagedResourceOperator": "network-connectors.lambda.amazonaws.com",
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json1 := string(tmpJSON1)
/// _, err = iam.NewRolePolicy(ctx, "example", &iam.RolePolicyArgs{
/// Name: pulumi.String("example-network-connector-operator"),
/// Role: exampleRole.ID().ToIDOutput().ToStringOutput(),
/// Policy: pulumi.String(json1),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// resource "aws_lambda_corenetworkconnector" "example" {
///   configuration = {
///     vpc_egress_configuration = {
///       associated_compute_resource_types = ["MicroVm"]
///       network_protocol                  = "IPv4"
///       subnet_ids                        = exampleAwsSubnet[*].id
///       security_group_ids                = [exampleAwsSecurityGroup.id]
///     }
///   }
///   name          = "example"
///   operator_role = aws_iam_role.example.arn
/// }
/// resource "aws_iam_role" "example" {
///   name = "example-network-connector-operator"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action" = "sts:AssumeRole"
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "network-connectors.lambda.amazonaws.com"
///       }
///     }]
///   })
/// }
/// resource "aws_iam_rolepolicy" "example" {
///   name = "example-network-connector-operator"
///   role = aws_iam_role.example.id
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Sid"      = "CreateENI"
///       "Effect"   = "Allow"
///       "Action"   = "ec2:CreateNetworkInterface"
///       "Resource" = ["arn:aws:ec2:*:*:network-interface/*", "arn:aws:ec2:*:*:subnet/*", "arn:aws:ec2:*:*:security-group/*"]
///       }, {
///       "Sid"      = "TagENI"
///       "Effect"   = "Allow"
///       "Action"   = "ec2:CreateTags"
///       "Resource" = "arn:aws:ec2:*:*:network-interface/*"
///       "Condition" = {
///         "StringEquals" = {
///           "ec2:ManagedResourceOperator" = "network-connectors.lambda.amazonaws.com"
///         }
///       }
///     }]
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.lambda.CoreNetworkConnector;
/// import com.pulumi.aws.lambda.CoreNetworkConnectorArgs;
/// import com.pulumi.aws.lambda.inputs.CoreNetworkConnectorConfigurationArgs;
/// import com.pulumi.aws.lambda.inputs.CoreNetworkConnectorConfigurationVpcEgressConfigurationArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var exampleRole = new Role("exampleRole", RoleArgs.builder()
///             .name("example-network-connector-operator")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "network-connectors.lambda.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var example = new CoreNetworkConnector("example", CoreNetworkConnectorArgs.builder()
///             .configuration(CoreNetworkConnectorConfigurationArgs.builder()
///                 .vpcEgressConfiguration(CoreNetworkConnectorConfigurationVpcEgressConfigurationArgs.builder()
///                     .associatedComputeResourceTypes("MicroVm")
///                     .networkProtocol("IPv4")
///                     .subnetIds(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///                     .securityGroupIds(exampleAwsSecurityGroup.id())
///                     .build())
///                 .build())
///             .name("example")
///             .operatorRole(exampleRole.arn())
///             .build());
///
///         var exampleRolePolicy = new RolePolicy("exampleRolePolicy", RolePolicyArgs.builder()
///             .name("example-network-connector-operator")
///             .role(exampleRole.id())
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(
///                         jsonObject(
///                             jsonProperty("Sid", "CreateENI"),
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Action", "ec2:CreateNetworkInterface"),
///                             jsonProperty("Resource", jsonArray(
///                                 "arn:aws:ec2:*:*:network-interface/*",
///                                 "arn:aws:ec2:*:*:subnet/*",
///                                 "arn:aws:ec2:*:*:security-group/*"
///                             ))
///                         ),
///                         jsonObject(
///                             jsonProperty("Sid", "TagENI"),
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Action", "ec2:CreateTags"),
///                             jsonProperty("Resource", "arn:aws:ec2:*:*:network-interface/*"),
///                             jsonProperty("Condition", jsonObject(
///                                 jsonProperty("StringEquals", jsonObject(
///                                     jsonProperty("ec2:ManagedResourceOperator", "network-connectors.lambda.amazonaws.com")
///                                 ))
///                             ))
///                         )
///                     ))
///                 )))
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the network connector.
///
///
///
/// Using `pulumi import`, import Lambda Network Connectors using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:lambda/coreNetworkConnector:CoreNetworkConnector example arn:aws:lambda:us-east-1:123456789012:network-connector:example
/// ```
class CoreNetworkConnector extends pulumi.CustomResource {
  /// ARN of the network connector.
  late final pulumi.Output<String> arn;
  /// Network configuration of the connector. See `configuration` Block below.
  late final pulumi.Output<CoreNetworkConnectorConfiguration> configuration;
  /// Name of the network connector, unique within the account and Region. Changing this forces a new resource.
  late final pulumi.Output<String> name;
  /// ARN of the IAM role that the network connector service assumes to manage elastic network interfaces in your VPC.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> operatorRole;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<CoreNetworkConnectorTimeouts?> timeouts;

  /// Creates a new [CoreNetworkConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CoreNetworkConnector]. {@macro pulumi_lambda_core_network_connector_core_network_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CoreNetworkConnector(
    String name, {
    CoreNetworkConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/coreNetworkConnector:CoreNetworkConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<CoreNetworkConnectorConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CoreNetworkConnectorConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    operatorRole = registerOutput<String>('operatorRole');
    region = registerOutput<String>('region');
    timeouts = registerOutput<CoreNetworkConnectorTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CoreNetworkConnectorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [CoreNetworkConnector] resource's state with the given [name] and [id].
  static CoreNetworkConnector get(
    String name,
    pulumi.Input<String> id, {
    CoreNetworkConnectorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CoreNetworkConnector._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CoreNetworkConnector._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/coreNetworkConnector:CoreNetworkConnector',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<CoreNetworkConnectorConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CoreNetworkConnectorConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    operatorRole = registerOutput<String>('operatorRole');
    region = registerOutput<String>('region');
    timeouts = registerOutput<CoreNetworkConnectorTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CoreNetworkConnectorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [CoreNetworkConnector] resource.
  CoreNetworkConnector.reference(String urn)
    : super(
        'aws:lambda/coreNetworkConnector:CoreNetworkConnector',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<CoreNetworkConnectorConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CoreNetworkConnectorConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    operatorRole = registerOutput<String>('operatorRole');
    region = registerOutput<String>('region');
    timeouts = registerOutput<CoreNetworkConnectorTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CoreNetworkConnectorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
