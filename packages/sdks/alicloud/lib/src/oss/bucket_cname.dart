import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_cname_args.dart';
import 'bucket_cname_certificate.dart';
import 'bucket_cname_state.dart';

/// Provides a OSS Bucket Cname resource.
///
/// Customizing Bucket domains.
///
/// For information about OSS Bucket Cname and how to use it, see [What is Bucket Cname](https://www.alibabacloud.com/help/en/oss/developer-reference/putcname).
///
/// &gt; **NOTE:** Available since v1.233.0.
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
/// const createBucket = new alicloud.oss.Bucket("CreateBucket", {
///     bucket: name,
///     storageClass: "Standard",
/// });
/// const defaultZaWJfG = new alicloud.oss.BucketCnameToken("defaultZaWJfG", {
///     bucket: createBucket.bucket,
///     domain: "tftestacc.com",
/// });
/// const defaultnHqm5p = new alicloud.dns.AlidnsRecord("defaultnHqm5p", {
///     status: "ENABLE",
///     line: "default",
///     rr: "_dnsauth",
///     type: "TXT",
///     domainName: "tftestacc.com",
///     priority: 1,
///     value: defaultZaWJfG.token,
///     ttl: 600,
/// });
/// const _default = new alicloud.oss.BucketCname("default", {
///     bucket: createBucket.bucket,
///     domain: defaultnHqm5p.domainName,
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
/// create_bucket = alicloud.oss.Bucket("CreateBucket",
///     bucket=name,
///     storage_class="Standard")
/// default_za_w_jf_g = alicloud.oss.BucketCnameToken("defaultZaWJfG",
///     bucket=create_bucket.bucket,
///     domain="tftestacc.com")
/// defaultn_hqm5p = alicloud.dns.AlidnsRecord("defaultnHqm5p",
///     status="ENABLE",
///     line="default",
///     rr="_dnsauth",
///     type="TXT",
///     domain_name="tftestacc.com",
///     priority=1,
///     value=default_za_w_jf_g.token,
///     ttl=600)
/// default = alicloud.oss.BucketCname("default",
///     bucket=create_bucket.bucket,
///     domain=defaultn_hqm5p.domain_name)
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
///     var createBucket = new AliCloud.Oss.Bucket("CreateBucket", new()
///     {
///         BucketName = name,
///         StorageClass = "Standard",
///     });
///
///     var defaultZaWJfG = new AliCloud.Oss.BucketCnameToken("defaultZaWJfG", new()
///     {
///         Bucket = createBucket.BucketName,
///         Domain = "tftestacc.com",
///     });
///
///     var defaultnHqm5p = new AliCloud.Dns.AlidnsRecord("defaultnHqm5p", new()
///     {
///         Status = "ENABLE",
///         Line = "default",
///         Rr = "_dnsauth",
///         Type = "TXT",
///         DomainName = "tftestacc.com",
///         Priority = 1,
///         Value = defaultZaWJfG.Token,
///         Ttl = 600,
///     });
///
///     var @default = new AliCloud.Oss.BucketCname("default", new()
///     {
///         Bucket = createBucket.BucketName,
///         Domain = defaultnHqm5p.DomainName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
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
/// 		createBucket, err := oss.NewBucket(ctx, "CreateBucket", &oss.BucketArgs{
/// 			Bucket:       pulumi.String(name),
/// 			StorageClass: pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultZaWJfG, err := oss.NewBucketCnameToken(ctx, "defaultZaWJfG", &oss.BucketCnameTokenArgs{
/// 			Bucket: createBucket.Bucket,
/// 			Domain: pulumi.String("tftestacc.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultnHqm5p, err := dns.NewAlidnsRecord(ctx, "defaultnHqm5p", &dns.AlidnsRecordArgs{
/// 			Status:     pulumi.String("ENABLE"),
/// 			Line:       pulumi.String("default"),
/// 			Rr:         pulumi.String("_dnsauth"),
/// 			Type:       pulumi.String("TXT"),
/// 			DomainName: pulumi.String("tftestacc.com"),
/// 			Priority:   pulumi.Int(1),
/// 			Value:      defaultZaWJfG.Token,
/// 			Ttl:        pulumi.Int(600),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketCname(ctx, "default", &oss.BucketCnameArgs{
/// 			Bucket: createBucket.Bucket,
/// 			Domain: defaultnHqm5p.DomainName,
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
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.oss.BucketCnameToken;
/// import com.pulumi.alicloud.oss.BucketCnameTokenArgs;
/// import com.pulumi.alicloud.dns.AlidnsRecord;
/// import com.pulumi.alicloud.dns.AlidnsRecordArgs;
/// import com.pulumi.alicloud.oss.BucketCname;
/// import com.pulumi.alicloud.oss.BucketCnameArgs;
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
///         var createBucket = new Bucket("createBucket", BucketArgs.builder()
///             .bucket(name)
///             .storageClass("Standard")
///             .build());
///
///         var defaultZaWJfG = new BucketCnameToken("defaultZaWJfG", BucketCnameTokenArgs.builder()
///             .bucket(createBucket.bucket())
///             .domain("tftestacc.com")
///             .build());
///
///         var defaultnHqm5p = new AlidnsRecord("defaultnHqm5p", AlidnsRecordArgs.builder()
///             .status("ENABLE")
///             .line("default")
///             .rr("_dnsauth")
///             .type("TXT")
///             .domainName("tftestacc.com")
///             .priority(1)
///             .value(defaultZaWJfG.token())
///             .ttl(600)
///             .build());
///
///         var default_ = new BucketCname("default", BucketCnameArgs.builder()
///             .bucket(createBucket.bucket())
///             .domain(defaultnHqm5p.domainName())
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
///   createBucket:
///     type: alicloud:oss:Bucket
///     name: CreateBucket
///     properties:
///       bucket: ${name}
///       storageClass: Standard
///   defaultZaWJfG:
///     type: alicloud:oss:BucketCnameToken
///     properties:
///       bucket: ${createBucket.bucket}
///       domain: tftestacc.com
///   defaultnHqm5p:
///     type: alicloud:dns:AlidnsRecord
///     properties:
///       status: ENABLE
///       line: default
///       rr: _dnsauth
///       type: TXT
///       domainName: tftestacc.com
///       priority: '1'
///       value: ${defaultZaWJfG.token}
///       ttl: '600'
///   default:
///     type: alicloud:oss:BucketCname
///     properties:
///       bucket: ${createBucket.bucket}
///       domain: ${defaultnHqm5p.domainName}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OSS Bucket Cname can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketCname:BucketCname example <bucket>:<domain>
/// ```
class BucketCname extends pulumi.CustomResource {
  /// The bucket to which the custom domain name belongs
  late final pulumi.Output<String> bucket;

