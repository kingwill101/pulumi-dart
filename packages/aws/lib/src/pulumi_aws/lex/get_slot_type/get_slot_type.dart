import 'package:pulumi/pulumi.dart';
import 'get_slot_type_args.dart';
import 'get_slot_type_result.dart';

/// Provides details about a specific Amazon Lex Slot Type.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const flowerTypes = aws.lex.getSlotType({
/// name: "FlowerTypes",
/// version: "1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// flower_types = aws.lex.get_slot_type(name="FlowerTypes",
/// version="1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var flowerTypes = Aws.Lex.GetSlotType.Invoke(new()
/// {
/// Name = "FlowerTypes",
/// Version = "1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lex.LookupSlotType(ctx, &lex.LookupSlotTypeArgs{
/// Name:    "FlowerTypes",
/// Version: pulumi.StringRef("1"),
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
/// import com.pulumi.aws.lex.LexFunctions;
/// import com.pulumi.aws.lex.inputs.GetSlotTypeArgs;
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
/// final var flowerTypes = LexFunctions.getSlotType(GetSlotTypeArgs.builder()
/// .name("FlowerTypes")
/// .version("1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// flowerTypes:
/// fn::invoke:
/// function: aws:lex:getSlotType
/// arguments:
/// name: FlowerTypes
/// version: '1'
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSlotTypeResult> getSlotType(
  GetSlotTypeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lex/getSlotType:getSlotType',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSlotTypeResult.fromMap(result);
}
