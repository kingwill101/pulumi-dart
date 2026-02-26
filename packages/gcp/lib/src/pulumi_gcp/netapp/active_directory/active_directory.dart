import 'package:pulumi/pulumi.dart';
import 'active_directory_args.dart';

/// ActiveDirectory is the public representation of the active directory config.
///
///
/// To get more information about ActiveDirectory, see:
///
/// * [API documentation](https://cloud.google.com/netapp/volumes/docs/reference/rest/v1/projects.locations.activeDirectories)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/netapp/volumes/docs/configure-and-use/active-directory/about-ad)
///
///
///
/// ## Example Usage
///
/// ### Netapp Active Directory Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testActiveDirectoryFull = new gcp.netapp.ActiveDirectory("test_active_directory_full", {
/// name: "test-active-directory-full",
/// location: "us-central1",
/// domain: "ad.internal",
/// dns: "172.30.64.3",
/// netBiosPrefix: "smbserver",
/// username: "user",
/// password: "pass",
/// aesEncryption: false,
/// backupOperators: [
/// "test1",
/// "test2",
/// ],
/// administrators: [
/// "test1",
/// "test2",
/// ],
/// description: "ActiveDirectory is the public representation of the active directory config.",
/// encryptDcConnections: false,
/// kdcHostname: "hostname",
/// kdcIp: "10.10.0.11",
/// labels: {
/// foo: "bar",
/// },
/// ldapSigning: false,
/// nfsUsersWithLdap: false,
/// organizationalUnit: "CN=Computers",
/// securityOperators: [
/// "test1",
/// "test2",
/// ],
/// site: "test-site",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_active_directory_full = gcp.netapp.ActiveDirectory("test_active_directory_full",
/// name="test-active-directory-full",
/// location="us-central1",
/// domain="ad.internal",
/// dns="172.30.64.3",
/// net_bios_prefix="smbserver",
/// username="user",
/// password="pass",
/// aes_encryption=False,
/// backup_operators=[
/// "test1",
/// "test2",
/// ],
/// administrators=[
/// "test1",
/// "test2",
/// ],
/// description="ActiveDirectory is the public representation of the active directory config.",
/// encrypt_dc_connections=False,
/// kdc_hostname="hostname",
/// kdc_ip="10.10.0.11",
/// labels={
/// "foo": "bar",
/// },
/// ldap_signing=False,
/// nfs_users_with_ldap=False,
/// organizational_unit="CN=Computers",
/// security_operators=[
/// "test1",
/// "test2",
/// ],
/// site="test-site")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testActiveDirectoryFull = new Gcp.Netapp.ActiveDirectory("test_active_directory_full", new()
/// {
/// Name = "test-active-directory-full",
/// Location = "us-central1",
/// Domain = "ad.internal",
/// Dns = "172.30.64.3",
/// NetBiosPrefix = "smbserver",
/// Username = "user",
/// Password = "pass",
/// AesEncryption = false,
/// BackupOperators = new[]
/// {
/// "test1",
/// "test2",
/// },
/// Administrators = new[]
/// {
/// "test1",
/// "test2",
/// },
/// Description = "ActiveDirectory is the public representation of the active directory config.",
/// EncryptDcConnections = false,
/// KdcHostname = "hostname",
/// KdcIp = "10.10.0.11",
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// LdapSigning = false,
/// NfsUsersWithLdap = false,
/// OrganizationalUnit = "CN=Computers",
/// SecurityOperators = new[]
/// {
/// "test1",
/// "test2",
/// },
/// Site = "test-site",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/netapp"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := netapp.NewActiveDirectory(ctx, "test_active_directory_full", &netapp.ActiveDirectoryArgs{
/// Name:          pulumi.String("test-active-directory-full"),
/// Location:      pulumi.String("us-central1"),
/// Domain:        pulumi.String("ad.internal"),
/// Dns:           pulumi.String("172.30.64.3"),
/// NetBiosPrefix: pulumi.String("smbserver"),
/// Username:      pulumi.String("user"),
/// Password:      pulumi.String("pass"),
/// AesEncryption: pulumi.Bool(false),
/// BackupOperators: pulumi.StringArray{
/// pulumi.String("test1"),
/// pulumi.String("test2"),
/// },
/// Administrators: pulumi.StringArray{
/// pulumi.String("test1"),
/// pulumi.String("test2"),
/// },
/// Description:          pulumi.String("ActiveDirectory is the public representation of the active directory config."),
/// EncryptDcConnections: pulumi.Bool(false),
/// KdcHostname:          pulumi.String("hostname"),
/// KdcIp:                pulumi.String("10.10.0.11"),
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// LdapSigning:        pulumi.Bool(false),
/// NfsUsersWithLdap:   pulumi.Bool(false),
/// OrganizationalUnit: pulumi.String("CN=Computers"),
/// SecurityOperators: pulumi.StringArray{
/// pulumi.String("test1"),
/// pulumi.String("test2"),
/// },
/// Site: pulumi.String("test-site"),
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
/// import com.pulumi.gcp.netapp.ActiveDirectory;
/// import com.pulumi.gcp.netapp.ActiveDirectoryArgs;
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
/// var testActiveDirectoryFull = new ActiveDirectory("testActiveDirectoryFull", ActiveDirectoryArgs.builder()
/// .name("test-active-directory-full")
/// .location("us-central1")
/// .domain("ad.internal")
/// .dns("172.30.64.3")
/// .netBiosPrefix("smbserver")
/// .username("user")
/// .password("pass")
/// .aesEncryption(false)
/// .backupOperators(
/// "test1",
/// "test2")
/// .administrators(
/// "test1",
/// "test2")
/// .description("ActiveDirectory is the public representation of the active directory config.")
/// .encryptDcConnections(false)
/// .kdcHostname("hostname")
/// .kdcIp("10.10.0.11")
/// .labels(Map.of("foo", "bar"))
/// .ldapSigning(false)
/// .nfsUsersWithLdap(false)
/// .organizationalUnit("CN=Computers")
/// .securityOperators(
/// "test1",
/// "test2")
/// .site("test-site")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testActiveDirectoryFull:
/// type: gcp:netapp:ActiveDirectory
/// name: test_active_directory_full
/// properties:
/// name: test-active-directory-full
/// location: us-central1
/// domain: ad.internal
/// dns: 172.30.64.3
/// netBiosPrefix: smbserver
/// username: user
/// password: pass
/// aesEncryption: false
/// backupOperators:
/// - test1
/// - test2
/// administrators:
/// - test1
/// - test2
/// description: ActiveDirectory is the public representation of the active directory config.
/// encryptDcConnections: false
/// kdcHostname: hostname
/// kdcIp: 10.10.0.11
/// labels:
/// foo: bar
/// ldapSigning: false
/// nfsUsersWithLdap: false
/// organizationalUnit: CN=Computers
/// securityOperators:
/// - test1
/// - test2
/// site: test-site
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ActiveDirectory can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/activeDirectories/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, ActiveDirectory can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/activeDirectory:ActiveDirectory default projects/{{project}}/locations/{{location}}/activeDirectories/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/activeDirectory:ActiveDirectory default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/activeDirectory:ActiveDirectory default {{location}}/{{name}}
/// ```
class ActiveDirectory extends CustomResource {
  /// Domain user accounts to be added to the local Administrators group of the SMB service. Comma-separated list of domain users or groups. The Domain Admin group is automatically added when the service joins your domain as a hidden group.
  late final Output<List<String>?> administrators;