  /// The container for the certificate configuration. See `certificate` below.
  late final pulumi.Output<BucketCnameCertificate?> certificate;

  /// Whether to delete the certificate.
  late final pulumi.Output<bool?> deleteCertificate;

  /// User-defined domain name
  late final pulumi.Output<String> domain;

  /// Whether to force overwrite certificate.
  late final pulumi.Output<bool?> force;

  /// The current certificate ID. If the Force value is not true, the OSS Server checks whether the value matches the current certificate ID. If the value does not match, an error is reported.
  late final pulumi.Output<String?> previousCertId;

  /// Cname status
  late final pulumi.Output<String> status;

  /// Creates a new [BucketCname].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketCname]. {@macro pulumi_oss_bucket_cname_bucket_cname_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketCname(
    String name, {
    BucketCnameArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:oss/bucketCname:BucketCname',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bucket = registerOutput<String>('bucket');
    certificate = registerOutput<BucketCnameCertificate?>(
      'certificate',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BucketCnameCertificate.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    deleteCertificate = registerOutput<bool?>('deleteCertificate');
    domain = registerOutput<String>('domain');
    force = registerOutput<bool?>('force');
    previousCertId = registerOutput<String?>('previousCertId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [BucketCname] resource's state with the given [name] and [id].
  static BucketCname get(
    String name,
    pulumi.Input<String> id, {
    BucketCnameState? state,
  }) {
    return BucketCname._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketCname._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:oss/bucketCname:BucketCname',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bucket = registerOutput<String>('bucket');
    certificate = registerOutput<BucketCnameCertificate?>(
      'certificate',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BucketCnameCertificate.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    deleteCertificate = registerOutput<bool?>('deleteCertificate');
    domain = registerOutput<String>('domain');
    force = registerOutput<bool?>('force');
    previousCertId = registerOutput<String?>('previousCertId');
    status = registerOutput<String>('status');
  }
}
