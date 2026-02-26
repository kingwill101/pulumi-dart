import 'package:pulumi/pulumi.dart';
import 'get_managed_zone_args.dart';
import 'get_managed_zone_result.dart';

/// Provides access to a zone's attributes within Google Cloud DNS.
/// For more information see
/// [the official documentation](https://cloud.google.com/dns/zones/)
/// and
/// [API](https://cloud.google.com/dns/api/v1/managedZones).
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const envDnsZone = gcp.dns.getManagedZone({
/// name: "qa-zone",
/// });
/// const dns = new gcp.dns.RecordSet("dns", {
/// name: envDnsZone.then(envDnsZone => `my-address.${envDnsZone.dnsName}`),
/// type: "TXT",
/// ttl: 300,
/// managedZone: envDnsZone.then(envDnsZone => envDnsZone.name),
/// rrdatas: ["test"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// env_dns_zone = gcp.dns.get_managed_zone(name="qa-zone")
/// dns = gcp.dns.RecordSet("dns",
/// name=f"my-address.{env_dns_zone.dns_name}",
/// type="TXT",
/// ttl=300,
/// managed_zone=env_dns_zone.name,
/// rrdatas=["test"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var envDnsZone = Gcp.Dns.GetManagedZone.Invoke(new()
/// {
/// Name = "qa-zone",
/// });
///
/// var dns = new Gcp.Dns.RecordSet("dns", new()
/// {
/// Name = $"my-address.{envDnsZone.Apply(getManagedZoneResult => getManagedZoneResult.DnsName)}",
/// Type = "TXT",
/// Ttl = 300,
/// ManagedZone = envDnsZone.Apply(getManagedZoneResult => getManagedZoneResult.Name),
/// Rrdatas = new[]
/// {
/// "test",
/// },
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
/// envDnsZone, err := dns.LookupManagedZone(ctx, &dns.LookupManagedZoneArgs{
/// Name: "qa-zone",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = dns.NewRecordSet(ctx, "dns", &dns.RecordSetArgs{
/// Name:        pulumi.Sprintf("my-address.%v", envDnsZone.DnsName),
/// Type:        pulumi.String("TXT"),
/// Ttl:         pulumi.Int(300),
/// ManagedZone: pulumi.String(envDnsZone.Name),
/// Rrdatas: pulumi.StringArray{
/// pulumi.String("test"),
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
/// import com.pulumi.gcp.dns.DnsFunctions;
/// import com.pulumi.gcp.dns.inputs.GetManagedZoneArgs;
/// import com.pulumi.gcp.dns.RecordSet;
/// import com.pulumi.gcp.dns.RecordSetArgs;
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
/// final var envDnsZone = DnsFunctions.getManagedZone(GetManagedZoneArgs.builder()
/// .name("qa-zone")
/// .build());
///
/// var dns = new RecordSet("dns", RecordSetArgs.builder()
/// .name(String.format("my-address.%s", envDnsZone.dnsName()))
/// .type("TXT")
/// .ttl(300)
/// .managedZone(envDnsZone.name())
/// .rrdatas("test")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dns:
/// type: gcp:dns:RecordSet
/// properties:
/// name: my-address.${envDnsZone.dnsName}
/// type: TXT
/// ttl: 300
/// managedZone: ${envDnsZone.name}
/// rrdatas:
/// - test
/// variables:
/// envDnsZone:
/// fn::invoke:
/// function: gcp:dns:getManagedZone
/// arguments:
/// name: qa-zone
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetManagedZoneResult> getManagedZone(
  GetManagedZoneArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dns/getManagedZone:getManagedZone',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetManagedZoneResult.fromMap(result);
}
