import 'package:pulumi/pulumi.dart' as pulumi;
import 'alidns_record_args.dart';
import 'alidns_record_state.dart';

/// Provides a Alidns Record resource. For information about Alidns Domain Record and how to use it, see [What is Resource Alidns Record](https://www.alibabacloud.com/help/en/alibaba-cloud-dns/latest/adding-a-dns-record).
///
/// &gt; **NOTE:** Available since v1.85.0.
///
/// &gt; **NOTE:** When the site is an international site, the `type` neither supports `REDIRECT_URL` nor `REDIRECT_URL`
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = new alicloud.dns.DomainGroup("default", {domainGroupName: "tf-example"});
/// const defaultAlidnsDomain = new alicloud.dns.AlidnsDomain("default", {
///     domainName: "starmove.com",
///     groupId: _default.id,
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
/// });
/// const record = new alicloud.dns.AlidnsRecord("record", {
///     domainName: defaultAlidnsDomain.domainName,
///     rr: "alimail",
///     type: "CNAME",
///     value: "mail.mxhichin.com",
///     remark: "tf-example",
///     status: "ENABLE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.dns.DomainGroup("default", domain_group_name="tf-example")
/// default_alidns_domain = alicloud.dns.AlidnsDomain("default",
///     domain_name="starmove.com",
///     group_id=default.id,
///     tags={
///         "Created": "TF",
///         "For": "example",
///     })
/// record = alicloud.dns.AlidnsRecord("record",
///     domain_name=default_alidns_domain.domain_name,
///     rr="alimail",
///     type="CNAME",
///     value="mail.mxhichin.com",
///     remark="tf-example",
///     status="ENABLE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Dns.DomainGroup("default", new()
///     {
///         DomainGroupName = "tf-example",
///     });
///
///     var defaultAlidnsDomain = new AliCloud.Dns.AlidnsDomain("default", new()
///     {
///         DomainName = "starmove.com",
///         GroupId = @default.Id,
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///     });
///
///     var record = new AliCloud.Dns.AlidnsRecord("record", new()
///     {
///         DomainName = defaultAlidnsDomain.DomainName,
///         Rr = "alimail",
///         Type = "CNAME",
///         Value = "mail.mxhichin.com",
///         Remark = "tf-example",
///         Status = "ENABLE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := dns.NewDomainGroup(ctx, "default", &dns.DomainGroupArgs{
/// 			DomainGroupName: pulumi.String("tf-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAlidnsDomain, err := dns.NewAlidnsDomain(ctx, "default", &dns.AlidnsDomainArgs{
/// 			DomainName: pulumi.String("starmove.com"),
/// 			GroupId:    _default.ID(),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewAlidnsRecord(ctx, "record", &dns.AlidnsRecordArgs{
/// 			DomainName: defaultAlidnsDomain.DomainName,
/// 			Rr:         pulumi.String("alimail"),
/// 			Type:       pulumi.String("CNAME"),
/// 			Value:      pulumi.String("mail.mxhichin.com"),
/// 			Remark:     pulumi.String("tf-example"),
/// 			Status:     pulumi.String("ENABLE"),
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
/// import com.pulumi.alicloud.dns.DomainGroup;
/// import com.pulumi.alicloud.dns.DomainGroupArgs;
/// import com.pulumi.alicloud.dns.AlidnsDomain;
/// import com.pulumi.alicloud.dns.AlidnsDomainArgs;
/// import com.pulumi.alicloud.dns.AlidnsRecord;
/// import com.pulumi.alicloud.dns.AlidnsRecordArgs;
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
///         var default_ = new DomainGroup("default", DomainGroupArgs.builder()
///             .domainGroupName("tf-example")
///             .build());
///
///         var defaultAlidnsDomain = new AlidnsDomain("defaultAlidnsDomain", AlidnsDomainArgs.builder()
///             .domainName("starmove.com")
///             .groupId(default_.id())
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .build());
///
///         var record = new AlidnsRecord("record", AlidnsRecordArgs.builder()
///             .domainName(defaultAlidnsDomain.domainName())
///             .rr("alimail")
///             .type("CNAME")
///             .value("mail.mxhichin.com")
///             .remark("tf-example")
///             .status("ENABLE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:dns:DomainGroup
///     properties:
///       domainGroupName: tf-example
///   defaultAlidnsDomain:
///     type: alicloud:dns:AlidnsDomain
///     name: default
///     properties:
///       domainName: starmove.com
///       groupId: ${default.id}
///       tags:
///         Created: TF
///         For: example
///   record:
///     type: alicloud:dns:AlidnsRecord
///     properties:
///       domainName: ${defaultAlidnsDomain.domainName}
///       rr: alimail
///       type: CNAME
///       value: mail.mxhichin.com
///       remark: tf-example
///       status: ENABLE
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Alidns Domain Record can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dns/alidnsRecord:AlidnsRecord example abc123456
/// ```
class AlidnsRecord extends pulumi.CustomResource {
  /// Name of the domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  late final pulumi.Output<String> domainName;

