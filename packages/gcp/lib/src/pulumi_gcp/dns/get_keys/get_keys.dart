import 'package:pulumi/pulumi.dart';
import 'get_keys_args.dart';
import 'get_keys_result.dart';

/// Get the DNSKEY and DS records of DNSSEC-signed managed zones.
///
/// For more information see the
/// [official documentation](https://cloud.google.com/dns/docs/dnskeys/)
/// and [API](https://cloud.google.com/dns/docs/reference/v1/dnsKeys).
///
/// > A<span pulumi-lang-nodejs=" gcp.dns.ManagedZone " pulumi-lang-dotnet=" gcp.dns.ManagedZone " pulumi-lang-go=" dns.ManagedZone " pulumi-lang-python=" dns.ManagedZone " pulumi-lang-yaml=" gcp.dns.ManagedZone " pulumi-lang-java=" gcp.dns.ManagedZone "> gcp.dns.ManagedZone </span>resource must have DNSSEC enabled in order
/// to contain any DNSKEYs. Queries to managed zones without this setting
/// enabled will result in a 404 error as the collection of DNSKEYs does
/// not exist in the DNS API.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = new gcp.dns.ManagedZone("foo", {
/// name: "foobar",
/// dnsName: "foo.bar.",
/// dnssecConfig: {
/// state: "on",
/// nonExistence: "nsec3",
/// },
/// });
/// const fooDnsKeys = gcp.dns.getKeysOutput({
/// managedZone: foo.id,
/// });
/// export const fooDnsDsRecord = fooDnsKeys.apply(fooDnsKeys => fooDnsKeys.keySigningKeys?.[0]?.dsRecord);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.dns.ManagedZone("foo",
/// name="foobar",
/// dns_name="foo.bar.",
/// dnssec_config={
/// "state": "on",
/// "non_existence": "nsec3",
/// })
/// foo_dns_keys = gcp.dns.get_keys_output(managed_zone=foo.id)
/// pulumi.export("fooDnsDsRecord", foo_dns_keys.key_signing_keys[0].ds_record)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = new Gcp.Dns.ManagedZone("foo", new()
/// {
/// Name = "foobar",
/// DnsName = "foo.bar.",
/// DnssecConfig = new Gcp.Dns.Inputs.ManagedZoneDnssecConfigArgs
/// {
/// State = "on",
/// NonExistence = "nsec3",
/// },
/// });
///
/// var fooDnsKeys = Gcp.Dns.GetKeys.Invoke(new()
/// {
/// ManagedZone = foo.Id,
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["fooDnsDsRecord"] = fooDnsKeys.Apply(getKeysResult => getKeysResult.KeySigningKeys[0]?.DsRecord),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// foo, err := dns.NewManagedZone(ctx, "foo", &dns.ManagedZoneArgs{
/// Name:    pulumi.String("foobar"),
/// DnsName: pulumi.String("foo.bar."),
/// DnssecConfig: &dns.ManagedZoneDnssecConfigArgs{
/// State:        pulumi.String("on"),
/// NonExistence: pulumi.String("nsec3"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// fooDnsKeys := dns.GetKeysOutput(ctx, dns.GetKeysOutputArgs{
/// ManagedZone: foo.ID(),
/// }, nil)
/// ctx.Export("fooDnsDsRecord", fooDnsKeys.ApplyT(func(fooDnsKeys dns.GetKeysResult) (*string, error) {
/// return &fooDnsKeys.KeySigningKeys[0].DsRecord, nil
/// }).(pulumi.StringPtrOutput))
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
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZoneDnssecConfigArgs;
/// import com.pulumi.gcp.dns.DnsFunctions;
/// import com.pulumi.gcp.dns.inputs.GetKeysArgs;
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
/// var foo = new ManagedZone("foo", ManagedZoneArgs.builder()
/// .name("foobar")
/// .dnsName("foo.bar.")
/// .dnssecConfig(ManagedZoneDnssecConfigArgs.builder()
/// .state("on")
/// .nonExistence("nsec3")
/// .build())
/// .build());
///
/// final var fooDnsKeys = DnsFunctions.getKeys(GetKeysArgs.builder()
/// .managedZone(foo.id())
/// .build());
///
/// ctx.export("fooDnsDsRecord", fooDnsKeys.applyValue(_fooDnsKeys -> _fooDnsKeys.keySigningKeys()[0].dsRecord()));
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foo:
/// type: gcp:dns:ManagedZone
/// properties:
/// name: foobar
/// dnsName: foo.bar.
/// dnssecConfig:
/// state: on
/// nonExistence: nsec3
/// variables:
/// fooDnsKeys:
/// fn::invoke:
/// function: gcp:dns:getKeys
/// arguments:
/// managedZone: ${foo.id}
/// outputs:
/// fooDnsDsRecord: ${fooDnsKeys.keySigningKeys[0].dsRecord}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetKeysResult> getKeys(
  GetKeysArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dns/getKeys:getKeys',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetKeysResult.fromMap(result);
}
