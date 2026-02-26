import 'package:pulumi/pulumi.dart';
import 'get_vpc_endpoint_args.dart';
import 'get_vpc_endpoint_result.dart';

/// The VPC Endpoint data source provides details about
/// a specific VPC endpoint.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Declare the data source
/// const s3 = aws.ec2.getVpcEndpoint({
/// vpcId: foo.id,
/// serviceName: "com.amazonaws.us-west-2.s3",
/// });
/// const privateS3 = new aws.ec2.VpcEndpointRouteTableAssociation("private_s3", {
/// vpcEndpointId: s3.then(s3 => s3.id),
/// routeTableId: _private.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Declare the data source
/// s3 = aws.ec2.get_vpc_endpoint(vpc_id=foo["id"],
/// service_name="com.amazonaws.us-west-2.s3")
/// private_s3 = aws.ec2.VpcEndpointRouteTableAssociation("private_s3",
/// vpc_endpoint_id=s3.id,
/// route_table_id=private["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Declare the data source
/// var s3 = Aws.Ec2.GetVpcEndpoint.Invoke(new()
/// {
/// VpcId = foo.Id,
/// ServiceName = "com.amazonaws.us-west-2.s3",
/// });
///
/// var privateS3 = new Aws.Ec2.VpcEndpointRouteTableAssociation("private_s3", new()
/// {
/// VpcEndpointId = s3.Apply(getVpcEndpointResult => getVpcEndpointResult.Id),
/// RouteTableId = @private.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Declare the data source
/// s3, err := ec2.LookupVpcEndpoint(ctx, &ec2.LookupVpcEndpointArgs{
/// VpcId:       pulumi.StringRef(foo.Id),
/// ServiceName: pulumi.StringRef("com.amazonaws.us-west-2.s3"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewVpcEndpointRouteTableAssociation(ctx, "private_s3", &ec2.VpcEndpointRouteTableAssociationArgs{
/// VpcEndpointId: pulumi.String(s3.Id),
/// RouteTableId:  pulumi.Any(private.Id),
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpcEndpointArgs;
/// import com.pulumi.aws.ec2.VpcEndpointRouteTableAssociation;
/// import com.pulumi.aws.ec2.VpcEndpointRouteTableAssociationArgs;
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
/// // Declare the data source
/// final var s3 = Ec2Functions.getVpcEndpoint(GetVpcEndpointArgs.builder()
/// .vpcId(foo.id())
/// .serviceName("com.amazonaws.us-west-2.s3")
/// .build());
///
/// var privateS3 = new VpcEndpointRouteTableAssociation("privateS3", VpcEndpointRouteTableAssociationArgs.builder()
/// .vpcEndpointId(s3.id())
/// .routeTableId(private_.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// privateS3:
/// type: aws:ec2:VpcEndpointRouteTableAssociation
/// name: private_s3
/// properties:
/// vpcEndpointId: ${s3.id}
/// routeTableId: ${private.id}
/// variables:
/// # Declare the data source
/// s3:
/// fn::invoke:
/// function: aws:ec2:getVpcEndpoint
/// arguments:
/// vpcId: ${foo.id}
/// serviceName: com.amazonaws.us-west-2.s3
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetVpcEndpointResult> getVpcEndpoint(
  GetVpcEndpointArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcEndpoint:getVpcEndpoint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcEndpointResult.fromMap(result);
}
