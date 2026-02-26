import 'package:pulumi/pulumi.dart';
import 'get_locations_args.dart';
import 'get_locations_result.dart';

/// Retrieve information about the AWS Direct Connect locations in the current AWS Region.
/// These are the locations that can be specified when configuring <span pulumi-lang-nodejs="`aws.directconnect.Connection`" pulumi-lang-dotnet="`aws.directconnect.Connection`" pulumi-lang-go="`directconnect.Connection`" pulumi-lang-python="`directconnect.Connection`" pulumi-lang-yaml="`aws.directconnect.Connection`" pulumi-lang-java="`aws.directconnect.Connection`">`aws.directconnect.Connection`</span> or <span pulumi-lang-nodejs="`aws.directconnect.LinkAggregationGroup`" pulumi-lang-dotnet="`aws.directconnect.LinkAggregationGroup`" pulumi-lang-go="`directconnect.LinkAggregationGroup`" pulumi-lang-python="`directconnect.LinkAggregationGroup`" pulumi-lang-yaml="`aws.directconnect.LinkAggregationGroup`" pulumi-lang-java="`aws.directconnect.LinkAggregationGroup`">`aws.directconnect.LinkAggregationGroup`</span> resources.
///
/// > **Note:** This data source is different from the <span pulumi-lang-nodejs="`aws.directconnect.getLocation`" pulumi-lang-dotnet="`aws.directconnect.getLocation`" pulumi-lang-go="`directconnect.getLocation`" pulumi-lang-python="`directconnect_get_location`" pulumi-lang-yaml="`aws.directconnect.getLocation`" pulumi-lang-java="`aws.directconnect.getLocation`">`aws.directconnect.getLocation`</span> data source which retrieves information about a specific AWS Direct Connect location in the current AWS Region.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const available = aws.directconnect.getLocations({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// available = aws.directconnect.get_locations()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var available = Aws.DirectConnect.GetLocations.Invoke();
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
/// _, err := directconnect.GetLocations(ctx, &directconnect.GetLocationsArgs{}, nil)
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
/// import com.pulumi.aws.directconnect.inputs.GetLocationsArgs;
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
/// final var available = DirectconnectFunctions.getLocations(GetLocationsArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// available:
/// fn::invoke:
/// function: aws:directconnect:getLocations
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetLocationsResult> getLocations(
  GetLocationsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:directconnect/getLocations:getLocations',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLocationsResult.fromMap(result);
}
