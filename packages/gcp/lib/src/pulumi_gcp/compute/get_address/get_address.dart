import 'package:pulumi/pulumi.dart';
import 'get_address_args.dart';
import 'get_address_result.dart';

/// Get the IP address from a static address. For more information see
/// the official [API](https://cloud.google.com/compute/docs/reference/latest/addresses/get) documentation.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myAddress = gcp.compute.getAddress({
/// name: "foobar",
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
/// rrdatas: [myAddress.then(myAddress => myAddress.address)],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_address = gcp.compute.get_address(name="foobar")
/// prod = gcp.dns.ManagedZone("prod",
/// name="prod-zone",
/// dns_name="prod.mydomain.com.")
/// frontend = gcp.dns.RecordSet("frontend",
/// name=prod.dns_name.apply(lambda dns_name: f"frontend.{dns_name}"),
/// type="A",
/// ttl=300,
/// managed_zone=prod.name,
/// rrdatas=[my_address.address])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myAddress = Gcp.Compute.GetAddress.Invoke(new()
/// {
/// Name = "foobar",
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
/// Rrdatas = new[]
/// {
/// myAddress.Apply(getAddressResult => getAddressResult.Address),
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myAddress, err := compute.LookupAddress(ctx, &compute.LookupAddressArgs{
/// Name: "foobar",
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
/// _, err = dns.NewRecordSet(ctx, "frontend", &dns.RecordSetArgs{
/// Name: prod.DnsName.ApplyT(func(dnsName string) (string, error) {
/// return fmt.Sprintf("frontend.%v", dnsName), nil
/// }).(pulumi.StringOutput),
/// Type:        pulumi.String("A"),
/// Ttl:         pulumi.Int(300),
/// ManagedZone: prod.Name,
/// Rrdatas: pulumi.StringArray{
/// pulumi.String(myAddress.Address),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetAddressArgs;
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
/// final var myAddress = ComputeFunctions.getAddress(GetAddressArgs.builder()
/// .name("foobar")
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
/// .rrdatas(myAddress.address())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// frontend:
/// type: gcp:dns:RecordSet
/// properties:
/// name: frontend.${prod.dnsName}
/// type: A
/// ttl: 300
/// managedZone: ${prod.name}
/// rrdatas:
/// - ${myAddress.address}
/// prod:
/// type: gcp:dns:ManagedZone
/// properties:
/// name: prod-zone
/// dnsName: prod.mydomain.com.
/// variables:
/// myAddress:
/// fn::invoke:
/// function: gcp:compute:getAddress
/// arguments:
/// name: foobar
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAddressResult> getAddress(
  GetAddressArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getAddress:getAddress',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAddressResult.fromMap(result);
}
