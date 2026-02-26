import 'package:pulumi/pulumi.dart';
import 'get_event_categories_args.dart';
import 'get_event_categories_result.dart';

/// ## Example Usage
///
/// List the event categories of all the RDS resources.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
/// const example = await aws.rds.getEventCategories({});
/// return {
/// example: example.eventCategories,
/// };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.get_event_categories()
/// pulumi.export("example", example.event_categories)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Rds.GetEventCategories.Invoke();
///
/// return new Dictionary<string, object?>
/// {
/// ["example"] = example.Apply(getEventCategoriesResult => getEventCategoriesResult.EventCategories),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := rds.GetEventCategories(ctx, &rds.GetEventCategoriesArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("example", example.EventCategories)
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
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetEventCategoriesArgs;
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
/// final var example = RdsFunctions.getEventCategories(GetEventCategoriesArgs.builder()
/// .build());
///
/// ctx.export("example", example.eventCategories());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:rds:getEventCategories
/// arguments: {}
/// outputs:
/// example: ${example.eventCategories}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// List the event categories specific to the RDS resource `db-snapshot`.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
/// const example = await aws.rds.getEventCategories({
/// sourceType: "db-snapshot",
/// });
/// return {
/// example: example.eventCategories,
/// };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.get_event_categories(source_type="db-snapshot")
/// pulumi.export("example", example.event_categories)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Rds.GetEventCategories.Invoke(new()
/// {
/// SourceType = "db-snapshot",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["example"] = example.Apply(getEventCategoriesResult => getEventCategoriesResult.EventCategories),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := rds.GetEventCategories(ctx, &rds.GetEventCategoriesArgs{
/// SourceType: pulumi.StringRef("db-snapshot"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("example", example.EventCategories)
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
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetEventCategoriesArgs;
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
/// final var example = RdsFunctions.getEventCategories(GetEventCategoriesArgs.builder()
/// .sourceType("db-snapshot")
/// .build());
///
/// ctx.export("example", example.eventCategories());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:rds:getEventCategories
/// arguments:
/// sourceType: db-snapshot
/// outputs:
/// example: ${example.eventCategories}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetEventCategoriesResult> getEventCategories(
  GetEventCategoriesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getEventCategories:getEventCategories',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEventCategoriesResult.fromMap(result);
}
