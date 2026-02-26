import 'package:pulumi/pulumi.dart';
import 'get_addresses_args.dart';
import 'get_addresses_result.dart';

/// List IP addresses in a project. For more information see
/// the official API [list](https://cloud.google.com/compute/docs/reference/latest/addresses/list) and
/// [aggregated list](https://cloud.google.com/compute/docs/reference/rest/v1/addresses/aggregatedList) documentation.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test = gcp.compute.getAddresses({
/// filter: "name:test-*",
/// });
/// const prod = new gcp.dns.ManagedZone("prod", {
/// name: "prod-zone",
/// dnsName: "prod.mydomain.com.",
/// });
/// const frontend = new gcp.dns.RecordSet("frontend", {
/// name: pulumi.interpolate`frontend.${prod.dnsName}`,
/// type: "A",
/// ttl: 300,
/// managedZone: prod.name,
/// rrdatas: test.then(test => test.addresses.map(__item => __item.address)),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test = gcp.compute.get_addresses(filter="name:test-*")
/// prod = gcp.dns.ManagedZone("prod",
/// name="prod-zone",
/// dns_name="prod.mydomain.com.")
/// frontend = gcp.dns.RecordSet("frontend",
/// name=prod.dns_name.apply(lambda dns_name: f"frontend.{dns_name}"),
/// type="A",
/// ttl=300,
/// managed_zone=prod.name,
/// rrdatas=[__item.address for __item in test.addresses])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Gcp.Compute.GetAddresses.Invoke(new()
/// {
/// Filter = "name:test-*",
/// });
///
/// var prod = new Gcp.Dns.ManagedZone("prod", new()
/// {
/// Name = "prod-zone",
/// DnsName = "prod.mydomain.com.",
/// });
///
/// var frontend = new Gcp.Dns.RecordSet("frontend", new()
/// {
/// Name = prod.DnsName.Apply(dnsName => $"frontend.{dnsName}"),
/// Type = "A",
/// Ttl = 300,
/// ManagedZone = prod.Name,
/// Rrdatas = test.Apply(getAddressesResult => getAddressesResult.Addresses).Select(__item => __item.Address).ToList(),
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// test, err := compute.GetAddresses(ctx, &compute.GetAddressesArgs{
/// Filter: pulumi.StringRef("name:test-*"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// prod, err := dns.NewManagedZone(ctx, "prod", &dns.ManagedZoneArgs{
/// Name:    pulumi.String("prod-zone"),
/// DnsName: pulumi.String("prod.mydomain.com."),
/// })
/// if err != nil {
/// return err
/// }
/// var splat0 []*string
/// for _, val0 := range test.Addresses {
/// splat0 = append(splat0, val0.Address)
/// }
/// _, err = dns.NewRecordSet(ctx, "frontend", &dns.RecordSetArgs{
/// Name: prod.DnsName.ApplyT(func(dnsName string) (string, error) {
/// return fmt.Sprintf("frontend.%v", dnsName), nil
/// }).(pulumi.StringOutput),
/// Type:        pulumi.String("A"),
/// Ttl:         pulumi.Int(300),
/// ManagedZone: prod.Name,
/// Rrdatas:     splat0,
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetAddressesArgs;
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
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
/// final var test = ComputeFunctions.getAddresses(GetAddressesArgs.builder()
/// .filter("name:test-*")
/// .build());
///
/// var prod = new ManagedZone("prod", ManagedZoneArgs.builder()
/// .name("prod-zone")
/// .dnsName("prod.mydomain.com.")
/// .build());
///
/// var frontend = new RecordSet("frontend", RecordSetArgs.builder()
/// .name(prod.dnsName().applyValue(_dnsName -> String.format("frontend.%s", _dnsName)))
/// .type("A")
/// .ttl(300)
/// .managedZone(prod.name())
/// .rrdatas(test.addresses().stream().map(element -> element.address()).collect(toList()))
/// .build());
///
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAddressesResult> getAddresses(
  GetAddressesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getAddresses:getAddresses',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAddressesResult.fromMap(result);
}
