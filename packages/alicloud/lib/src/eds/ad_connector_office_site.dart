import 'package:pulumi/pulumi.dart' as pulumi;
import 'ad_connector_office_site_args.dart';

/// Provides a ECD Ad Connector Office Site resource.
///
/// For information about ECD Ad Connector Office Site and how to use it, see [What is Ad Connector Office Site](https://www.alibabacloud.com/help/en/wuying-workspace/developer-reference/api-ecd-2020-09-30-createadconnectorofficesite).
///
/// > **NOTE:** Available since v1.176.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.cen.Instance("default", {
///     cenInstanceName: name,
///     protectionLevel: "REDUCED",
/// });
/// const defaultAdConnectorOfficeSite = new alicloud.eds.AdConnectorOfficeSite("default", {
///     adConnectorOfficeSiteName: name,
///     bandwidth: 100,
///     cenId: _default.id,
///     cidrBlock: "10.0.0.0/12",
///     desktopAccessType: "INTERNET",
///     dnsAddresses: ["127.0.0.2"],
///     domainName: "corp.example.com",
///     domainPassword: "Example1234",
///     domainUserName: "sAMAccountName",
///     enableAdminAccess: false,
///     enableInternetAccess: false,
///     mfaEnabled: false,
///     subDomainDnsAddresses: ["127.0.0.3"],
///     subDomainName: "child.example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.cen.Instance("default",
///     cen_instance_name=name,
///     protection_level="REDUCED")
/// default_ad_connector_office_site = alicloud.eds.AdConnectorOfficeSite("default",
///     ad_connector_office_site_name=name,
///     bandwidth=100,
///     cen_id=default.id,
///     cidr_block="10.0.0.0/12",
///     desktop_access_type="INTERNET",
///     dns_addresses=["127.0.0.2"],
///     domain_name="corp.example.com",
///     domain_password="Example1234",
///     domain_user_name="sAMAccountName",
///     enable_admin_access=False,
///     enable_internet_access=False,
///     mfa_enabled=False,
///     sub_domain_dns_addresses=["127.0.0.3"],
///     sub_domain_name="child.example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Cen.Instance("default", new()
///     {
///         CenInstanceName = name,
///         ProtectionLevel = "REDUCED",
///     });
///
///     var defaultAdConnectorOfficeSite = new AliCloud.Eds.AdConnectorOfficeSite("default", new()
///     {
///         AdConnectorOfficeSiteName = name,
///         Bandwidth = 100,
///         CenId = @default.Id,
///         CidrBlock = "10.0.0.0/12",
///         DesktopAccessType = "INTERNET",
///         DnsAddresses = new[]
///         {
///             "127.0.0.2",
///         },
///         DomainName = "corp.example.com",
///         DomainPassword = "Example1234",
///         DomainUserName = "sAMAccountName",
///         EnableAdminAccess = false,
///         EnableInternetAccess = false,
///         MfaEnabled = false,
///         SubDomainDnsAddresses = new[]
///         {
///             "127.0.0.3",
///         },
///         SubDomainName = "child.example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := cen.NewInstance(ctx, "default", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 			ProtectionLevel: pulumi.String("REDUCED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eds.NewAdConnectorOfficeSite(ctx, "default", &eds.AdConnectorOfficeSiteArgs{
/// 			AdConnectorOfficeSiteName: pulumi.String(name),
/// 			Bandwidth:                 pulumi.Int(100),
/// 			CenId:                     _default.ID(),
/// 			CidrBlock:                 pulumi.String("10.0.0.0/12"),
/// 			DesktopAccessType:         pulumi.String("INTERNET"),
/// 			DnsAddresses: pulumi.StringArray{
/// 				pulumi.String("127.0.0.2"),
/// 			},
/// 			DomainName:           pulumi.String("corp.example.com"),
/// 			DomainPassword:       pulumi.String("Example1234"),
/// 			DomainUserName:       pulumi.String("sAMAccountName"),
/// 			EnableAdminAccess:    pulumi.Bool(false),
/// 			EnableInternetAccess: pulumi.Bool(false),
/// 			MfaEnabled:           pulumi.Bool(false),
/// 			SubDomainDnsAddresses: pulumi.StringArray{
/// 				pulumi.String("127.0.0.3"),
/// 			},
/// 			SubDomainName: pulumi.String("child.example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.eds.AdConnectorOfficeSite;
/// import com.pulumi.alicloud.eds.AdConnectorOfficeSiteArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .protectionLevel("REDUCED")
///             .build());
///
///         var defaultAdConnectorOfficeSite = new AdConnectorOfficeSite("defaultAdConnectorOfficeSite", AdConnectorOfficeSiteArgs.builder()
///             .adConnectorOfficeSiteName(name)
///             .bandwidth(100)
///             .cenId(default_.id())
///             .cidrBlock("10.0.0.0/12")
///             .desktopAccessType("INTERNET")
///             .dnsAddresses("127.0.0.2")
///             .domainName("corp.example.com")
///             .domainPassword("Example1234")
///             .domainUserName("sAMAccountName")
///             .enableAdminAccess(false)
///             .enableInternetAccess(false)
///             .mfaEnabled(false)
///             .subDomainDnsAddresses("127.0.0.3")
///             .subDomainName("child.example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:cen:Instance
///     properties:
///       cenInstanceName: ${name}
///       protectionLevel: REDUCED
///   defaultAdConnectorOfficeSite:
///     type: alicloud:eds:AdConnectorOfficeSite
///     name: default
///     properties:
///       adConnectorOfficeSiteName: ${name}
///       bandwidth: 100
///       cenId: ${default.id}
///       cidrBlock: 10.0.0.0/12
///       desktopAccessType: INTERNET
///       dnsAddresses:
///         - 127.0.0.2
///       domainName: corp.example.com
///       domainPassword: Example1234
///       domainUserName: sAMAccountName
///       enableAdminAccess: false
///       enableInternetAccess: false
///       mfaEnabled: false
///       subDomainDnsAddresses:
///         - 127.0.0.3
///       subDomainName: child.example.com
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECD Ad Connector Office Site can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eds/adConnectorOfficeSite:AdConnectorOfficeSite example <id>
/// ```
class AdConnectorOfficeSite extends pulumi.CustomResource {
  /// The name of the workspace. The name must be 2 to 255 characters in length. It must start with a letter and cannot start with `http://` or `https://`. It can contain digits, colons (:), underscores (_), and hyphens (-).
  late final pulumi.Output<String> adConnectorOfficeSiteName;
  /// The ad hostname.
  late final pulumi.Output<String?> adHostname;
  /// The maximum public bandwidth value. Valid values: 0 to 200. If you do not specify this parameter or you set this parameter to 0, Internet access is disabled.
  late final pulumi.Output<int?> bandwidth;
  /// The ID of the CEN instance.
  late final pulumi.Output<String> cenId;
  /// The cen owner id.
  late final pulumi.Output<String?> cenOwnerId;
  /// Workspace Corresponds to the Security Office Network of IPv4 Segment.
  late final pulumi.Output<String> cidrBlock;
  /// The method that you use to connect to cloud desktops. **Note:** The VPC connection method is provided by Alibaba Cloud PrivateLink. You are not charged for PrivateLink. When you set this parameter to VPC or Any, PrivateLink is automatically activated. Default value: `INTERNET`. Valid values:
  /// - `INTERNET`: connects clients to cloud desktops only over the Internet.
  /// - `VPC`: connects clients to cloud desktops only over a VPC.
  /// - `ANY`: connects clients to cloud desktops over the Internet or a VPC. You can select a connection method when you use a client to connect to the cloud desktop.
  late final pulumi.Output<String> desktopAccessType;
  /// The IP address N of the DNS server of the enterprise AD system. You can specify only one IP address.
  late final pulumi.Output<List<String>> dnsAddresses;
  /// The domain name of the enterprise AD system. You can register each domain name only once.
  late final pulumi.Output<String> domainName;
  /// The password of the domain administrator. The password can be up to 64 characters in length.
  late final pulumi.Output<String?> domainPassword;
  /// The username of the domain administrator. The username can be up to 64 characters in length.
  late final pulumi.Output<String?> domainUserName;
  /// Specifies whether to grant the permissions of the local administrator to the desktop users. Default value: true.
  late final pulumi.Output<bool> enableAdminAccess;
  /// Specifies whether to enable Internet access.
  late final pulumi.Output<bool> enableInternetAccess;
  /// Specifies whether to enable multi-factor authentication (MFA).
  late final pulumi.Output<bool?> mfaEnabled;
  /// The protocol type. Valid values: `ASP`, `HDX`.
  late final pulumi.Output<String?> protocolType;
  /// The AD Connector specifications. Valid values: `1`, `2`.
  late final pulumi.Output<int?> specification;
  /// The resource State.
  late final pulumi.Output<String> status;
  /// The DNS address N of the enterprise AD subdomain. If you specify a value for the `sub_domain_name` parameter but you do not specify a value for this parameter, the DNS address of the subdomain is the same as the DNS address of the parent domain.
  late final pulumi.Output<List<String>?> subDomainDnsAddresses;
  /// The domain name of the enterprise AD subdomain.
  late final pulumi.Output<String?> subDomainName;
  /// The verification code. If the CEN instance that you specify for the CenId parameter belongs to another Alibaba Cloud account, you must call the SendVerifyCode operation to obtain the verification code.
  late final pulumi.Output<String?> verifyCode;

