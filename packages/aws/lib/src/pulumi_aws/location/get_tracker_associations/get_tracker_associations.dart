import 'package:pulumi/pulumi.dart';
import 'get_tracker_associations_args.dart';
import 'get_tracker_associations_result.dart';

/// Retrieve information about Location Service Tracker Associations.
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
/// const example = aws.location.getTrackerAssociations({
/// trackerName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.location.get_tracker_associations(tracker_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Location.GetTrackerAssociations.Invoke(new()
/// {
/// TrackerName = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/location"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := location.GetTrackerAssociations(ctx, &location.GetTrackerAssociationsArgs{
/// TrackerName: "example",
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
/// import com.pulumi.aws.location.LocationFunctions;
/// import com.pulumi.aws.location.inputs.GetTrackerAssociationsArgs;
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
/// final var example = LocationFunctions.getTrackerAssociations(GetTrackerAssociationsArgs.builder()
/// .trackerName("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:location:getTrackerAssociations
/// arguments:
/// trackerName: example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTrackerAssociationsResult> getTrackerAssociations(
  GetTrackerAssociationsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:location/getTrackerAssociations:getTrackerAssociations',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTrackerAssociationsResult.fromMap(result);
}
