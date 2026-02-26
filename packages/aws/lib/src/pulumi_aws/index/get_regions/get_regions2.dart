import 'package:pulumi/pulumi.dart';
import 'get_regions_args2.dart';
import 'get_regions_result2.dart';

/// Provides information about AWS Regions. Can be used to filter regions i.e., by Opt-In status or only regions enabled for current account. To get details like endpoint and description of each region the data source can be combined with the <span pulumi-lang-nodejs="`aws.getRegion`" pulumi-lang-dotnet="`aws.getRegion`" pulumi-lang-go="`getRegion`" pulumi-lang-python="`get_region`" pulumi-lang-yaml="`aws.getRegion`" pulumi-lang-java="`aws.getRegion`">`aws.getRegion`</span> data source.
///
/// ## Example Usage
///
/// Enabled AWS Regions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegions({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_regions()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.GetRegions.Invoke();
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
/// _, err := aws.GetRegions(ctx, &aws.GetRegionsArgs{}, nil)
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
/// import com.pulumi.aws.inputs.GetRegionsArgs;
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
/// final var current = AwsFunctions.getRegions(GetRegionsArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getRegions
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// All the regions regardless of the availability
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegions({
/// allRegions: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_regions(all_regions=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.GetRegions.Invoke(new()
/// {
/// AllRegions = true,
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
/// _, err := aws.GetRegions(ctx, &aws.GetRegionsArgs{
/// AllRegions: pulumi.BoolRef(true),
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
/// import com.pulumi.aws.inputs.GetRegionsArgs;
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
/// final var current = AwsFunctions.getRegions(GetRegionsArgs.builder()
/// .allRegions(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getRegions
/// arguments:
/// allRegions: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// To see regions that are filtered by `"not-opted-in"`, the <span pulumi-lang-nodejs="`allRegions`" pulumi-lang-dotnet="`AllRegions`" pulumi-lang-go="`allRegions`" pulumi-lang-python="`all_regions`" pulumi-lang-yaml="`allRegions`" pulumi-lang-java="`allRegions`">`all_regions`</span> argument needs to be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> or no results will be returned.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegions({
/// allRegions: true,
/// filters: [{
/// name: "opt-in-status",
/// values: ["not-opted-in"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_regions(all_regions=True,
/// filters=[{
/// "name": "opt-in-status",
/// "values": ["not-opted-in"],
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
/// var current = Aws.GetRegions.Invoke(new()
/// {
/// AllRegions = true,
/// Filters = new[]
/// {
/// new Aws.Inputs.GetRegionsFilterInputArgs
/// {
/// Name = "opt-in-status",
/// Values = new[]
/// {
/// "not-opted-in",
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
/// _, err := aws.GetRegions(ctx, &aws.GetRegionsArgs{
/// AllRegions: pulumi.BoolRef(true),
/// Filters: []aws.GetRegionsFilter{
/// {
/// Name: "opt-in-status",
/// Values: []string{
/// "not-opted-in",
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
/// import com.pulumi.aws.inputs.GetRegionsArgs;
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
/// final var current = AwsFunctions.getRegions(GetRegionsArgs.builder()
/// .allRegions(true)
/// .filters(GetRegionsFilterArgs.builder()
/// .name("opt-in-status")
/// .values("not-opted-in")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getRegions
/// arguments:
/// allRegions: true
/// filters:
/// - name: opt-in-status
/// values:
/// - not-opted-in
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegionsResult2> getRegions2(
  GetRegionsArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getRegions:getRegions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionsResult2.fromMap(result);
}
