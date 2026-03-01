import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_args.dart';

/// Provides a DNS Record resource.
///
/// > **DEPRECATED:**  This resource  has been deprecated from version `1.85.0`. Please use new resource alicloud_alidns_record.
///
/// > **NOTE:** When the site is an international site, the `type` neither supports `REDIRECT_URL` nor `REDIRECT_URL`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Create a new Domain record
/// const record = new alicloud.dns.Record("record", {
///     name: "domainname",
///     hostRecord: "@",
///     type: "A",
///     value: "192.168.99.99",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Create a new Domain record
/// record = alicloud.dns.Record("record",
///     name="domainname",
///     host_record="@",
///     type="A",
///     value="192.168.99.99")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a new Domain record
///     var record = new AliCloud.Dns.Record("record", new()
///     {
///         Name = "domainname",
///         HostRecord = "@",
///         Type = "A",
///         Value = "192.168.99.99",
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
/// 		// Create a new Domain record
/// 		_, err := dns.NewRecord(ctx, "record", &dns.RecordArgs{
/// 			Name:       pulumi.String("domainname"),
/// 			HostRecord: pulumi.String("@"),
/// 			Type:       pulumi.String("A"),
/// 			Value:      pulumi.String("192.168.99.99"),
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
/// import com.pulumi.alicloud.dns.Record;
/// import com.pulumi.alicloud.dns.RecordArgs;
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
///         // Create a new Domain record
///         var record = new Record("record", RecordArgs.builder()
///             .name("domainname")
///             .hostRecord("@")
///             .type("A")
///             .value("192.168.99.99")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new Domain record
///   record:
///     type: alicloud:dns:Record
///     properties:
///       name: domainname
///       hostRecord: '@'
///       type: A
///       value: 192.168.99.99
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RDS record can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dns/record:Record example <id>
/// ```
class Record extends pulumi.CustomResource {
  /// Host record for the domain record. This host_record can have at most 253 characters, and each part split with "." can have at most 63 characters, and must contain only alphanumeric characters or hyphens, such as "-",".","*","@",  and must not begin or end with "-".
  late final pulumi.Output<String> hostRecord;
  late final pulumi.Output<bool> locked;
  /// Name of the domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  late final pulumi.Output<String> name;
  /// The priority of domain record. Valid values are `[1-10]`. When the `type` is `MX`, this parameter is required.
  late final pulumi.Output<int?> priority;
  /// The resolution line of domain record. Valid values are `default`, `telecom`, `unicom`, `mobile`, `oversea`, `edu`, `drpeng`, `btvn`, .etc. When the `type` is `FORWORD_URL`, this parameter must be `default`. Default value is `default`. For checking all resolution lines enumeration please visit [Alibaba Cloud DNS doc](https://www.alibabacloud.com/help/en/alibaba-cloud-dns/latest/what-is-alibaba-cloud-dns) or using alicloud.dns.getResolutionLines in data source to get the value.
  late final pulumi.Output<String?> routing;
  /// The record status. `Enable` or `Disable`.
  /// * `Locked` - The record locked state. `true` or `false`.
  late final pulumi.Output<String> status;
  /// The effective time of domain record. Its scope depends on the edition of the cloud resolution. Free is `[600, 86400]`, Basic is `[120, 86400]`, Standard is `[60, 86400]`, Ultimate is `[10, 86400]`, Exclusive is `[1, 86400]`. Default value is `600`.
  late final pulumi.Output<int?> ttl;
  /// The type of domain record. Valid values are `A`,`NS`,`MX`,`TXT`,`CNAME`,`SRV`,`AAAA`,`CAA`, `REDIRECT_URL` and `FORWORD_URL`.
  late final pulumi.Output<String> type;
  /// The value of domain record, When the `type` is `MX`,`NS`,`CNAME`,`SRV`, the server will treat the `value` as a fully qualified domain name, so it's no need to add a `.` at the end.
  late final pulumi.Output<String> value;

  /// Creates a new [Record].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Record]. {@macro pulumi_dns_record_record_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Record(
    String name, {
    RecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dns/record:Record',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.hostRecord = registerOutput<String>('hostRecord');
    this.locked = registerOutput<bool>('locked');
    this.name = registerOutput<String>('name');
    this.priority = registerOutput<int?>('priority');
    this.routing = registerOutput<String?>('routing');
    this.status = registerOutput<String>('status');
    this.ttl = registerOutput<int?>('ttl');
    this.type = registerOutput<String>('type');
    this.value = registerOutput<String>('value');
  }
}
