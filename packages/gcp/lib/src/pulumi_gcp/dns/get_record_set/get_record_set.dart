import 'package:pulumi/pulumi.dart';
import 'get_record_set_args.dart';
import 'get_record_set_result.dart';

/// Get a DNS record set within Google Cloud DNS
/// For more information see
/// [the official documentation](https://cloud.google.com/dns/docs/records)
/// and
/// [API](https://cloud.google.com/dns/docs/reference/v1/resourceRecordSets)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sample = gcp.dns.getManagedZone({
/// name: "sample-zone",
/// });
/// const rs = Promise.all([sample, sample]).then(([sample, sample1]) => gcp.dns.getRecordSet({
/// managedZone: sample.name,
/// name: `my-record.${sample1.dnsName}`,
/// type: "A",
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// sample = gcp.dns.get_managed_zone(name="sample-zone")
/// rs = gcp.dns.get_record_set(managed_zone=sample.name,
/// name=f"my-record.{sample.dns_name}",
/// type="A")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var sample = Gcp.Dns.GetManagedZone.Invoke(new()
/// {
/// Name = "sample-zone",
/// });
///
/// var rs = Gcp.Dns.GetRecordSet.Invoke(new()
/// {
/// ManagedZone = sample.Apply(getManagedZoneResult => getManagedZoneResult.Name),
/// Name = $"my-record.{sample.Apply(getManagedZoneResult => getManagedZoneResult.DnsName)}",
/// Type = "A",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// sample, err := dns.LookupManagedZone(ctx, &dns.LookupManagedZoneArgs{
/// Name: "sample-zone",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = dns.LookupRecordSet(ctx, &dns.LookupRecordSetArgs{
/// ManagedZone: sample.Name,
/// Name:        fmt.Sprintf("my-record.%v", sample.DnsName),
/// Type:        "A",
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
/// import com.pulumi.gcp.dns.DnsFunctions;
/// import com.pulumi.gcp.dns.inputs.GetManagedZoneArgs;
/// import com.pulumi.gcp.dns.inputs.GetRecordSetArgs;
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
/// final var sample = DnsFunctions.getManagedZone(GetManagedZoneArgs.builder()
/// .name("sample-zone")
/// .build());
///
/// final var rs = DnsFunctions.getRecordSet(GetRecordSetArgs.builder()
/// .managedZone(sample.name())
/// .name(String.format("my-record.%s", sample.dnsName()))
/// .type("A")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// sample:
/// fn::invoke:
/// function: gcp:dns:getManagedZone
/// arguments:
/// name: sample-zone
/// rs:
/// fn::invoke:
/// function: gcp:dns:getRecordSet
/// arguments:
/// managedZone: ${sample.name}
/// name: my-record.${sample.dnsName}
/// type: A
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRecordSetResult> getRecordSet(
  GetRecordSetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dns/getRecordSet:getRecordSet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRecordSetResult.fromMap(result);
}
