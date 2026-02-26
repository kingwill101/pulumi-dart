import 'package:pulumi/pulumi.dart';
import 'get_volume_args.dart';
import 'get_volume_result.dart';

/// Use this data source to get information about an EBS volume for use in other
/// resources.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ebsVolume = aws.ebs.getVolume({
/// mostRecent: true,
/// filters: [
/// {
/// name: "volume-type",
/// values: ["gp2"],
/// },
/// {
/// name: "tag:Name",
/// values: ["Example"],
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ebs_volume = aws.ebs.get_volume(most_recent=True,
/// filters=[
/// {
/// "name": "volume-type",
/// "values": ["gp2"],
/// },
/// {
/// "name": "tag:Name",
/// "values": ["Example"],
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
/// var ebsVolume = Aws.Ebs.GetVolume.Invoke(new()
/// {
/// MostRecent = true,
/// Filters = new[]
/// {
/// new Aws.Ebs.Inputs.GetVolumeFilterInputArgs
/// {
/// Name = "volume-type",
/// Values = new[]
/// {
/// "gp2",
/// },
/// },
/// new Aws.Ebs.Inputs.GetVolumeFilterInputArgs
/// {
/// Name = "tag:Name",
/// Values = new[]
/// {
/// "Example",
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ebs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ebs.LookupVolume(ctx, &ebs.LookupVolumeArgs{
/// MostRecent: pulumi.BoolRef(true),
/// Filters: []ebs.GetVolumeFilter{
/// {
/// Name: "volume-type",
/// Values: []string{
/// "gp2",
/// },
/// },
/// {
/// Name: "tag:Name",
/// Values: []string{
/// "Example",
/// },
/// },
/// },
/// }, nil)
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
/// import com.pulumi.aws.ebs.EbsFunctions;
/// import com.pulumi.aws.ebs.inputs.GetVolumeArgs;
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
/// final var ebsVolume = EbsFunctions.getVolume(GetVolumeArgs.builder()
/// .mostRecent(true)
/// .filters(
/// GetVolumeFilterArgs.builder()
/// .name("volume-type")
/// .values("gp2")
/// .build(),
/// GetVolumeFilterArgs.builder()
/// .name("tag:Name")
/// .values("Example")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// ebsVolume:
/// fn::invoke:
/// function: aws:ebs:getVolume
/// arguments:
/// mostRecent: true
/// filters:
/// - name: volume-type
/// values:
/// - gp2
/// - name: tag:Name
/// values:
/// - Example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetVolumeResult> getVolume(
  GetVolumeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ebs/getVolume:getVolume',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVolumeResult.fromMap(result);
}
