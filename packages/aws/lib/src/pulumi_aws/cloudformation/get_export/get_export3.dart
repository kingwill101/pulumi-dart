import 'package:pulumi/pulumi.dart';
import 'get_export_args3.dart';
import 'get_export_result3.dart';

/// The CloudFormation Export data source allows access to stack
/// exports specified in the [Output](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/outputs-section-structure.html) section of the Cloudformation Template using the optional Export Property.
///
/// > Note: If you are trying to use a value from a Cloudformation Stack in the same deployment please use normal interpolation or Cloudformation Outputs.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const subnetId = aws.cloudformation.getExport({
/// name: "mySubnetIdExportName",
/// });
/// const web = new aws.ec2.Instance("web", {
/// ami: "ami-abb07bcb",
/// instanceType: aws.ec2.InstanceType.T2_Micro,
/// subnetId: subnetId.then(subnetId => subnetId.value),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// subnet_id = aws.cloudformation.get_export(name="mySubnetIdExportName")
/// web = aws.ec2.Instance("web",
/// ami="ami-abb07bcb",
/// instance_type=aws.ec2.InstanceType.T2_MICRO,
/// subnet_id=subnet_id.value)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var subnetId = Aws.CloudFormation.GetExport.Invoke(new()
/// {
/// Name = "mySubnetIdExportName",
/// });
///
/// var web = new Aws.Ec2.Instance("web", new()
/// {
/// Ami = "ami-abb07bcb",
/// InstanceType = Aws.Ec2.InstanceType.T2_Micro,
/// SubnetId = subnetId.Apply(getExportResult => getExportResult.Value),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudformation"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// subnetId, err := cloudformation.GetExport(ctx, &cloudformation.GetExportArgs{
/// Name: "mySubnetIdExportName",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewInstance(ctx, "web", &ec2.InstanceArgs{
/// Ami:          pulumi.String("ami-abb07bcb"),
/// InstanceType: pulumi.String(ec2.InstanceType_T2_Micro),
/// SubnetId:     pulumi.String(subnetId.Value),
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
/// import com.pulumi.aws.cloudformation.CloudformationFunctions;
/// import com.pulumi.aws.cloudformation.inputs.GetExportArgs;
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
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
/// final var subnetId = CloudformationFunctions.getExport(GetExportArgs.builder()
/// .name("mySubnetIdExportName")
/// .build());
///
/// var web = new Instance("web", InstanceArgs.builder()
/// .ami("ami-abb07bcb")
/// .instanceType("t2.micro")
/// .subnetId(subnetId.value())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// web:
/// type: aws:ec2:Instance
/// properties:
/// ami: ami-abb07bcb
/// instanceType: t2.micro
/// subnetId: ${subnetId.value}
/// variables:
/// subnetId:
/// fn::invoke:
/// function: aws:cloudformation:getExport
/// arguments:
/// name: mySubnetIdExportName
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetExportResult3> getExport3(
  GetExportArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudformation/getExport:getExport',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExportResult3.fromMap(result);
}
