import 'package:pulumi/pulumi.dart';
import 'get_location_args.dart';
import 'get_location_result.dart';

/// Retrieve information about a specific AWS Direct Connect location in the current AWS Region.
/// These are the locations that can be specified when configuring <span pulumi-lang-nodejs="`aws.directconnect.Connection`" pulumi-lang-dotnet="`aws.directconnect.Connection`" pulumi-lang-go="`directconnect.Connection`" pulumi-lang-python="`directconnect.Connection`" pulumi-lang-yaml="`aws.directconnect.Connection`" pulumi-lang-java="`aws.directconnect.Connection`">`aws.directconnect.Connection`</span> or <span pulumi-lang-nodejs="`aws.directconnect.LinkAggregationGroup`" pulumi-lang-dotnet="`aws.directconnect.LinkAggregationGroup`" pulumi-lang-go="`directconnect.LinkAggregationGroup`" pulumi-lang-python="`directconnect.LinkAggregationGroup`" pulumi-lang-yaml="`aws.directconnect.LinkAggregationGroup`" pulumi-lang-java="`aws.directconnect.LinkAggregationGroup`">`aws.directconnect.LinkAggregationGroup`</span> resources.
///
/// > **Note:** This data source is different from the <span pulumi-lang-nodejs="`aws.directconnect.getLocations`" pulumi-lang-dotnet="`aws.directconnect.getLocations`" pulumi-lang-go="`directconnect.getLocations`" pulumi-lang-python="`directconnect_get_locations`" pulumi-lang-yaml="`aws.directconnect.getLocations`" pulumi-lang-java="`aws.directconnect.getLocations`">`aws.directconnect.getLocations`</span> data source which retrieves information about all the AWS Direct Connect locations in the current AWS Region.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.directconnect.getLocation({
/// locationCode: "CS32A-24FL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directconnect.get_location(location_code="CS32A-24FL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.DirectConnect.GetLocation.Invoke(new()
/// {
/// LocationCode = "CS32A-24FL",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := directconnect.GetLocation(ctx, &directconnect.GetLocationArgs{
/// LocationCode: "CS32A-24FL",
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
/// import com.pulumi.aws.directconnect.DirectconnectFunctions;
/// import com.pulumi.aws.directconnect.inputs.GetLocationArgs;
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
/// final var example = DirectconnectFunctions.getLocation(GetLocationArgs.builder()
/// .locationCode("CS32A-24FL")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:directconnect:getLocation
/// arguments:
/// locationCode: CS32A-24FL
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetLocationResult> getLocation(
  GetLocationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:directconnect/getLocation:getLocation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLocationResult.fromMap(result);
}
