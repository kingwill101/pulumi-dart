import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_record_args.dart';

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
/// const zone = new alicloud.pvtz.Zone("zone", {zoneName: "foo.test.com"});
/// const foo = new alicloud.pvtz.ZoneRecord("foo", {
///     zoneId: zone.id,
///     rr: "www",
///     type: "CNAME",
///     value: "bbb.test.com",
///     ttl: 60,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// zone = alicloud.pvtz.Zone("zone", zone_name="foo.test.com")
/// foo = alicloud.pvtz.ZoneRecord("foo",
///     zone_id=zone.id,
///     rr="www",
///     type="CNAME",
///     value="bbb.test.com",
///     ttl=60)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var zone = new AliCloud.Pvtz.Zone("zone", new()
///     {
///         ZoneName = "foo.test.com",
///     });
///
///     var foo = new AliCloud.Pvtz.ZoneRecord("foo", new()
///     {
///         ZoneId = zone.Id,
///         Rr = "www",
///         Type = "CNAME",
///         Value = "bbb.test.com",
///         Ttl = 60,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/pvtz"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		zone, err := pvtz.NewZone(ctx, "zone", &pvtz.ZoneArgs{
/// 			ZoneName: pulumi.String("foo.test.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pvtz.NewZoneRecord(ctx, "foo", &pvtz.ZoneRecordArgs{
/// 			ZoneId: zone.ID(),
/// 			Rr:     pulumi.String("www"),
/// 			Type:   pulumi.String("CNAME"),
/// 			Value:  pulumi.String("bbb.test.com"),
/// 			Ttl:    pulumi.Int(60),
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
/// import com.pulumi.alicloud.pvtz.Zone;
/// import com.pulumi.alicloud.pvtz.ZoneArgs;
/// import com.pulumi.alicloud.pvtz.ZoneRecord;
/// import com.pulumi.alicloud.pvtz.ZoneRecordArgs;
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
///         var zone = new Zone("zone", ZoneArgs.builder()
///             .zoneName("foo.test.com")
///             .build());
///
///         var foo = new ZoneRecord("foo", ZoneRecordArgs.builder()
///             .zoneId(zone.id())
///             .rr("www")
///             .type("CNAME")
///             .value("bbb.test.com")
///             .ttl(60)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   zone:
///     type: alicloud:pvtz:Zone
///     properties:
///       zoneName: foo.test.com
///   foo:
///     type: alicloud:pvtz:ZoneRecord
///     properties:
///       zoneId: ${zone.id}
///       rr: www
///       type: CNAME
///       value: bbb.test.com
///       ttl: 60
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Private Zone Record can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:pvtz/zoneRecord:ZoneRecord example abc123456
/// ```
class ZoneRecord extends pulumi.CustomResource {
  /// User language.
  late final pulumi.Output<String?> lang;
  /// The priority of the Private Zone Record. At present, only can "MX" record support it. Valid values: [1-99]. Default to 1.
  late final pulumi.Output<int?> priority;
  /// The Private Zone Record ID.
  late final pulumi.Output<String> recordId;
  /// The remark of the Private Zone Record.
  late final pulumi.Output<String?> remark;
  /// The resource record of the Private Zone Record.
  late final pulumi.Output<String> resourceRecord;
  /// The rr of the Private Zone Record.
  late final pulumi.Output<String> rr;
  /// Resolve record status. Value:
  /// - ENABLE: enable resolution.
  /// - DISABLE: pause parsing.
  late final pulumi.Output<String?> status;
  /// The ttl of the Private Zone Record. Default to `60`.
  late final pulumi.Output<int?> ttl;
  /// The type of the Private Zone Record. Valid values: A, CNAME, TXT, MX, PTR, SRV.
  late final pulumi.Output<String> type;
  late final pulumi.Output<String?> userClientIp;
  /// The value of the Private Zone Record.
  late final pulumi.Output<String> value;
  /// The name of the Private Zone Record.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ZoneRecord].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZoneRecord]. {@macro pulumi_pvtz_zone_record_zone_record_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZoneRecord(
    String name, {
    ZoneRecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:pvtz/zoneRecord:ZoneRecord',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.lang = registerOutput<String?>('lang');
    this.priority = registerOutput<int?>('priority');
    this.recordId = registerOutput<String>('recordId');
    this.remark = registerOutput<String?>('remark');
    this.resourceRecord = registerOutput<String>('resourceRecord');
    this.rr = registerOutput<String>('rr');
    this.status = registerOutput<String?>('status');
    this.ttl = registerOutput<int?>('ttl');
    this.type = registerOutput<String>('type');
    this.userClientIp = registerOutput<String?>('userClientIp');
    this.value = registerOutput<String>('value');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
