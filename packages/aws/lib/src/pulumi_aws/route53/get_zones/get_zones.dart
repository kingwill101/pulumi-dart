import 'package:pulumi/pulumi.dart';
import 'get_zones_result.dart';

/// This resource can be useful for getting back a list of Route53 Hosted Zone IDs for a Region.
///
/// ## Example Usage
///
/// The following example retrieves a list of all Hosted Zone IDs.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const all = aws.route53.getZones({});
/// export const example = all.then(all => all.ids);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// all = aws.route53.get_zones()
/// pulumi.export("example", all.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var all = Aws.Route53.GetZones.Invoke();
///
/// return new Dictionary<string, object?>
/// {
/// ["example"] = all.Apply(getZonesResult => getZonesResult.Ids),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// all, err := route53.GetZones(ctx, map[string]interface{}{}, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("example", all.Ids)
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
/// import com.pulumi.aws.route53.Route53Functions;
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
/// final var all = Route53Functions.getZones(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
/// ctx.export("example", all.ids());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// all:
/// fn::invoke:
/// function: aws:route53:getZones
/// arguments: {}
/// outputs:
/// example: ${all.ids}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetZonesResult> getZones({
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getZones:getZones',
    const <String, dynamic>{},
    options: toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
