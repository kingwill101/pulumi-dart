import 'package:pulumi/pulumi.dart';
import 'get_zone_args.dart';
import 'get_zone_result.dart';

/// <span pulumi-lang-nodejs="`aws.route53.Zone`" pulumi-lang-dotnet="`aws.route53.Zone`" pulumi-lang-go="`route53.Zone`" pulumi-lang-python="`route53.Zone`" pulumi-lang-yaml="`aws.route53.Zone`" pulumi-lang-java="`aws.route53.Zone`">`aws.route53.Zone`</span> provides details about a specific Route 53 Hosted Zone.
///
/// This data source allows to find a Hosted Zone ID given Hosted Zone name and certain search criteria.
///
/// ## Example Usage
///
/// The following example shows how to get a Hosted Zone from its name and from this data how to create a Record Set.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const selected = aws.route53.getZone({
/// name: "test.com.",
/// privateZone: true,
/// });
/// const www = new aws.route53.Record("www", {
/// zoneId: selected.then(selected => selected.zoneId),
/// name: selected.then(selected => `www.${selected.name}`),
/// type: aws.route53.RecordType.A,
/// ttl: 300,
/// records: ["10.0.0.1"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// selected = aws.route53.get_zone(name="test.com.",
/// private_zone=True)
/// www = aws.route53.Record("www",
/// zone_id=selected.zone_id,
/// name=f"www.{selected.name}",
/// type=aws.route53.RecordType.A,
/// ttl=300,
/// records=["10.0.0.1"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var selected = Aws.Route53.GetZone.Invoke(new()
/// {
/// Name = "test.com.",
/// PrivateZone = true,
/// });
///
/// var www = new Aws.Route53.Record("www", new()
/// {
/// ZoneId = selected.Apply(getZoneResult => getZoneResult.ZoneId),
/// Name = $"www.{selected.Apply(getZoneResult => getZoneResult.Name)}",
/// Type = Aws.Route53.RecordType.A,
/// Ttl = 300,
/// Records = new[]
/// {
/// "10.0.0.1",
/// },
/// });
///
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
/// selected, err := route53.LookupZone(ctx, &route53.LookupZoneArgs{
/// Name:        pulumi.StringRef("test.com."),
/// PrivateZone: pulumi.BoolRef(true),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = route53.NewRecord(ctx, "www", &route53.RecordArgs{
/// ZoneId: pulumi.String(selected.ZoneId),
/// Name:   pulumi.Sprintf("www.%v", selected.Name),
/// Type:   pulumi.String(route53.RecordTypeA),
/// Ttl:    pulumi.Int(300),
/// Records: pulumi.StringArray{
/// pulumi.String("10.0.0.1"),
/// },
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetZoneArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
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
/// final var selected = Route53Functions.getZone(GetZoneArgs.builder()
/// .name("test.com.")
/// .privateZone(true)
/// .build());
///
/// var www = new Record("www", RecordArgs.builder()
/// .zoneId(selected.zoneId())
/// .name(String.format("www.%s", selected.name()))
/// .type("A")
/// .ttl(300)
/// .records("10.0.0.1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// www:
/// type: aws:route53:Record
/// properties:
/// zoneId: ${selected.zoneId}
/// name: www.${selected.name}
/// type: A
/// ttl: '300'
/// records:
/// - 10.0.0.1
/// variables:
/// selected:
/// fn::invoke:
/// function: aws:route53:getZone
/// arguments:
/// name: test.com.
/// privateZone: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// The following example shows how to get a Hosted Zone from a unique combination of its tags:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const selected = aws.route53.getZone({
/// tags: {
/// scope: "local",
/// category: "api",
/// },
/// });
/// export const localApiZone = selected.then(selected => selected.zoneId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// selected = aws.route53.get_zone(tags={
/// "scope": "local",
/// "category": "api",
/// })
/// pulumi.export("localApiZone", selected.zone_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var selected = Aws.Route53.GetZone.Invoke(new()
/// {
/// Tags =
/// {
/// { "scope", "local" },
/// { "category", "api" },
/// },
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["localApiZone"] = selected.Apply(getZoneResult => getZoneResult.ZoneId),
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
/// selected, err := route53.LookupZone(ctx, &route53.LookupZoneArgs{
/// Tags: map[string]interface{}{
/// "scope":    "local",
/// "category": "api",
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("localApiZone", selected.ZoneId)
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
/// import com.pulumi.aws.route53.inputs.GetZoneArgs;
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
/// final var selected = Route53Functions.getZone(GetZoneArgs.builder()
/// .tags(Map.ofEntries(
/// Map.entry("scope", "local"),
/// Map.entry("category", "api")
/// ))
/// .build());
///
/// ctx.export("localApiZone", selected.zoneId());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// selected:
/// fn::invoke:
/// function: aws:route53:getZone
/// arguments:
/// tags:
/// scope: local
/// category: api
/// outputs:
/// localApiZone: ${selected.zoneId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetZoneResult> getZone(
  GetZoneArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getZone:getZone',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetZoneResult.fromMap(result);
}