  /// Enables AES-128 and AES-256 encryption for Kerberos-based communication with Active Directory.
  late final Output<bool?> aesEncryption;

  /// Domain user/group accounts to be added to the Backup Operators group of the SMB service. The Backup Operators group allows members to backup and restore files regardless of whether they have read or write access to the files. Comma-separated list.
  late final Output<List<String>?> backupOperators;

  /// Create time of the active directory. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  late final Output<String> createTime;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// Comma separated list of DNS server IP addresses for the Active Directory domain.
  late final Output<String> dns;

  /// Fully qualified domain name for the Active Directory domain.
  late final Output<String> domain;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// If enabled, traffic between the SMB server to Domain Controller (DC) will be encrypted.
  late final Output<bool?> encryptDcConnections;

  /// Hostname of the Active Directory server used as Kerberos Key Distribution Center. Only required for volumes using kerberized NFSv4.1
  late final Output<String?> kdcHostname;

  /// IP address of the Active Directory server used as Kerberos Key Distribution Center.
  late final Output<String?> kdcIp;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Specifies whether or not the LDAP traffic needs to be signed.
  late final Output<bool?> ldapSigning;

  /// Name of the region for the policy to apply to.
  late final Output<String> location;

  /// The resource name of the Active Directory pool. Needs to be unique per location.
  late final Output<String> name;

  /// NetBIOS name prefix of the server to be created.
  /// A five-character random ID is generated automatically, for example, -6f9a, and appended to the prefix. The full UNC share path will have the following format:
  /// `\\NetBIOS_PREFIX-ABCD.DOMAIN_NAME\SHARE_NAME`
  late final Output<String> netBiosPrefix;

  /// Local UNIX users on clients without valid user information in Active Directory are blocked from access to LDAP enabled volumes.
  /// This option can be used to temporarily switch such volumes to AUTH_SYS authentication (user ID + 1-16 groups).
  late final Output<bool?> nfsUsersWithLdap;

  /// Name of the Organizational Unit where you intend to create the computer account for NetApp Volumes.
  /// Defaults to `CN=Computers` if left empty.
  late final Output<String> organizationalUnit;
  late final Output<String> password;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Domain accounts that require elevated privileges such as `SeSecurityPrivilege` to manage security logs. Comma-separated list.
  late final Output<List<String>?> securityOperators;

  /// Specifies an Active Directory site to manage domain controller selection.
  /// Use when Active Directory domain controllers in multiple regions are configured. Defaults to `Default-First-Site-Name` if left empty.
  late final Output<String?> site;

  /// The state of the Active Directory policy (not the Active Directory itself).
  late final Output<String> state;

  /// The state details of the Active Directory.
  late final Output<String> stateDetails;

  /// Username for the Active Directory account with permissions to create the compute account within the specified organizational unit.
  late final Output<String> username;

  ActiveDirectory(
    String name, {
    ActiveDirectoryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/activeDirectory:ActiveDirectory',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.administrators = Output.createUnknown<List<String>?>();
    this.aesEncryption = Output.createUnknown<bool?>();
    this.backupOperators = Output.createUnknown<List<String>?>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.dns = Output.createUnknown<String>();
    this.domain = Output.createUnknown<String>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.encryptDcConnections = Output.createUnknown<bool?>();
    this.kdcHostname = Output.createUnknown<String?>();
    this.kdcIp = Output.createUnknown<String?>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.ldapSigning = Output.createUnknown<bool?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.netBiosPrefix = Output.createUnknown<String>();
    this.nfsUsersWithLdap = Output.createUnknown<bool?>();
    this.organizationalUnit = Output.createUnknown<String>();
    this.password = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.securityOperators = Output.createUnknown<List<String>?>();
    this.site = Output.createUnknown<String?>();
    this.state = Output.createUnknown<String>();
    this.stateDetails = Output.createUnknown<String>();
    this.username = Output.createUnknown<String>();
  }
}
