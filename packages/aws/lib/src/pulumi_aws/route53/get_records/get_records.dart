import 'package:pulumi/pulumi.dart';
import 'get_records_args.dart';
import 'get_records_result.dart';

/// Use this data source to get the details of resource records in a Route 53 hosted zone.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// Return all records in the zone.
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
/// const example = selected.then(selected => aws.route53.getRecords({
/// zoneId: selected.zoneId,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// selected = aws.route53.get_zone(name="test.com.",
/// private_zone=True)
/// example = aws.route53.get_records(zone_id=selected.zone_id)
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
/// var example = Aws.Route53.GetRecords.Invoke(new()
/// {
/// ZoneId = selected.Apply(getZoneResult => getZoneResult.ZoneId),
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
/// _, err = route53.GetRecords(ctx, &route53.GetRecordsArgs{
/// ZoneId: selected.ZoneId,
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetZoneArgs;
/// import com.pulumi.aws.route53.inputs.GetRecordsArgs;
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
/// final var example = Route53Functions.getRecords(GetRecordsArgs.builder()
/// .zoneId(selected.zoneId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// selected:
/// fn::invoke:
/// function: aws:route53:getZone
/// arguments:
/// name: test.com.
/// privateZone: true
/// example:
/// fn::invoke:
/// function: aws:route53:getRecords
/// arguments:
/// zoneId: ${selected.zoneId}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Basic Usage with filter
///
/// Return the records that starts with <span pulumi-lang-nodejs="`www`" pulumi-lang-dotnet="`Www`" pulumi-lang-go="`www`" pulumi-lang-python="`www`" pulumi-lang-yaml="`www`" pulumi-lang-java="`www`">`www`</span>.
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
/// const example = selected.then(selected => aws.route53.getRecords({
/// zoneId: selected.zoneId,
/// nameRegex: "^www",
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// selected = aws.route53.get_zone(name="test.com.",
/// private_zone=True)
/// example = aws.route53.get_records(zone_id=selected.zone_id,
/// name_regex="^www")
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
/// var example = Aws.Route53.GetRecords.Invoke(new()
/// {
/// ZoneId = selected.Apply(getZoneResult => getZoneResult.ZoneId),
/// NameRegex = "^www",
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
/// _, err = route53.GetRecords(ctx, &route53.GetRecordsArgs{
/// ZoneId:    selected.ZoneId,
/// NameRegex: pulumi.StringRef("^www"),
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetZoneArgs;
/// import com.pulumi.aws.route53.inputs.GetRecordsArgs;
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
/// final var example = Route53Functions.getRecords(GetRecordsArgs.builder()
/// .zoneId(selected.zoneId())
/// .nameRegex("^www")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// selected:
/// fn::invoke:
/// function: aws:route53:getZone
/// arguments:
/// name: test.com.
/// privateZone: true
/// example:
/// fn::invoke:
/// function: aws:route53:getRecords
/// arguments:
/// zoneId: ${selected.zoneId}
/// nameRegex: ^www
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRecordsResult> getRecords(
  GetRecordsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getRecords:getRecords',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRecordsResult.fromMap(result);
}
