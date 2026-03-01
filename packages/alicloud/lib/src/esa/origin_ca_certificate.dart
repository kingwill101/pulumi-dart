import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_ca_certificate_args.dart';

/// Provides a ESA Origin Ca Certificate resource.
///
///
///
/// For information about ESA Origin Ca Certificate and how to use it, see [What is Origin Ca Certificate](https://next.api.alibabacloud.com/document/ESA/2024-09-10/UploadOriginCaCertificate).
///
/// > **NOTE:** Available since v1.256.0.
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
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.esa.getSites({
///     planSubscribeType: "enterpriseplan",
/// });
/// const example = new alicloud.esa.Site("example", {
///     siteName: "bcd.com",
///     instanceId: _default.then(_default => _default.sites?.[0]?.instanceId),
///     coverage: "overseas",
///     accessType: "NS",
/// });
/// const defaultOriginCaCertificate = new alicloud.esa.OriginCaCertificate("default", {
///     siteId: example.id,
///     certificate: `-----BEGIN CERTIFICATE-----
/// MIIDRTCCAi2gAwIBAgIUHRPTIPKP2zN9on/NCzBe0BV68UUwDQYJKoZIhvcNAQEF
/// BQAwMzEPMA0GA1UEAwwGU1NMZXllMRMwEQYDVQQKDApTU0xleWUgSW5jMQswCQYD
/// VQQGEwJDTjAeFw0yNTA3MzAwODQzMDBaFw0yNTEyMzEwODQwMDBaMGQxCzAJBgNV
/// BAYTAkNOMQ8wDQYDVQQIDAbljJfkuqwxEDAOBgNVBAcMB0JlaWppbmcxGzAZBgNV
/// BAoMEuenkeaKgOaciemZkOWFrOWPuDEVMBMGA1UEAwwMZ29zaXRlY2RuLmNuMIIB
/// IjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtu2oW3t2bj9LsFnXj1C2EmaR
/// JYJwNgHsTBKl3DxeL2+Ext0qN2Z+UgTqYM1c1HOdwN9x13pnAVe4PmiLAkxpp/4u
/// 5gKsH1+6p3aXFUk0NvEoLXfESoQpyvoB0o/8oryxNs3+iUfvAk+a7IKAr99a1P9F
/// TkpyE6t+dgSLYhHc49ZRdYImmZcYQLmpygYOwWBdv6hlQUFi/tvX16fRZ0GgyUOK
/// 7xsTWG6qUhPJyLRtj9zn+0khgh5DJhfJQ4KTWZMX63UPiIx7sPu9sR+TPWqJsEuq
/// VipxouMys+NNMjDtn55+PE6/sDbkvULHeFUglGMZ9qHcl3ej31zmkhu6bmvNcQID
/// AQABoyAwHjALBgNVHREEBDACggAwDwYDVR0TAQH/BAUwAwEB/zANBgkqhkiG9w0B
/// AQUFAAOCAQEAF6J9TdaDYQ96EaWvb2ttQ6jNrDe4k3t1cdfhPEWMJzxZFxoDBYZ2
/// Al9vB2JICEsGDkCwpqYz2UXJsGnq2rHjUxouYo1568K/loownWjwdCgdLGbQpnXY
/// QeqPSTRLT71ikH+RqCpoYxcN63i3j9oYWm9KoD5F4arcqlLrEUZ1TqW5csGSY1h6
/// 2HmGPsINl9KCxwUS+76dxsdHIqLFx0qdnD6S5vmd0sin33jdYhj9ltp0KvhEgMvS
/// XMuzECVRvI4MZxebf7gkV3EByqV6XvazBSxuMhplygpAaLra11yV1M/m9wzVwlnS
/// S2GNvRkNym9WnH0IQ0kn9hS8hj52Nh12JQ==
/// -----END CERTIFICATE-----`,
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan")
/// example = alicloud.esa.Site("example",
///     site_name="bcd.com",
///     instance_id=default.sites[0].instance_id,
///     coverage="overseas",
///     access_type="NS")
/// default_origin_ca_certificate = alicloud.esa.OriginCaCertificate("default",
///     site_id=example.id,
///     certificate="""-----BEGIN CERTIFICATE-----
/// MIIDRTCCAi2gAwIBAgIUHRPTIPKP2zN9on/NCzBe0BV68UUwDQYJKoZIhvcNAQEF
/// BQAwMzEPMA0GA1UEAwwGU1NMZXllMRMwEQYDVQQKDApTU0xleWUgSW5jMQswCQYD
/// VQQGEwJDTjAeFw0yNTA3MzAwODQzMDBaFw0yNTEyMzEwODQwMDBaMGQxCzAJBgNV
/// BAYTAkNOMQ8wDQYDVQQIDAbljJfkuqwxEDAOBgNVBAcMB0JlaWppbmcxGzAZBgNV
/// BAoMEuenkeaKgOaciemZkOWFrOWPuDEVMBMGA1UEAwwMZ29zaXRlY2RuLmNuMIIB
/// IjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtu2oW3t2bj9LsFnXj1C2EmaR
/// JYJwNgHsTBKl3DxeL2+Ext0qN2Z+UgTqYM1c1HOdwN9x13pnAVe4PmiLAkxpp/4u
/// 5gKsH1+6p3aXFUk0NvEoLXfESoQpyvoB0o/8oryxNs3+iUfvAk+a7IKAr99a1P9F
/// TkpyE6t+dgSLYhHc49ZRdYImmZcYQLmpygYOwWBdv6hlQUFi/tvX16fRZ0GgyUOK
/// 7xsTWG6qUhPJyLRtj9zn+0khgh5DJhfJQ4KTWZMX63UPiIx7sPu9sR+TPWqJsEuq
/// VipxouMys+NNMjDtn55+PE6/sDbkvULHeFUglGMZ9qHcl3ej31zmkhu6bmvNcQID
/// AQABoyAwHjALBgNVHREEBDACggAwDwYDVR0TAQH/BAUwAwEB/zANBgkqhkiG9w0B
/// AQUFAAOCAQEAF6J9TdaDYQ96EaWvb2ttQ6jNrDe4k3t1cdfhPEWMJzxZFxoDBYZ2
/// Al9vB2JICEsGDkCwpqYz2UXJsGnq2rHjUxouYo1568K/loownWjwdCgdLGbQpnXY
/// QeqPSTRLT71ikH+RqCpoYxcN63i3j9oYWm9KoD5F4arcqlLrEUZ1TqW5csGSY1h6
/// 2HmGPsINl9KCxwUS+76dxsdHIqLFx0qdnD6S5vmd0sin33jdYhj9ltp0KvhEgMvS
/// XMuzECVRvI4MZxebf7gkV3EByqV6XvazBSxuMhplygpAaLra11yV1M/m9wzVwlnS
/// S2GNvRkNym9WnH0IQ0kn9hS8hj52Nh12JQ==
/// -----END CERTIFICATE-----""",
///     name="example")
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
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.Esa.GetSites.Invoke(new()
///     {
///         PlanSubscribeType = "enterpriseplan",
///     });
///
///     var example = new AliCloud.Esa.Site("example", new()
///     {
///         SiteName = "bcd.com",
///         InstanceId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.InstanceId)),
///         Coverage = "overseas",
///         AccessType = "NS",
///     });
///
///     var defaultOriginCaCertificate = new AliCloud.Esa.OriginCaCertificate("default", new()
///     {
///         SiteId = example.Id,
///         Certificate = @"-----BEGIN CERTIFICATE-----
/// MIIDRTCCAi2gAwIBAgIUHRPTIPKP2zN9on/NCzBe0BV68UUwDQYJKoZIhvcNAQEF
/// BQAwMzEPMA0GA1UEAwwGU1NMZXllMRMwEQYDVQQKDApTU0xleWUgSW5jMQswCQYD
/// VQQGEwJDTjAeFw0yNTA3MzAwODQzMDBaFw0yNTEyMzEwODQwMDBaMGQxCzAJBgNV
/// BAYTAkNOMQ8wDQYDVQQIDAbljJfkuqwxEDAOBgNVBAcMB0JlaWppbmcxGzAZBgNV
/// BAoMEuenkeaKgOaciemZkOWFrOWPuDEVMBMGA1UEAwwMZ29zaXRlY2RuLmNuMIIB
/// IjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtu2oW3t2bj9LsFnXj1C2EmaR
/// JYJwNgHsTBKl3DxeL2+Ext0qN2Z+UgTqYM1c1HOdwN9x13pnAVe4PmiLAkxpp/4u
/// 5gKsH1+6p3aXFUk0NvEoLXfESoQpyvoB0o/8oryxNs3+iUfvAk+a7IKAr99a1P9F
/// TkpyE6t+dgSLYhHc49ZRdYImmZcYQLmpygYOwWBdv6hlQUFi/tvX16fRZ0GgyUOK
/// 7xsTWG6qUhPJyLRtj9zn+0khgh5DJhfJQ4KTWZMX63UPiIx7sPu9sR+TPWqJsEuq
/// VipxouMys+NNMjDtn55+PE6/sDbkvULHeFUglGMZ9qHcl3ej31zmkhu6bmvNcQID
/// AQABoyAwHjALBgNVHREEBDACggAwDwYDVR0TAQH/BAUwAwEB/zANBgkqhkiG9w0B
/// AQUFAAOCAQEAF6J9TdaDYQ96EaWvb2ttQ6jNrDe4k3t1cdfhPEWMJzxZFxoDBYZ2
/// Al9vB2JICEsGDkCwpqYz2UXJsGnq2rHjUxouYo1568K/loownWjwdCgdLGbQpnXY
/// QeqPSTRLT71ikH+RqCpoYxcN63i3j9oYWm9KoD5F4arcqlLrEUZ1TqW5csGSY1h6
/// 2HmGPsINl9KCxwUS+76dxsdHIqLFx0qdnD6S5vmd0sin33jdYhj9ltp0KvhEgMvS
/// XMuzECVRvI4MZxebf7gkV3EByqV6XvazBSxuMhplygpAaLra11yV1M/m9wzVwlnS
/// S2GNvRkNym9WnH0IQ0kn9hS8hj52Nh12JQ==
/// -----END CERTIFICATE-----",
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/esa"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := esa.GetSites(ctx, &esa.GetSitesArgs{
/// 			PlanSubscribeType: pulumi.StringRef("enterpriseplan"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := esa.NewSite(ctx, "example", &esa.SiteArgs{
/// 			SiteName:   pulumi.String("bcd.com"),
/// 			InstanceId: pulumi.String(_default.Sites[0].InstanceId),
/// 			Coverage:   pulumi.String("overseas"),
/// 			AccessType: pulumi.String("NS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewOriginCaCertificate(ctx, "default", &esa.OriginCaCertificateArgs{
/// 			SiteId: example.ID(),
/// 			Certificate: pulumi.String(`-----BEGIN CERTIFICATE-----
/// MIIDRTCCAi2gAwIBAgIUHRPTIPKP2zN9on/NCzBe0BV68UUwDQYJKoZIhvcNAQEF
/// BQAwMzEPMA0GA1UEAwwGU1NMZXllMRMwEQYDVQQKDApTU0xleWUgSW5jMQswCQYD
/// VQQGEwJDTjAeFw0yNTA3MzAwODQzMDBaFw0yNTEyMzEwODQwMDBaMGQxCzAJBgNV
/// BAYTAkNOMQ8wDQYDVQQIDAbljJfkuqwxEDAOBgNVBAcMB0JlaWppbmcxGzAZBgNV
/// BAoMEuenkeaKgOaciemZkOWFrOWPuDEVMBMGA1UEAwwMZ29zaXRlY2RuLmNuMIIB
/// IjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtu2oW3t2bj9LsFnXj1C2EmaR
/// JYJwNgHsTBKl3DxeL2+Ext0qN2Z+UgTqYM1c1HOdwN9x13pnAVe4PmiLAkxpp/4u
/// 5gKsH1+6p3aXFUk0NvEoLXfESoQpyvoB0o/8oryxNs3+iUfvAk+a7IKAr99a1P9F
/// TkpyE6t+dgSLYhHc49ZRdYImmZcYQLmpygYOwWBdv6hlQUFi/tvX16fRZ0GgyUOK
/// 7xsTWG6qUhPJyLRtj9zn+0khgh5DJhfJQ4KTWZMX63UPiIx7sPu9sR+TPWqJsEuq
/// VipxouMys+NNMjDtn55+PE6/sDbkvULHeFUglGMZ9qHcl3ej31zmkhu6bmvNcQID
/// AQABoyAwHjALBgNVHREEBDACggAwDwYDVR0TAQH/BAUwAwEB/zANBgkqhkiG9w0B
/// AQUFAAOCAQEAF6J9TdaDYQ96EaWvb2ttQ6jNrDe4k3t1cdfhPEWMJzxZFxoDBYZ2
/// Al9vB2JICEsGDkCwpqYz2UXJsGnq2rHjUxouYo1568K/loownWjwdCgdLGbQpnXY
/// QeqPSTRLT71ikH+RqCpoYxcN63i3j9oYWm9KoD5F4arcqlLrEUZ1TqW5csGSY1h6
/// 2HmGPsINl9KCxwUS+76dxsdHIqLFx0qdnD6S5vmd0sin33jdYhj9ltp0KvhEgMvS
/// XMuzECVRvI4MZxebf7gkV3EByqV6XvazBSxuMhplygpAaLra11yV1M/m9wzVwlnS
/// S2GNvRkNym9WnH0IQ0kn9hS8hj52Nh12JQ==
/// -----END CERTIFICATE-----`),
/// 			Name: pulumi.String("example"),
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
/// import com.pulumi.alicloud.esa.EsaFunctions;
/// import com.pulumi.alicloud.esa.inputs.GetSitesArgs;
/// import com.pulumi.alicloud.esa.Site;
/// import com.pulumi.alicloud.esa.SiteArgs;
/// import com.pulumi.alicloud.esa.OriginCaCertificate;
/// import com.pulumi.alicloud.esa.OriginCaCertificateArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         final var default = EsaFunctions.getSites(GetSitesArgs.builder()
///             .planSubscribeType("enterpriseplan")
///             .build());
///
///         var example = new Site("example", SiteArgs.builder()
///             .siteName("bcd.com")
///             .instanceId(default_.sites()[0].instanceId())
///             .coverage("overseas")
///             .accessType("NS")
///             .build());
///
///         var defaultOriginCaCertificate = new OriginCaCertificate("defaultOriginCaCertificate", OriginCaCertificateArgs.builder()
///             .siteId(example.id())
///             .certificate("""
/// -----BEGIN CERTIFICATE-----
/// MIIDRTCCAi2gAwIBAgIUHRPTIPKP2zN9on/NCzBe0BV68UUwDQYJKoZIhvcNAQEF
/// BQAwMzEPMA0GA1UEAwwGU1NMZXllMRMwEQYDVQQKDApTU0xleWUgSW5jMQswCQYD
/// VQQGEwJDTjAeFw0yNTA3MzAwODQzMDBaFw0yNTEyMzEwODQwMDBaMGQxCzAJBgNV
/// BAYTAkNOMQ8wDQYDVQQIDAbljJfkuqwxEDAOBgNVBAcMB0JlaWppbmcxGzAZBgNV
/// BAoMEuenkeaKgOaciemZkOWFrOWPuDEVMBMGA1UEAwwMZ29zaXRlY2RuLmNuMIIB
/// IjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtu2oW3t2bj9LsFnXj1C2EmaR
/// JYJwNgHsTBKl3DxeL2+Ext0qN2Z+UgTqYM1c1HOdwN9x13pnAVe4PmiLAkxpp/4u
/// 5gKsH1+6p3aXFUk0NvEoLXfESoQpyvoB0o/8oryxNs3+iUfvAk+a7IKAr99a1P9F
/// TkpyE6t+dgSLYhHc49ZRdYImmZcYQLmpygYOwWBdv6hlQUFi/tvX16fRZ0GgyUOK
/// 7xsTWG6qUhPJyLRtj9zn+0khgh5DJhfJQ4KTWZMX63UPiIx7sPu9sR+TPWqJsEuq
/// VipxouMys+NNMjDtn55+PE6/sDbkvULHeFUglGMZ9qHcl3ej31zmkhu6bmvNcQID
/// AQABoyAwHjALBgNVHREEBDACggAwDwYDVR0TAQH/BAUwAwEB/zANBgkqhkiG9w0B
/// AQUFAAOCAQEAF6J9TdaDYQ96EaWvb2ttQ6jNrDe4k3t1cdfhPEWMJzxZFxoDBYZ2
/// Al9vB2JICEsGDkCwpqYz2UXJsGnq2rHjUxouYo1568K/loownWjwdCgdLGbQpnXY
/// QeqPSTRLT71ikH+RqCpoYxcN63i3j9oYWm9KoD5F4arcqlLrEUZ1TqW5csGSY1h6
/// 2HmGPsINl9KCxwUS+76dxsdHIqLFx0qdnD6S5vmd0sin33jdYhj9ltp0KvhEgMvS
/// XMuzECVRvI4MZxebf7gkV3EByqV6XvazBSxuMhplygpAaLra11yV1M/m9wzVwlnS
/// S2GNvRkNym9WnH0IQ0kn9hS8hj52Nh12JQ==
/// -----END CERTIFICATE-----            """)
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   example:
///     type: alicloud:esa:Site
///     properties:
///       siteName: bcd.com
///       instanceId: ${default.sites[0].instanceId}
///       coverage: overseas
///       accessType: NS
///   defaultOriginCaCertificate:
///     type: alicloud:esa:OriginCaCertificate
///     name: default
///     properties:
///       siteId: ${example.id}
///       certificate: |-
///         -----BEGIN CERTIFICATE-----
///         MIIDRTCCAi2gAwIBAgIUHRPTIPKP2zN9on/NCzBe0BV68UUwDQYJKoZIhvcNAQEF
///         BQAwMzEPMA0GA1UEAwwGU1NMZXllMRMwEQYDVQQKDApTU0xleWUgSW5jMQswCQYD
///         VQQGEwJDTjAeFw0yNTA3MzAwODQzMDBaFw0yNTEyMzEwODQwMDBaMGQxCzAJBgNV
///         BAYTAkNOMQ8wDQYDVQQIDAbljJfkuqwxEDAOBgNVBAcMB0JlaWppbmcxGzAZBgNV
///         BAoMEuenkeaKgOaciemZkOWFrOWPuDEVMBMGA1UEAwwMZ29zaXRlY2RuLmNuMIIB
///         IjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtu2oW3t2bj9LsFnXj1C2EmaR
///         JYJwNgHsTBKl3DxeL2+Ext0qN2Z+UgTqYM1c1HOdwN9x13pnAVe4PmiLAkxpp/4u
///         5gKsH1+6p3aXFUk0NvEoLXfESoQpyvoB0o/8oryxNs3+iUfvAk+a7IKAr99a1P9F
///         TkpyE6t+dgSLYhHc49ZRdYImmZcYQLmpygYOwWBdv6hlQUFi/tvX16fRZ0GgyUOK
///         7xsTWG6qUhPJyLRtj9zn+0khgh5DJhfJQ4KTWZMX63UPiIx7sPu9sR+TPWqJsEuq
///         VipxouMys+NNMjDtn55+PE6/sDbkvULHeFUglGMZ9qHcl3ej31zmkhu6bmvNcQID
///         AQABoyAwHjALBgNVHREEBDACggAwDwYDVR0TAQH/BAUwAwEB/zANBgkqhkiG9w0B
///         AQUFAAOCAQEAF6J9TdaDYQ96EaWvb2ttQ6jNrDe4k3t1cdfhPEWMJzxZFxoDBYZ2
///         Al9vB2JICEsGDkCwpqYz2UXJsGnq2rHjUxouYo1568K/loownWjwdCgdLGbQpnXY
///         QeqPSTRLT71ikH+RqCpoYxcN63i3j9oYWm9KoD5F4arcqlLrEUZ1TqW5csGSY1h6
///         2HmGPsINl9KCxwUS+76dxsdHIqLFx0qdnD6S5vmd0sin33jdYhj9ltp0KvhEgMvS
///         XMuzECVRvI4MZxebf7gkV3EByqV6XvazBSxuMhplygpAaLra11yV1M/m9wzVwlnS
///         S2GNvRkNym9WnH0IQ0kn9hS8hj52Nh12JQ==
///         -----END CERTIFICATE-----
///       name: example
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:esa:getSites
///       arguments:
///         planSubscribeType: enterpriseplan
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Origin Ca Certificate can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/originCaCertificate:OriginCaCertificate example <site_id>:<origin_ca_certificate_id>
/// ```
class OriginCaCertificate extends pulumi.CustomResource {
  /// Certificate content.
  late final pulumi.Output<String> certificate;
  /// Creation time.
  late final pulumi.Output<String> createTime;
  /// The certificate name.
  late final pulumi.Output<String> name;
  /// OriginCaCertificate Id
  late final pulumi.Output<String> originCaCertificateId;
  /// Site Id
  late final pulumi.Output<String> siteId;
  /// Certificate status.
  late final pulumi.Output<String> status;

  /// Creates a new [OriginCaCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OriginCaCertificate]. {@macro pulumi_esa_origin_ca_certificate_origin_ca_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OriginCaCertificate(
    String name, {
    OriginCaCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/originCaCertificate:OriginCaCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificate = registerOutput<String>('certificate');
    this.createTime = registerOutput<String>('createTime');
    this.name = registerOutput<String>('name');
    this.originCaCertificateId = registerOutput<String>('originCaCertificateId');
    this.siteId = registerOutput<String>('siteId');
    this.status = registerOutput<String>('status');
  }
}
