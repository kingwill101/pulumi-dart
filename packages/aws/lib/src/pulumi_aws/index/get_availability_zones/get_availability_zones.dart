import 'package:pulumi/pulumi.dart';
import 'get_availability_zones_args.dart';
import 'get_availability_zones_result.dart';

/// The Availability Zones data source allows access to the list of AWS
/// Availability Zones which can be accessed by an AWS account within the region
/// configured in the provider.
///
/// This is different from the <span pulumi-lang-nodejs="`aws.getAvailabilityZone`" pulumi-lang-dotnet="`aws.getAvailabilityZone`" pulumi-lang-go="`getAvailabilityZone`" pulumi-lang-python="`get_availability_zone`" pulumi-lang-yaml="`aws.getAvailabilityZone`" pulumi-lang-java="`aws.getAvailabilityZone`">`aws.getAvailabilityZone`</span> (singular) data source,
/// which provides some details about a specific availability zone.
///
/// > When [Local Zones](https://aws.amazon.com/about-aws/global-infrastructure/localzones/) are enabled in a region, by default the API and this data source include both Local Zones and Availability Zones. To return only Availability Zones, see the example section below.
///
/// ## Example Usage
///
/// ### By State
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Declare the data source
/// const available = aws.getAvailabilityZones({
/// state: "available",
/// });
/// // e.g., Create subnets in the first two available availability zones
/// const primary = new aws.ec2.Subnet("primary", {availabilityZone: available.then(available => available.names?.[0])});
/// const secondary = new aws.ec2.Subnet("secondary", {availabilityZone: available.then(available => available.names?.[1])});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Declare the data source
/// available = aws.get_availability_zones(state="available")
/// # e.g., Create subnets in the first two available availability zones
/// primary = aws.ec2.Subnet("primary", availability_zone=available.names[0])
/// secondary = aws.ec2.Subnet("secondary", availability_zone=available.names[1])
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
/// var available = Aws.GetAvailabilityZones.Invoke(new()
/// {
/// State = "available",
/// });
///
/// // e.g., Create subnets in the first two available availability zones
/// var primary = new Aws.Ec2.Subnet("primary", new()
/// {
/// AvailabilityZone = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[0]),
/// });
///
/// var secondary = new Aws.Ec2.Subnet("secondary", new()
/// {
/// AvailabilityZone = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[1]),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Declare the data source
/// available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// State: pulumi.StringRef("available"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // e.g., Create subnets in the first two available availability zones
/// _, err = ec2.NewSubnet(ctx, "primary", &ec2.SubnetArgs{
/// AvailabilityZone: pulumi.String(available.Names[0]),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewSubnet(ctx, "secondary", &ec2.SubnetArgs{
/// AvailabilityZone: pulumi.String(available.Names[1]),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
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
/// final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
/// .state("available")
/// .build());
///
/// // e.g., Create subnets in the first two available availability zones
/// var primary = new Subnet("primary", SubnetArgs.builder()
/// .availabilityZone(available.names()[0])
/// .build());
///
/// var secondary = new Subnet("secondary", SubnetArgs.builder()
/// .availabilityZone(available.names()[1])
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # e.g., Create subnets in the first two available availability zones
/// primary:
/// type: aws:ec2:Subnet
/// properties:
/// availabilityZone: ${available.names[0]}
/// secondary:
/// type: aws:ec2:Subnet
/// properties:
/// availabilityZone: ${available.names[1]}
/// variables:
/// # Declare the data source
/// available:
/// fn::invoke:
/// function: aws:getAvailabilityZones
/// arguments:
/// state: available
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### By Filter
///
/// All Local Zones (regardless of opt-in status):
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.getAvailabilityZones({
/// allAvailabilityZones: true,
/// filters: [{
/// name: "opt-in-status",
/// values: [
/// "not-opted-in",
/// "opted-in",
/// ],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.get_availability_zones(all_availability_zones=True,
/// filters=[{
/// "name": "opt-in-status",
/// "values": [
/// "not-opted-in",
/// "opted-in",
/// ],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.GetAvailabilityZones.Invoke(new()
/// {
/// AllAvailabilityZones = true,
/// Filters = new[]
/// {
/// new Aws.Inputs.GetAvailabilityZonesFilterInputArgs
/// {
/// Name = "opt-in-status",
/// Values = new[]
/// {
/// "not-opted-in",
/// "opted-in",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// AllAvailabilityZones: pulumi.BoolRef(true),
/// Filters: []aws.GetAvailabilityZonesFilter{
/// {
/// Name: "opt-in-status",
/// Values: []string{
/// "not-opted-in",
/// "opted-in",
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
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
/// final var example = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
/// .allAvailabilityZones(true)
/// .filters(GetAvailabilityZonesFilterArgs.builder()
/// .name("opt-in-status")
/// .values(
/// "not-opted-in",
/// "opted-in")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:getAvailabilityZones
/// arguments:
/// allAvailabilityZones: true
/// filters:
/// - name: opt-in-status
/// values:
/// - not-opted-in
/// - opted-in
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Only Availability Zones (no Local Zones):
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.getAvailabilityZones({
/// filters: [{
/// name: "opt-in-status",
/// values: ["opt-in-not-required"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.get_availability_zones(filters=[{
/// "name": "opt-in-status",
/// "values": ["opt-in-not-required"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.GetAvailabilityZones.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Inputs.GetAvailabilityZonesFilterInputArgs
/// {
/// Name = "opt-in-status",
/// Values = new[]
/// {
/// "opt-in-not-required",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// Filters: []aws.GetAvailabilityZonesFilter{
/// {
/// Name: "opt-in-status",
/// Values: []string{
/// "opt-in-not-required",
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
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
/// final var example = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
/// .filters(GetAvailabilityZonesFilterArgs.builder()
/// .name("opt-in-status")
/// .values("opt-in-not-required")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:getAvailabilityZones
/// arguments:
/// filters:
/// - name: opt-in-status
/// values:
/// - opt-in-not-required
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAvailabilityZonesResult> getAvailabilityZones(
  GetAvailabilityZonesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getAvailabilityZones:getAvailabilityZones',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAvailabilityZonesResult.fromMap(result);
}
