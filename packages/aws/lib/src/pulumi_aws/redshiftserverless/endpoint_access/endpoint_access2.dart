import 'package:pulumi/pulumi.dart';
import '../endpoint_access_vpc_endpoint/endpoint_access_vpc_endpoint2.dart';
import 'endpoint_access_args2.dart';

/// Creates a new Amazon Redshift Serverless Endpoint Access.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshiftserverless.EndpointAccess("example", {
/// endpointName: "example",
/// workgroupName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshiftserverless.EndpointAccess("example",
/// endpoint_name="example",
/// workgroup_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.RedshiftServerless.EndpointAccess("example", new()
/// {
/// EndpointName = "example",
/// WorkgroupName = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshiftserverless"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := redshiftserverless.NewEndpointAccess(ctx, "example", &redshiftserverless.EndpointAccessArgs{
/// EndpointName:  pulumi.String("example"),
/// WorkgroupName: pulumi.String("example"),
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
/// import com.pulumi.aws.redshiftserverless.EndpointAccess;
/// import com.pulumi.aws.redshiftserverless.EndpointAccessArgs;
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
/// var example = new EndpointAccess("example", EndpointAccessArgs.builder()
/// .endpointName("example")
/// .workgroupName("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:redshiftserverless:EndpointAccess
/// properties:
/// endpointName: example
/// workgroupName: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Serverless Endpoint Access using the <span pulumi-lang-nodejs="`endpointName`" pulumi-lang-dotnet="`EndpointName`" pulumi-lang-go="`endpointName`" pulumi-lang-python="`endpoint_name`" pulumi-lang-yaml="`endpointName`" pulumi-lang-java="`endpointName`">`endpoint_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:redshiftserverless/endpointAccess:EndpointAccess example example
/// ```
class EndpointAccess2 extends CustomResource {
  /// The DNS address of the VPC endpoint.
  late final Output<String> address;

  /// Amazon Resource Name (ARN) of the Redshift Serverless Endpoint Access.
  late final Output<String> arn;

  /// The name of the endpoint.
  late final Output<String> endpointName;

  /// The owner Amazon Web Services account for the Amazon Redshift Serverless workgroup.
  late final Output<String?> ownerAccount;

  /// The port that Amazon Redshift Serverless listens on.
  late final Output<int> port;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// An array of VPC subnet IDs to associate with the endpoint.
  late final Output<List<String>> subnetIds;

  /// The VPC endpoint or the Redshift Serverless workgroup. See `VPC Endpoint` below.
  late final Output<List<EndpointAccessVpcEndpoint2>> vpcEndpoints;

  /// An array of security group IDs to associate with the workgroup.
  late final Output<List<String>> vpcSecurityGroupIds;

  /// The name of the workgroup.
  late final Output<String> workgroupName;

  EndpointAccess2(
    String name, {
    EndpointAccessArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/endpointAccess:EndpointAccess',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.address = Output.createUnknown<String>();
    this.arn = Output.createUnknown<String>();
    this.endpointName = Output.createUnknown<String>();
    this.ownerAccount = Output.createUnknown<String?>();
    this.port = Output.createUnknown<int>();
    this.region = Output.createUnknown<String>();
    this.subnetIds = Output.createUnknown<List<String>>();
    this.vpcEndpoints =
        Output.createUnknown<List<EndpointAccessVpcEndpoint2>>();
    this.vpcSecurityGroupIds = Output.createUnknown<List<String>>();
    this.workgroupName = Output.createUnknown<String>();
  }
}