  /// Creates a new [AdConnectorOfficeSite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AdConnectorOfficeSite]. {@macro pulumi_eds_ad_connector_office_site_ad_connector_office_site_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AdConnectorOfficeSite(
    String name, {
    AdConnectorOfficeSiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eds/adConnectorOfficeSite:AdConnectorOfficeSite',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adConnectorOfficeSiteName = registerOutput<String>('adConnectorOfficeSiteName');
    this.adHostname = registerOutput<String?>('adHostname');
    this.bandwidth = registerOutput<int?>('bandwidth');
    this.cenId = registerOutput<String>('cenId');
    this.cenOwnerId = registerOutput<String?>('cenOwnerId');
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.desktopAccessType = registerOutput<String>('desktopAccessType');
    this.dnsAddresses = registerOutput<List<String>>('dnsAddresses');
    this.domainName = registerOutput<String>('domainName');
    this.domainPassword = registerOutput<String?>('domainPassword');
    this.domainUserName = registerOutput<String?>('domainUserName');
    this.enableAdminAccess = registerOutput<bool>('enableAdminAccess');
    this.enableInternetAccess = registerOutput<bool>('enableInternetAccess');
    this.mfaEnabled = registerOutput<bool?>('mfaEnabled');
    this.protocolType = registerOutput<String?>('protocolType');
    this.specification = registerOutput<int?>('specification');
    this.status = registerOutput<String>('status');
    this.subDomainDnsAddresses = registerOutput<List<String>?>('subDomainDnsAddresses');
    this.subDomainName = registerOutput<String?>('subDomainName');
    this.verifyCode = registerOutput<String?>('verifyCode');
  }
}