  /// User language.
  late final pulumi.Output<String?> lang;

  /// The resolution line of domain record. When the `type` is `FORWORD_URL`, this parameter must be `default`. Default value is `default`. For checking all resolution lines enumeration please visit [Alibaba Cloud DNS doc](https://www.alibabacloud.com/help/en/alibaba-cloud-dns/latest/adding-a-dns-record) or using alicloud.dns.getResolutionLines in data source to get the value.
  late final pulumi.Output<String?> line;

  /// The priority of domain record. Valid values: `[1-10]`. When the `type` is `MX`, this parameter is required.
  late final pulumi.Output<int?> priority;

  /// The remark of the domain record.
  late final pulumi.Output<String?> remark;

  /// Host record for the domain record. This host_record can have at most 253 characters, and each part split with `.` can have at most 63 characters, and must contain only alphanumeric characters or hyphens, such as `-`, `.`, `*`, `@`, and must not begin or end with `-`.
  late final pulumi.Output<String> rr;

  /// The status of the domain record. Valid values: `ENABLE`,`DISABLE`.
  late final pulumi.Output<String?> status;

  /// The effective time of domain record. Its scope depends on the edition of the cloud resolution. Free is `[600, 86400]`, Basic is `[120, 86400]`, Standard is `[60, 86400]`, Ultimate is `[10, 86400]`, Exclusive is `[1, 86400]`. Default value is `600`.
  late final pulumi.Output<int?> ttl;

  /// The type of domain record. For more information, see [How to use it](https://www.alibabacloud.com/help/en/dns/dns-record-types).
  late final pulumi.Output<String> type;

  /// The IP address of the client.
  late final pulumi.Output<String?> userClientIp;

  /// The value of domain record, When the `type` is `MX`,`NS`,`CNAME`,`SRV`, the server will treat the `value` as a fully qualified domain name, so it's no need to add a `.` at the end.
  late final pulumi.Output<String> value;

  /// Creates a new [AlidnsRecord].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlidnsRecord]. {@macro pulumi_dns_alidns_record_alidns_record_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlidnsRecord(
    String name, {
    AlidnsRecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:dns/alidnsRecord:AlidnsRecord',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    domainName = registerOutput<String>('domainName');
    lang = registerOutput<String?>('lang');
    line = registerOutput<String?>('line');
    priority = registerOutput<int?>('priority');
    remark = registerOutput<String?>('remark');
    rr = registerOutput<String>('rr');
    status = registerOutput<String?>('status');
    ttl = registerOutput<int?>('ttl');
    type = registerOutput<String>('type');
    userClientIp = registerOutput<String?>('userClientIp');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [AlidnsRecord] resource's state with the given [name] and [id].
  static AlidnsRecord get(
    String name,
    pulumi.Input<String> id, {
    AlidnsRecordState? state,
  }) {
    return AlidnsRecord._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AlidnsRecord._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:dns/alidnsRecord:AlidnsRecord',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    domainName = registerOutput<String>('domainName');
    lang = registerOutput<String?>('lang');
    line = registerOutput<String?>('line');
    priority = registerOutput<int?>('priority');
    remark = registerOutput<String?>('remark');
    rr = registerOutput<String>('rr');
    status = registerOutput<String?>('status');
    ttl = registerOutput<int?>('ttl');
    type = registerOutput<String>('type');
    userClientIp = registerOutput<String?>('userClientIp');
    value = registerOutput<String>('value');
  }
}
