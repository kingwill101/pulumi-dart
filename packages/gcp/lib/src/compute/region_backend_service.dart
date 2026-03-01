import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_backend_service_args.dart';
import 'region_backend_service_backend.dart';
import 'region_backend_service_cdn_policy.dart';
import 'region_backend_service_circuit_breakers.dart';
import 'region_backend_service_connection_tracking_policy.dart';
import 'region_backend_service_consistent_hash.dart';
import 'region_backend_service_custom_metric.dart';
import 'region_backend_service_dynamic_forwarding.dart';
import 'region_backend_service_failover_policy.dart';
import 'region_backend_service_ha_policy.dart';
import 'region_backend_service_iap.dart';
import 'region_backend_service_log_config.dart';
import 'region_backend_service_network_pass_through_lb_traffic_policy.dart';
import 'region_backend_service_outlier_detection.dart';
import 'region_backend_service_params.dart';
import 'region_backend_service_strong_session_affinity_cookie.dart';
import 'region_backend_service_subsetting.dart';
import 'region_backend_service_tls_settings.dart';

/// A Region Backend Service defines a regionally-scoped group of virtual
/// machines that will serve traffic for load balancing.
///
/// > **Note:** Recreating a `gcp.compute.RegionBackendService` that references other dependent resources like `gcp.compute.InstanceGroup` will give a `resourceInUseByAnotherResource` error, when decreasing the number of other dependent resources.
/// Use `lifecycle.create_before_destroy` on the dependent resources to avoid this type of error as shown in the Dynamic Backend Count example.
///
///
/// To get more information about RegionBackendService, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/latest/regionBackendServices)
/// * How-to Guides
/// * [Internal TCP/UDP Load Balancing](https://cloud.google.com/compute/docs/load-balancing/internal/)
///
///
///
/// ## Example Usage
///
/// ### Region Backend Service Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
///     name: "rbs-health-check",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const _default = new gcp.compute.RegionBackendService("default", {
///     name: "region-service",
///     region: "us-central1",
///     healthChecks: defaultHealthCheck.id,
///     connectionDrainingTimeoutSec: 10,
///     sessionAffinity: "CLIENT_IP",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_health_check = gcp.compute.HealthCheck("default",
///     name="rbs-health-check",
///     check_interval_sec=1,
///     timeout_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// default = gcp.compute.RegionBackendService("default",
///     name="region-service",
///     region="us-central1",
///     health_checks=default_health_check.id,
///     connection_draining_timeout_sec=10,
///     session_affinity="CLIENT_IP")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "rbs-health-check",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var @default = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Name = "region-service",
///         Region = "us-central1",
///         HealthChecks = defaultHealthCheck.Id,
///         ConnectionDrainingTimeoutSec = 10,
///         SessionAffinity = "CLIENT_IP",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("rbs-health-check"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Name:                         pulumi.String("region-service"),
/// 			Region:                       pulumi.String("us-central1"),
/// 			HealthChecks:                 defaultHealthCheck.ID(),
/// 			ConnectionDrainingTimeoutSec: pulumi.Int(10),
/// 			SessionAffinity:              pulumi.String("CLIENT_IP"),
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
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
///         var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
///             .name("rbs-health-check")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var default_ = new RegionBackendService("default", RegionBackendServiceArgs.builder()
///             .name("region-service")
///             .region("us-central1")
///             .healthChecks(defaultHealthCheck.id())
///             .connectionDrainingTimeoutSec(10)
///             .sessionAffinity("CLIENT_IP")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:RegionBackendService
///     properties:
///       name: region-service
///       region: us-central1
///       healthChecks: ${defaultHealthCheck.id}
///       connectionDrainingTimeoutSec: 10
///       sessionAffinity: CLIENT_IP
///   defaultHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: default
///     properties:
///       name: rbs-health-check
///       checkIntervalSec: 1
///       timeoutSec: 1
///       tcpHealthCheck:
///         port: '80'
/// ```
///
/// ### Region Backend Service External Iap
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RegionBackendService("default", {
///     name: "tf-test-region-service-external",
///     region: "us-central1",
///     protocol: "HTTP",
///     loadBalancingScheme: "EXTERNAL",
///     iap: {
///         enabled: true,
///         oauth2ClientId: "abc",
///         oauth2ClientSecret: "xyz",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.RegionBackendService("default",
///     name="tf-test-region-service-external",
///     region="us-central1",
///     protocol="HTTP",
///     load_balancing_scheme="EXTERNAL",
///     iap={
///         "enabled": True,
///         "oauth2_client_id": "abc",
///         "oauth2_client_secret": "xyz",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Name = "tf-test-region-service-external",
///         Region = "us-central1",
///         Protocol = "HTTP",
///         LoadBalancingScheme = "EXTERNAL",
///         Iap = new Gcp.Compute.Inputs.RegionBackendServiceIapArgs
///         {
///             Enabled = true,
///             Oauth2ClientId = "abc",
///             Oauth2ClientSecret = "xyz",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Name:                pulumi.String("tf-test-region-service-external"),
/// 			Region:              pulumi.String("us-central1"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL"),
/// 			Iap: &compute.RegionBackendServiceIapArgs{
/// 				Enabled:            pulumi.Bool(true),
/// 				Oauth2ClientId:     pulumi.String("abc"),
/// 				Oauth2ClientSecret: pulumi.String("xyz"),
/// 			},
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
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceIapArgs;
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
///         var default_ = new RegionBackendService("default", RegionBackendServiceArgs.builder()
///             .name("tf-test-region-service-external")
///             .region("us-central1")
///             .protocol("HTTP")
///             .loadBalancingScheme("EXTERNAL")
///             .iap(RegionBackendServiceIapArgs.builder()
///                 .enabled(true)
///                 .oauth2ClientId("abc")
///                 .oauth2ClientSecret("xyz")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:RegionBackendService
///     properties:
///       name: tf-test-region-service-external
///       region: us-central1
///       protocol: HTTP
///       loadBalancingScheme: EXTERNAL
///       iap:
///         enabled: true
///         oauth2ClientId: abc
///         oauth2ClientSecret: xyz
/// ```
///
/// ### Region Backend Service Cache
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultRegionHealthCheck = new gcp.compute.RegionHealthCheck("default", {
///     name: "rbs-health-check",
///     region: "us-central1",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const _default = new gcp.compute.RegionBackendService("default", {
///     name: "region-service",
///     region: "us-central1",
///     healthChecks: defaultRegionHealthCheck.id,
///     enableCdn: true,
///     cdnPolicy: {
///         cacheMode: "CACHE_ALL_STATIC",
///         defaultTtl: 3600,
///         clientTtl: 7200,
///         maxTtl: 10800,
///         negativeCaching: true,
///         signedUrlCacheMaxAgeSec: 7200,
///     },
///     loadBalancingScheme: "EXTERNAL",
///     protocol: "HTTP",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_region_health_check = gcp.compute.RegionHealthCheck("default",
///     name="rbs-health-check",
///     region="us-central1",
///     http_health_check={
///         "port": 80,
///     })
/// default = gcp.compute.RegionBackendService("default",
///     name="region-service",
///     region="us-central1",
///     health_checks=default_region_health_check.id,
///     enable_cdn=True,
///     cdn_policy={
///         "cache_mode": "CACHE_ALL_STATIC",
///         "default_ttl": 3600,
///         "client_ttl": 7200,
///         "max_ttl": 10800,
///         "negative_caching": True,
///         "signed_url_cache_max_age_sec": 7200,
///     },
///     load_balancing_scheme="EXTERNAL",
///     protocol="HTTP")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultRegionHealthCheck = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Name = "rbs-health-check",
///         Region = "us-central1",
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var @default = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Name = "region-service",
///         Region = "us-central1",
///         HealthChecks = defaultRegionHealthCheck.Id,
///         EnableCdn = true,
///         CdnPolicy = new Gcp.Compute.Inputs.RegionBackendServiceCdnPolicyArgs
///         {
///             CacheMode = "CACHE_ALL_STATIC",
///             DefaultTtl = 3600,
///             ClientTtl = 7200,
///             MaxTtl = 10800,
///             NegativeCaching = true,
///             SignedUrlCacheMaxAgeSec = 7200,
///         },
///         LoadBalancingScheme = "EXTERNAL",
///         Protocol = "HTTP",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultRegionHealthCheck, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Name:   pulumi.String("rbs-health-check"),
/// 			Region: pulumi.String("us-central1"),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Name:         pulumi.String("region-service"),
/// 			Region:       pulumi.String("us-central1"),
/// 			HealthChecks: defaultRegionHealthCheck.ID(),
/// 			EnableCdn:    pulumi.Bool(true),
/// 			CdnPolicy: &compute.RegionBackendServiceCdnPolicyArgs{
/// 				CacheMode:               pulumi.String("CACHE_ALL_STATIC"),
/// 				DefaultTtl:              pulumi.Int(3600),
/// 				ClientTtl:               pulumi.Int(7200),
/// 				MaxTtl:                  pulumi.Int(10800),
/// 				NegativeCaching:         pulumi.Bool(true),
/// 				SignedUrlCacheMaxAgeSec: pulumi.Int(7200),
/// 			},
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL"),
/// 			Protocol:            pulumi.String("HTTP"),
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
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceCdnPolicyArgs;
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
///         var defaultRegionHealthCheck = new RegionHealthCheck("defaultRegionHealthCheck", RegionHealthCheckArgs.builder()
///             .name("rbs-health-check")
///             .region("us-central1")
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var default_ = new RegionBackendService("default", RegionBackendServiceArgs.builder()
///             .name("region-service")
///             .region("us-central1")
///             .healthChecks(defaultRegionHealthCheck.id())
///             .enableCdn(true)
///             .cdnPolicy(RegionBackendServiceCdnPolicyArgs.builder()
///                 .cacheMode("CACHE_ALL_STATIC")
///                 .defaultTtl(3600)
///                 .clientTtl(7200)
///                 .maxTtl(10800)
///                 .negativeCaching(true)
///                 .signedUrlCacheMaxAgeSec(7200)
///                 .build())
///             .loadBalancingScheme("EXTERNAL")
///             .protocol("HTTP")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:RegionBackendService
///     properties:
///       name: region-service
///       region: us-central1
///       healthChecks: ${defaultRegionHealthCheck.id}
///       enableCdn: true
///       cdnPolicy:
///         cacheMode: CACHE_ALL_STATIC
///         defaultTtl: 3600
///         clientTtl: 7200
///         maxTtl: 10800
///         negativeCaching: true
///         signedUrlCacheMaxAgeSec: 7200
///       loadBalancingScheme: EXTERNAL
///       protocol: HTTP
///   defaultRegionHealthCheck:
///     type: gcp:compute:RegionHealthCheck
///     name: default
///     properties:
///       name: rbs-health-check
///       region: us-central1
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Region Backend Service Ilb Round Robin
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const healthCheck = new gcp.compute.HealthCheck("health_check", {
///     name: "rbs-health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const _default = new gcp.compute.RegionBackendService("default", {
///     region: "us-central1",
///     name: "region-service",
///     healthChecks: healthCheck.id,
///     protocol: "HTTP",
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     localityLbPolicy: "ROUND_ROBIN",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// health_check = gcp.compute.HealthCheck("health_check",
///     name="rbs-health-check",
///     http_health_check={
///         "port": 80,
///     })
/// default = gcp.compute.RegionBackendService("default",
///     region="us-central1",
///     name="region-service",
///     health_checks=health_check.id,
///     protocol="HTTP",
///     load_balancing_scheme="INTERNAL_MANAGED",
///     locality_lb_policy="ROUND_ROBIN")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var healthCheck = new Gcp.Compute.HealthCheck("health_check", new()
///     {
///         Name = "rbs-health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var @default = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Region = "us-central1",
///         Name = "region-service",
///         HealthChecks = healthCheck.Id,
///         Protocol = "HTTP",
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         LocalityLbPolicy = "ROUND_ROBIN",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		healthCheck, err := compute.NewHealthCheck(ctx, "health_check", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("rbs-health-check"),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("region-service"),
/// 			HealthChecks:        healthCheck.ID(),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			LocalityLbPolicy:    pulumi.String("ROUND_ROBIN"),
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
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
///         var healthCheck = new HealthCheck("healthCheck", HealthCheckArgs.builder()
///             .name("rbs-health-check")
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var default_ = new RegionBackendService("default", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("region-service")
///             .healthChecks(healthCheck.id())
///             .protocol("HTTP")
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .localityLbPolicy("ROUND_ROBIN")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: us-central1
///       name: region-service
///       healthChecks: ${healthCheck.id}
///       protocol: HTTP
///       loadBalancingScheme: INTERNAL_MANAGED
///       localityLbPolicy: ROUND_ROBIN
///   healthCheck:
///     type: gcp:compute:HealthCheck
///     name: health_check
///     properties:
///       name: rbs-health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Region Backend Service External
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const healthCheck = new gcp.compute.RegionHealthCheck("health_check", {
///     name: "rbs-health-check",
///     region: "us-central1",
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const _default = new gcp.compute.RegionBackendService("default", {
///     region: "us-central1",
///     name: "region-service",
///     healthChecks: healthCheck.id,
///     protocol: "TCP",
///     loadBalancingScheme: "EXTERNAL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// health_check = gcp.compute.RegionHealthCheck("health_check",
///     name="rbs-health-check",
///     region="us-central1",
///     tcp_health_check={
///         "port": 80,
///     })
/// default = gcp.compute.RegionBackendService("default",
///     region="us-central1",
///     name="region-service",
///     health_checks=health_check.id,
///     protocol="TCP",
///     load_balancing_scheme="EXTERNAL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var healthCheck = new Gcp.Compute.RegionHealthCheck("health_check", new()
///     {
///         Name = "rbs-health-check",
///         Region = "us-central1",
///         TcpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var @default = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Region = "us-central1",
///         Name = "region-service",
///         HealthChecks = healthCheck.Id,
///         Protocol = "TCP",
///         LoadBalancingScheme = "EXTERNAL",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		healthCheck, err := compute.NewRegionHealthCheck(ctx, "health_check", &compute.RegionHealthCheckArgs{
/// 			Name:   pulumi.String("rbs-health-check"),
/// 			Region: pulumi.String("us-central1"),
/// 			TcpHealthCheck: &compute.RegionHealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("region-service"),
/// 			HealthChecks:        healthCheck.ID(),
/// 			Protocol:            pulumi.String("TCP"),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL"),
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
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
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
///         var healthCheck = new RegionHealthCheck("healthCheck", RegionHealthCheckArgs.builder()
///             .name("rbs-health-check")
///             .region("us-central1")
///             .tcpHealthCheck(RegionHealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var default_ = new RegionBackendService("default", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("region-service")
///             .healthChecks(healthCheck.id())
///             .protocol("TCP")
///             .loadBalancingScheme("EXTERNAL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: us-central1
///       name: region-service
///       healthChecks: ${healthCheck.id}
///       protocol: TCP
///       loadBalancingScheme: EXTERNAL
///   healthCheck:
///     type: gcp:compute:RegionHealthCheck
///     name: health_check
///     properties:
///       name: rbs-health-check
///       region: us-central1
///       tcpHealthCheck:
///         port: 80
/// ```
///
/// ### Region Backend Service External Weighted
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const healthCheck = new gcp.compute.RegionHealthCheck("health_check", {
///     name: "rbs-health-check",
///     region: "us-central1",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const _default = new gcp.compute.RegionBackendService("default", {
///     region: "us-central1",
///     name: "region-service",
///     healthChecks: healthCheck.id,
///     protocol: "TCP",
///     loadBalancingScheme: "EXTERNAL",
///     localityLbPolicy: "WEIGHTED_MAGLEV",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// health_check = gcp.compute.RegionHealthCheck("health_check",
///     name="rbs-health-check",
///     region="us-central1",
///     http_health_check={
///         "port": 80,
///     })
/// default = gcp.compute.RegionBackendService("default",
///     region="us-central1",
///     name="region-service",
///     health_checks=health_check.id,
///     protocol="TCP",
///     load_balancing_scheme="EXTERNAL",
///     locality_lb_policy="WEIGHTED_MAGLEV")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var healthCheck = new Gcp.Compute.RegionHealthCheck("health_check", new()
///     {
///         Name = "rbs-health-check",
///         Region = "us-central1",
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var @default = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Region = "us-central1",
///         Name = "region-service",
///         HealthChecks = healthCheck.Id,
///         Protocol = "TCP",
///         LoadBalancingScheme = "EXTERNAL",
///         LocalityLbPolicy = "WEIGHTED_MAGLEV",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		healthCheck, err := compute.NewRegionHealthCheck(ctx, "health_check", &compute.RegionHealthCheckArgs{
/// 			Name:   pulumi.String("rbs-health-check"),
/// 			Region: pulumi.String("us-central1"),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("region-service"),
/// 			HealthChecks:        healthCheck.ID(),
/// 			Protocol:            pulumi.String("TCP"),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL"),
/// 			LocalityLbPolicy:    pulumi.String("WEIGHTED_MAGLEV"),
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
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
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
///         var healthCheck = new RegionHealthCheck("healthCheck", RegionHealthCheckArgs.builder()
///             .name("rbs-health-check")
///             .region("us-central1")
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var default_ = new RegionBackendService("default", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("region-service")
///             .healthChecks(healthCheck.id())
///             .protocol("TCP")
///             .loadBalancingScheme("EXTERNAL")
///             .localityLbPolicy("WEIGHTED_MAGLEV")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: us-central1
///       name: region-service
///       healthChecks: ${healthCheck.id}
///       protocol: TCP
///       loadBalancingScheme: EXTERNAL
///       localityLbPolicy: WEIGHTED_MAGLEV
///   healthCheck:
///     type: gcp:compute:RegionHealthCheck
///     name: health_check
///     properties:
///       name: rbs-health-check
///       region: us-central1
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Region Backend Service Ilb Ring Hash
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const healthCheck = new gcp.compute.HealthCheck("health_check", {
///     name: "rbs-health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const _default = new gcp.compute.RegionBackendService("default", {
///     region: "us-central1",
///     name: "region-service",
///     healthChecks: healthCheck.id,
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     localityLbPolicy: "RING_HASH",
///     sessionAffinity: "HTTP_COOKIE",
///     protocol: "HTTP",
///     circuitBreakers: {
///         maxConnections: 10,
///     },
///     consistentHash: {
///         httpCookie: {
///             ttl: {
///                 seconds: 11,
///                 nanos: 1111,
///             },
///             name: "mycookie",
///         },
///     },
///     outlierDetection: {
///         consecutiveErrors: 2,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// health_check = gcp.compute.HealthCheck("health_check",
///     name="rbs-health-check",
///     http_health_check={
///         "port": 80,
///     })
/// default = gcp.compute.RegionBackendService("default",
///     region="us-central1",
///     name="region-service",
///     health_checks=health_check.id,
///     load_balancing_scheme="INTERNAL_MANAGED",
///     locality_lb_policy="RING_HASH",
///     session_affinity="HTTP_COOKIE",
///     protocol="HTTP",
///     circuit_breakers={
///         "max_connections": 10,
///     },
///     consistent_hash={
///         "http_cookie": {
///             "ttl": {
///                 "seconds": 11,
///                 "nanos": 1111,
///             },
///             "name": "mycookie",
///         },
///     },
///     outlier_detection={
///         "consecutive_errors": 2,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var healthCheck = new Gcp.Compute.HealthCheck("health_check", new()
///     {
///         Name = "rbs-health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var @default = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Region = "us-central1",
///         Name = "region-service",
///         HealthChecks = healthCheck.Id,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         LocalityLbPolicy = "RING_HASH",
///         SessionAffinity = "HTTP_COOKIE",
///         Protocol = "HTTP",
///         CircuitBreakers = new Gcp.Compute.Inputs.RegionBackendServiceCircuitBreakersArgs
///         {
///             MaxConnections = 10,
///         },
///         ConsistentHash = new Gcp.Compute.Inputs.RegionBackendServiceConsistentHashArgs
///         {
///             HttpCookie = new Gcp.Compute.Inputs.RegionBackendServiceConsistentHashHttpCookieArgs
///             {
///                 Ttl = new Gcp.Compute.Inputs.RegionBackendServiceConsistentHashHttpCookieTtlArgs
///                 {
///                     Seconds = 11,
///                     Nanos = 1111,
///                 },
///                 Name = "mycookie",
///             },
///         },
///         OutlierDetection = new Gcp.Compute.Inputs.RegionBackendServiceOutlierDetectionArgs
///         {
///             ConsecutiveErrors = 2,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		healthCheck, err := compute.NewHealthCheck(ctx, "health_check", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("rbs-health-check"),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("region-service"),
/// 			HealthChecks:        healthCheck.ID(),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			LocalityLbPolicy:    pulumi.String("RING_HASH"),
/// 			SessionAffinity:     pulumi.String("HTTP_COOKIE"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			CircuitBreakers: &compute.RegionBackendServiceCircuitBreakersArgs{
/// 				MaxConnections: pulumi.Int(10),
/// 			},
/// 			ConsistentHash: &compute.RegionBackendServiceConsistentHashArgs{
/// 				HttpCookie: &compute.RegionBackendServiceConsistentHashHttpCookieArgs{
/// 					Ttl: &compute.RegionBackendServiceConsistentHashHttpCookieTtlArgs{
/// 						Seconds: pulumi.Int(11),
/// 						Nanos:   pulumi.Int(1111),
/// 					},
/// 					Name: pulumi.String("mycookie"),
/// 				},
/// 			},
/// 			OutlierDetection: &compute.RegionBackendServiceOutlierDetectionArgs{
/// 				ConsecutiveErrors: pulumi.Int(2),
/// 			},
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceCircuitBreakersArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceConsistentHashArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceConsistentHashHttpCookieArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceConsistentHashHttpCookieTtlArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceOutlierDetectionArgs;
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
///         var healthCheck = new HealthCheck("healthCheck", HealthCheckArgs.builder()
///             .name("rbs-health-check")
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var default_ = new RegionBackendService("default", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("region-service")
///             .healthChecks(healthCheck.id())
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .localityLbPolicy("RING_HASH")
///             .sessionAffinity("HTTP_COOKIE")
///             .protocol("HTTP")
///             .circuitBreakers(RegionBackendServiceCircuitBreakersArgs.builder()
///                 .maxConnections(10)
///                 .build())
///             .consistentHash(RegionBackendServiceConsistentHashArgs.builder()
///                 .httpCookie(RegionBackendServiceConsistentHashHttpCookieArgs.builder()
///                     .ttl(RegionBackendServiceConsistentHashHttpCookieTtlArgs.builder()
///                         .seconds(11)
///                         .nanos(1111)
///                         .build())
///                     .name("mycookie")
///                     .build())
///                 .build())
///             .outlierDetection(RegionBackendServiceOutlierDetectionArgs.builder()
///                 .consecutiveErrors(2)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: us-central1
///       name: region-service
///       healthChecks: ${healthCheck.id}
///       loadBalancingScheme: INTERNAL_MANAGED
///       localityLbPolicy: RING_HASH
///       sessionAffinity: HTTP_COOKIE
///       protocol: HTTP
///       circuitBreakers:
///         maxConnections: 10
///       consistentHash:
///         httpCookie:
///           ttl:
///             seconds: 11
///             nanos: 1111
///           name: mycookie
///       outlierDetection:
///         consecutiveErrors: 2
///   healthCheck:
///     type: gcp:compute:HealthCheck
///     name: health_check
///     properties:
///       name: rbs-health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Region Backend Service Ilb Stateful Session Affinity
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const healthCheck = new gcp.compute.HealthCheck("health_check", {
///     name: "rbs-health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const _default = new gcp.compute.RegionBackendService("default", {
///     region: "us-central1",
///     name: "region-service",
///     healthChecks: healthCheck.id,
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     localityLbPolicy: "RING_HASH",
///     sessionAffinity: "STRONG_COOKIE_AFFINITY",
///     protocol: "HTTP",
///     strongSessionAffinityCookie: {
///         ttl: {
///             seconds: 11,
///             nanos: 1111,
///         },
///         name: "mycookie",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// health_check = gcp.compute.HealthCheck("health_check",
///     name="rbs-health-check",
///     http_health_check={
///         "port": 80,
///     })
/// default = gcp.compute.RegionBackendService("default",
///     region="us-central1",
///     name="region-service",
///     health_checks=health_check.id,
///     load_balancing_scheme="INTERNAL_MANAGED",
///     locality_lb_policy="RING_HASH",
///     session_affinity="STRONG_COOKIE_AFFINITY",
///     protocol="HTTP",
///     strong_session_affinity_cookie={
///         "ttl": {
///             "seconds": 11,
///             "nanos": 1111,
///         },
///         "name": "mycookie",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var healthCheck = new Gcp.Compute.HealthCheck("health_check", new()
///     {
///         Name = "rbs-health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var @default = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Region = "us-central1",
///         Name = "region-service",
///         HealthChecks = healthCheck.Id,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         LocalityLbPolicy = "RING_HASH",
///         SessionAffinity = "STRONG_COOKIE_AFFINITY",
///         Protocol = "HTTP",
///         StrongSessionAffinityCookie = new Gcp.Compute.Inputs.RegionBackendServiceStrongSessionAffinityCookieArgs
///         {
///             Ttl = new Gcp.Compute.Inputs.RegionBackendServiceStrongSessionAffinityCookieTtlArgs
///             {
///                 Seconds = 11,
///                 Nanos = 1111,
///             },
///             Name = "mycookie",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		healthCheck, err := compute.NewHealthCheck(ctx, "health_check", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("rbs-health-check"),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("region-service"),
/// 			HealthChecks:        healthCheck.ID(),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			LocalityLbPolicy:    pulumi.String("RING_HASH"),
/// 			SessionAffinity:     pulumi.String("STRONG_COOKIE_AFFINITY"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			StrongSessionAffinityCookie: &compute.RegionBackendServiceStrongSessionAffinityCookieArgs{
/// 				Ttl: &compute.RegionBackendServiceStrongSessionAffinityCookieTtlArgs{
/// 					Seconds: pulumi.Int(11),
/// 					Nanos:   pulumi.Int(1111),
/// 				},
/// 				Name: pulumi.String("mycookie"),
/// 			},
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceStrongSessionAffinityCookieArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceStrongSessionAffinityCookieTtlArgs;
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
///         var healthCheck = new HealthCheck("healthCheck", HealthCheckArgs.builder()
///             .name("rbs-health-check")
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var default_ = new RegionBackendService("default", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("region-service")
///             .healthChecks(healthCheck.id())
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .localityLbPolicy("RING_HASH")
///             .sessionAffinity("STRONG_COOKIE_AFFINITY")
///             .protocol("HTTP")
///             .strongSessionAffinityCookie(RegionBackendServiceStrongSessionAffinityCookieArgs.builder()
///                 .ttl(RegionBackendServiceStrongSessionAffinityCookieTtlArgs.builder()
///                     .seconds(11)
///                     .nanos(1111)
///                     .build())
///                 .name("mycookie")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: us-central1
///       name: region-service
///       healthChecks: ${healthCheck.id}
///       loadBalancingScheme: INTERNAL_MANAGED
///       localityLbPolicy: RING_HASH
///       sessionAffinity: STRONG_COOKIE_AFFINITY
///       protocol: HTTP
///       strongSessionAffinityCookie:
///         ttl:
///           seconds: 11
///           nanos: 1111
///         name: mycookie
///   healthCheck:
///     type: gcp:compute:HealthCheck
///     name: health_check
///     properties:
///       name: rbs-health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Region Backend Service Balancing Mode
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const debianImage = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "rbs-net",
///     autoCreateSubnetworks: false,
///     routingMode: "REGIONAL",
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "rbs-net-default",
///     ipCidrRange: "10.1.2.0/24",
///     region: "us-central1",
///     network: defaultNetwork.id,
/// });
/// const instanceTemplate = new gcp.compute.InstanceTemplate("instance_template", {
///     name: "template-region-service",
///     machineType: "e2-medium",
///     networkInterfaces: [{
///         network: defaultNetwork.id,
///         subnetwork: defaultSubnetwork.id,
///     }],
///     disks: [{
///         sourceImage: debianImage.then(debianImage => debianImage.selfLink),
///         autoDelete: true,
///         boot: true,
///     }],
///     tags: [
///         "allow-ssh",
///         "load-balanced-backend",
///     ],
/// });
/// const rigm = new gcp.compute.RegionInstanceGroupManager("rigm", {
///     region: "us-central1",
///     name: "rbs-rigm",
///     versions: [{
///         instanceTemplate: instanceTemplate.id,
///         name: "primary",
///     }],
///     baseInstanceName: "internal-glb",
///     targetSize: 1,
/// });
/// const defaultRegionHealthCheck = new gcp.compute.RegionHealthCheck("default", {
///     region: "us-central1",
///     name: "rbs-health-check",
///     httpHealthCheck: {
///         portSpecification: "USE_SERVING_PORT",
///     },
/// });
/// const _default = new gcp.compute.RegionBackendService("default", {
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     backends: [{
///         group: rigm.instanceGroup,
///         balancingMode: "UTILIZATION",
///         capacityScaler: 1,
///     }],
///     region: "us-central1",
///     name: "region-service",
///     protocol: "H2C",
///     timeoutSec: 10,
///     healthChecks: defaultRegionHealthCheck.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// debian_image = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// default_network = gcp.compute.Network("default",
///     name="rbs-net",
///     auto_create_subnetworks=False,
///     routing_mode="REGIONAL")
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="rbs-net-default",
///     ip_cidr_range="10.1.2.0/24",
///     region="us-central1",
///     network=default_network.id)
/// instance_template = gcp.compute.InstanceTemplate("instance_template",
///     name="template-region-service",
///     machine_type="e2-medium",
///     network_interfaces=[{
///         "network": default_network.id,
///         "subnetwork": default_subnetwork.id,
///     }],
///     disks=[{
///         "source_image": debian_image.self_link,
///         "auto_delete": True,
///         "boot": True,
///     }],
///     tags=[
///         "allow-ssh",
///         "load-balanced-backend",
///     ])
/// rigm = gcp.compute.RegionInstanceGroupManager("rigm",
///     region="us-central1",
///     name="rbs-rigm",
///     versions=[{
///         "instance_template": instance_template.id,
///         "name": "primary",
///     }],
///     base_instance_name="internal-glb",
///     target_size=1)
/// default_region_health_check = gcp.compute.RegionHealthCheck("default",
///     region="us-central1",
///     name="rbs-health-check",
///     http_health_check={
///         "port_specification": "USE_SERVING_PORT",
///     })
/// default = gcp.compute.RegionBackendService("default",
///     load_balancing_scheme="INTERNAL_MANAGED",
///     backends=[{
///         "group": rigm.instance_group,
///         "balancing_mode": "UTILIZATION",
///         "capacity_scaler": 1,
///     }],
///     region="us-central1",
///     name="region-service",
///     protocol="H2C",
///     timeout_sec=10,
///     health_checks=default_region_health_check.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var debianImage = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "rbs-net",
///         AutoCreateSubnetworks = false,
///         RoutingMode = "REGIONAL",
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "rbs-net-default",
///         IpCidrRange = "10.1.2.0/24",
///         Region = "us-central1",
///         Network = defaultNetwork.Id,
///     });
///
///     var instanceTemplate = new Gcp.Compute.InstanceTemplate("instance_template", new()
///     {
///         Name = "template-region-service",
///         MachineType = "e2-medium",
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateNetworkInterfaceArgs
///             {
///                 Network = defaultNetwork.Id,
///                 Subnetwork = defaultSubnetwork.Id,
///             },
///         },
///         Disks = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
///             {
///                 SourceImage = debianImage.Apply(getImageResult => getImageResult.SelfLink),
///                 AutoDelete = true,
///                 Boot = true,
///             },
///         },
///         Tags = new[]
///         {
///             "allow-ssh",
///             "load-balanced-backend",
///         },
///     });
///
///     var rigm = new Gcp.Compute.RegionInstanceGroupManager("rigm", new()
///     {
///         Region = "us-central1",
///         Name = "rbs-rigm",
///         Versions = new[]
///         {
///             new Gcp.Compute.Inputs.RegionInstanceGroupManagerVersionArgs
///             {
///                 InstanceTemplate = instanceTemplate.Id,
///                 Name = "primary",
///             },
///         },
///         BaseInstanceName = "internal-glb",
///         TargetSize = 1,
///     });
///
///     var defaultRegionHealthCheck = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Region = "us-central1",
///         Name = "rbs-health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             PortSpecification = "USE_SERVING_PORT",
///         },
///     });
///
///     var @default = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         Backends = new[]
///         {
///             new Gcp.Compute.Inputs.RegionBackendServiceBackendArgs
///             {
///                 Group = rigm.InstanceGroup,
///                 BalancingMode = "UTILIZATION",
///                 CapacityScaler = 1,
///             },
///         },
///         Region = "us-central1",
///         Name = "region-service",
///         Protocol = "H2C",
///         TimeoutSec = 10,
///         HealthChecks = defaultRegionHealthCheck.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		debianImage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("rbs-net"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 			RoutingMode:           pulumi.String("REGIONAL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("rbs-net-default"),
/// 			IpCidrRange: pulumi.String("10.1.2.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instanceTemplate, err := compute.NewInstanceTemplate(ctx, "instance_template", &compute.InstanceTemplateArgs{
/// 			Name:        pulumi.String("template-region-service"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			NetworkInterfaces: compute.InstanceTemplateNetworkInterfaceArray{
/// 				&compute.InstanceTemplateNetworkInterfaceArgs{
/// 					Network:    defaultNetwork.ID(),
/// 					Subnetwork: defaultSubnetwork.ID(),
/// 				},
/// 			},
/// 			Disks: compute.InstanceTemplateDiskArray{
/// 				&compute.InstanceTemplateDiskArgs{
/// 					SourceImage: pulumi.String(debianImage.SelfLink),
/// 					AutoDelete:  pulumi.Bool(true),
/// 					Boot:        pulumi.Bool(true),
/// 				},
/// 			},
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("allow-ssh"),
/// 				pulumi.String("load-balanced-backend"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		rigm, err := compute.NewRegionInstanceGroupManager(ctx, "rigm", &compute.RegionInstanceGroupManagerArgs{
/// 			Region: pulumi.String("us-central1"),
/// 			Name:   pulumi.String("rbs-rigm"),
/// 			Versions: compute.RegionInstanceGroupManagerVersionArray{
/// 				&compute.RegionInstanceGroupManagerVersionArgs{
/// 					InstanceTemplate: instanceTemplate.ID(),
/// 					Name:             pulumi.String("primary"),
/// 				},
/// 			},
/// 			BaseInstanceName: pulumi.String("internal-glb"),
/// 			TargetSize:       pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegionHealthCheck, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Region: pulumi.String("us-central1"),
/// 			Name:   pulumi.String("rbs-health-check"),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				PortSpecification: pulumi.String("USE_SERVING_PORT"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			Backends: compute.RegionBackendServiceBackendArray{
/// 				&compute.RegionBackendServiceBackendArgs{
/// 					Group:          rigm.InstanceGroup,
/// 					BalancingMode:  pulumi.String("UTILIZATION"),
/// 					CapacityScaler: pulumi.Float64(1),
/// 				},
/// 			},
/// 			Region:       pulumi.String("us-central1"),
/// 			Name:         pulumi.String("region-service"),
/// 			Protocol:     pulumi.String("H2C"),
/// 			TimeoutSec:   pulumi.Int(10),
/// 			HealthChecks: defaultRegionHealthCheck.ID(),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.RegionInstanceGroupManager;
/// import com.pulumi.gcp.compute.RegionInstanceGroupManagerArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceGroupManagerVersionArgs;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceBackendArgs;
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
///         final var debianImage = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("rbs-net")
///             .autoCreateSubnetworks(false)
///             .routingMode("REGIONAL")
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("rbs-net-default")
///             .ipCidrRange("10.1.2.0/24")
///             .region("us-central1")
///             .network(defaultNetwork.id())
///             .build());
///
///         var instanceTemplate = new InstanceTemplate("instanceTemplate", InstanceTemplateArgs.builder()
///             .name("template-region-service")
///             .machineType("e2-medium")
///             .networkInterfaces(InstanceTemplateNetworkInterfaceArgs.builder()
///                 .network(defaultNetwork.id())
///                 .subnetwork(defaultSubnetwork.id())
///                 .build())
///             .disks(InstanceTemplateDiskArgs.builder()
///                 .sourceImage(debianImage.selfLink())
///                 .autoDelete(true)
///                 .boot(true)
///                 .build())
///             .tags(
///                 "allow-ssh",
///                 "load-balanced-backend")
///             .build());
///
///         var rigm = new RegionInstanceGroupManager("rigm", RegionInstanceGroupManagerArgs.builder()
///             .region("us-central1")
///             .name("rbs-rigm")
///             .versions(RegionInstanceGroupManagerVersionArgs.builder()
///                 .instanceTemplate(instanceTemplate.id())
///                 .name("primary")
///                 .build())
///             .baseInstanceName("internal-glb")
///             .targetSize(1)
///             .build());
///
///         var defaultRegionHealthCheck = new RegionHealthCheck("defaultRegionHealthCheck", RegionHealthCheckArgs.builder()
///             .region("us-central1")
///             .name("rbs-health-check")
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .portSpecification("USE_SERVING_PORT")
///                 .build())
///             .build());
///
///         var default_ = new RegionBackendService("default", RegionBackendServiceArgs.builder()
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .backends(RegionBackendServiceBackendArgs.builder()
///                 .group(rigm.instanceGroup())
///                 .balancingMode("UTILIZATION")
///                 .capacityScaler(1.0)
///                 .build())
///             .region("us-central1")
///             .name("region-service")
///             .protocol("H2C")
///             .timeoutSec(10)
///             .healthChecks(defaultRegionHealthCheck.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:RegionBackendService
///     properties:
///       loadBalancingScheme: INTERNAL_MANAGED
///       backends:
///         - group: ${rigm.instanceGroup}
///           balancingMode: UTILIZATION
///           capacityScaler: 1
///       region: us-central1
///       name: region-service
///       protocol: H2C
///       timeoutSec: 10
///       healthChecks: ${defaultRegionHealthCheck.id}
///   rigm:
///     type: gcp:compute:RegionInstanceGroupManager
///     properties:
///       region: us-central1
///       name: rbs-rigm
///       versions:
///         - instanceTemplate: ${instanceTemplate.id}
///           name: primary
///       baseInstanceName: internal-glb
///       targetSize: 1
///   instanceTemplate:
///     type: gcp:compute:InstanceTemplate
///     name: instance_template
///     properties:
///       name: template-region-service
///       machineType: e2-medium
///       networkInterfaces:
///         - network: ${defaultNetwork.id}
///           subnetwork: ${defaultSubnetwork.id}
///       disks:
///         - sourceImage: ${debianImage.selfLink}
///           autoDelete: true
///           boot: true
///       tags:
///         - allow-ssh
///         - load-balanced-backend
///   defaultRegionHealthCheck:
///     type: gcp:compute:RegionHealthCheck
///     name: default
///     properties:
///       region: us-central1
///       name: rbs-health-check
///       httpHealthCheck:
///         portSpecification: USE_SERVING_PORT
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: rbs-net
///       autoCreateSubnetworks: false
///       routingMode: REGIONAL
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: rbs-net-default
///       ipCidrRange: 10.1.2.0/24
///       region: us-central1
///       network: ${defaultNetwork.id}
/// variables:
///   debianImage:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-11
///         project: debian-cloud
/// ```
///
/// ### Region Backend Service Connection Tracking
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const healthCheck = new gcp.compute.RegionHealthCheck("health_check", {
///     name: "rbs-health-check",
///     region: "us-central1",
///     tcpHealthCheck: {
///         port: 22,
///     },
/// });
/// const _default = new gcp.compute.RegionBackendService("default", {
///     name: "region-service",
///     region: "us-central1",
///     healthChecks: healthCheck.id,
///     connectionDrainingTimeoutSec: 10,
///     sessionAffinity: "CLIENT_IP",
///     protocol: "TCP",
///     loadBalancingScheme: "EXTERNAL",
///     connectionTrackingPolicy: {
///         trackingMode: "PER_SESSION",
///         connectionPersistenceOnUnhealthyBackends: "NEVER_PERSIST",
///         idleTimeoutSec: 60,
///         enableStrongAffinity: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// health_check = gcp.compute.RegionHealthCheck("health_check",
///     name="rbs-health-check",
///     region="us-central1",
///     tcp_health_check={
///         "port": 22,
///     })
/// default = gcp.compute.RegionBackendService("default",
///     name="region-service",
///     region="us-central1",
///     health_checks=health_check.id,
///     connection_draining_timeout_sec=10,
///     session_affinity="CLIENT_IP",
///     protocol="TCP",
///     load_balancing_scheme="EXTERNAL",
///     connection_tracking_policy={
///         "tracking_mode": "PER_SESSION",
///         "connection_persistence_on_unhealthy_backends": "NEVER_PERSIST",
///         "idle_timeout_sec": 60,
///         "enable_strong_affinity": True,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var healthCheck = new Gcp.Compute.RegionHealthCheck("health_check", new()
///     {
///         Name = "rbs-health-check",
///         Region = "us-central1",
///         TcpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckTcpHealthCheckArgs
///         {
///             Port = 22,
///         },
///     });
///
///     var @default = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Name = "region-service",
///         Region = "us-central1",
///         HealthChecks = healthCheck.Id,
///         ConnectionDrainingTimeoutSec = 10,
///         SessionAffinity = "CLIENT_IP",
///         Protocol = "TCP",
///         LoadBalancingScheme = "EXTERNAL",
///         ConnectionTrackingPolicy = new Gcp.Compute.Inputs.RegionBackendServiceConnectionTrackingPolicyArgs
///         {
///             TrackingMode = "PER_SESSION",
///             ConnectionPersistenceOnUnhealthyBackends = "NEVER_PERSIST",
///             IdleTimeoutSec = 60,
///             EnableStrongAffinity = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		healthCheck, err := compute.NewRegionHealthCheck(ctx, "health_check", &compute.RegionHealthCheckArgs{
/// 			Name:   pulumi.String("rbs-health-check"),
/// 			Region: pulumi.String("us-central1"),
/// 			TcpHealthCheck: &compute.RegionHealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(22),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Name:                         pulumi.String("region-service"),
/// 			Region:                       pulumi.String("us-central1"),
/// 			HealthChecks:                 healthCheck.ID(),
/// 			ConnectionDrainingTimeoutSec: pulumi.Int(10),
/// 			SessionAffinity:              pulumi.String("CLIENT_IP"),
/// 			Protocol:                     pulumi.String("TCP"),
/// 			LoadBalancingScheme:          pulumi.String("EXTERNAL"),
/// 			ConnectionTrackingPolicy: &compute.RegionBackendServiceConnectionTrackingPolicyArgs{
/// 				TrackingMode:                             pulumi.String("PER_SESSION"),
/// 				ConnectionPersistenceOnUnhealthyBackends: pulumi.String("NEVER_PERSIST"),
/// 				IdleTimeoutSec:                           pulumi.Int(60),
/// 				EnableStrongAffinity:                     pulumi.Bool(true),
/// 			},
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
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceConnectionTrackingPolicyArgs;
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
///         var healthCheck = new RegionHealthCheck("healthCheck", RegionHealthCheckArgs.builder()
///             .name("rbs-health-check")
///             .region("us-central1")
///             .tcpHealthCheck(RegionHealthCheckTcpHealthCheckArgs.builder()
///                 .port(22)
///                 .build())
///             .build());
///
///         var default_ = new RegionBackendService("default", RegionBackendServiceArgs.builder()
///             .name("region-service")
///             .region("us-central1")
///             .healthChecks(healthCheck.id())
///             .connectionDrainingTimeoutSec(10)
///             .sessionAffinity("CLIENT_IP")
///             .protocol("TCP")
///             .loadBalancingScheme("EXTERNAL")
///             .connectionTrackingPolicy(RegionBackendServiceConnectionTrackingPolicyArgs.builder()
///                 .trackingMode("PER_SESSION")
///                 .connectionPersistenceOnUnhealthyBackends("NEVER_PERSIST")
///                 .idleTimeoutSec(60)
///                 .enableStrongAffinity(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:RegionBackendService
///     properties:
///       name: region-service
///       region: us-central1
///       healthChecks: ${healthCheck.id}
///       connectionDrainingTimeoutSec: 10
///       sessionAffinity: CLIENT_IP
///       protocol: TCP
///       loadBalancingScheme: EXTERNAL
///       connectionTrackingPolicy:
///         trackingMode: PER_SESSION
///         connectionPersistenceOnUnhealthyBackends: NEVER_PERSIST
///         idleTimeoutSec: 60
///         enableStrongAffinity: true
///   healthCheck:
///     type: gcp:compute:RegionHealthCheck
///     name: health_check
///     properties:
///       name: rbs-health-check
///       region: us-central1
///       tcpHealthCheck:
///         port: 22
/// ```
///
/// ### Region Backend Service Ip Address Selection Policy
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const healthCheck = new gcp.compute.RegionHealthCheck("health_check", {
///     name: "rbs-health-check",
///     region: "us-central1",
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const _default = new gcp.compute.RegionBackendService("default", {
///     name: "region-service",
///     region: "us-central1",
///     healthChecks: healthCheck.id,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     protocol: "HTTP",
///     ipAddressSelectionPolicy: "IPV6_ONLY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// health_check = gcp.compute.RegionHealthCheck("health_check",
///     name="rbs-health-check",
///     region="us-central1",
///     tcp_health_check={
///         "port": 80,
///     })
/// default = gcp.compute.RegionBackendService("default",
///     name="region-service",
///     region="us-central1",
///     health_checks=health_check.id,
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     protocol="HTTP",
///     ip_address_selection_policy="IPV6_ONLY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var healthCheck = new Gcp.Compute.RegionHealthCheck("health_check", new()
///     {
///         Name = "rbs-health-check",
///         Region = "us-central1",
///         TcpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var @default = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Name = "region-service",
///         Region = "us-central1",
///         HealthChecks = healthCheck.Id,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         Protocol = "HTTP",
///         IpAddressSelectionPolicy = "IPV6_ONLY",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		healthCheck, err := compute.NewRegionHealthCheck(ctx, "health_check", &compute.RegionHealthCheckArgs{
/// 			Name:   pulumi.String("rbs-health-check"),
/// 			Region: pulumi.String("us-central1"),
/// 			TcpHealthCheck: &compute.RegionHealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Name:                     pulumi.String("region-service"),
/// 			Region:                   pulumi.String("us-central1"),
/// 			HealthChecks:             healthCheck.ID(),
/// 			LoadBalancingScheme:      pulumi.String("EXTERNAL_MANAGED"),
/// 			Protocol:                 pulumi.String("HTTP"),
/// 			IpAddressSelectionPolicy: pulumi.String("IPV6_ONLY"),
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
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
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
///         var healthCheck = new RegionHealthCheck("healthCheck", RegionHealthCheckArgs.builder()
///             .name("rbs-health-check")
///             .region("us-central1")
///             .tcpHealthCheck(RegionHealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var default_ = new RegionBackendService("default", RegionBackendServiceArgs.builder()
///             .name("region-service")
///             .region("us-central1")
///             .healthChecks(healthCheck.id())
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .protocol("HTTP")
///             .ipAddressSelectionPolicy("IPV6_ONLY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:RegionBackendService
///     properties:
///       name: region-service
///       region: us-central1
///       healthChecks: ${healthCheck.id}
///       loadBalancingScheme: EXTERNAL_MANAGED
///       protocol: HTTP
///       ipAddressSelectionPolicy: IPV6_ONLY
///   healthCheck:
///     type: gcp:compute:RegionHealthCheck
///     name: health_check
///     properties:
///       name: rbs-health-check
///       region: us-central1
///       tcpHealthCheck:
///         port: 80
/// ```
///
/// ### Region Backend Service Ilb Custom Metrics
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {name: "network"});
/// // Zonal NEG with GCE_VM_IP_PORT
/// const defaultNetworkEndpointGroup = new gcp.compute.NetworkEndpointGroup("default", {
///     name: "network-endpoint",
///     network: _default.id,
///     defaultPort: 90,
///     zone: "us-central1-a",
///     networkEndpointType: "GCE_VM_IP_PORT",
/// });
/// const healthCheck = new gcp.compute.HealthCheck("health_check", {
///     name: "rbs-health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const defaultRegionBackendService = new gcp.compute.RegionBackendService("default", {
///     region: "us-central1",
///     name: "region-service",
///     healthChecks: healthCheck.id,
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     localityLbPolicy: "WEIGHTED_ROUND_ROBIN",
///     customMetrics: [{
///         name: "orca.application_utilization",
///         dryRun: false,
///     }],
///     backends: [{
///         group: defaultNetworkEndpointGroup.id,
///         balancingMode: "CUSTOM_METRICS",
///         customMetrics: [
///             {
///                 name: "orca.cpu_utilization",
///                 maxUtilization: 0.9,
///                 dryRun: true,
///             },
///             {
///                 name: "orca.named_metrics.foo",
///                 dryRun: false,
///             },
///         ],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default", name="network")
/// # Zonal NEG with GCE_VM_IP_PORT
/// default_network_endpoint_group = gcp.compute.NetworkEndpointGroup("default",
///     name="network-endpoint",
///     network=default.id,
///     default_port=90,
///     zone="us-central1-a",
///     network_endpoint_type="GCE_VM_IP_PORT")
/// health_check = gcp.compute.HealthCheck("health_check",
///     name="rbs-health-check",
///     http_health_check={
///         "port": 80,
///     })
/// default_region_backend_service = gcp.compute.RegionBackendService("default",
///     region="us-central1",
///     name="region-service",
///     health_checks=health_check.id,
///     load_balancing_scheme="INTERNAL_MANAGED",
///     locality_lb_policy="WEIGHTED_ROUND_ROBIN",
///     custom_metrics=[{
///         "name": "orca.application_utilization",
///         "dry_run": False,
///     }],
///     backends=[{
///         "group": default_network_endpoint_group.id,
///         "balancing_mode": "CUSTOM_METRICS",
///         "custom_metrics": [
///             {
///                 "name": "orca.cpu_utilization",
///                 "max_utilization": 0.9,
///                 "dry_run": True,
///             },
///             {
///                 "name": "orca.named_metrics.foo",
///                 "dry_run": False,
///             },
///         ],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "network",
///     });
///
///     // Zonal NEG with GCE_VM_IP_PORT
///     var defaultNetworkEndpointGroup = new Gcp.Compute.NetworkEndpointGroup("default", new()
///     {
///         Name = "network-endpoint",
///         Network = @default.Id,
///         DefaultPort = 90,
///         Zone = "us-central1-a",
///         NetworkEndpointType = "GCE_VM_IP_PORT",
///     });
///
///     var healthCheck = new Gcp.Compute.HealthCheck("health_check", new()
///     {
///         Name = "rbs-health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var defaultRegionBackendService = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Region = "us-central1",
///         Name = "region-service",
///         HealthChecks = healthCheck.Id,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         LocalityLbPolicy = "WEIGHTED_ROUND_ROBIN",
///         CustomMetrics = new[]
///         {
///             new Gcp.Compute.Inputs.RegionBackendServiceCustomMetricArgs
///             {
///                 Name = "orca.application_utilization",
///                 DryRun = false,
///             },
///         },
///         Backends = new[]
///         {
///             new Gcp.Compute.Inputs.RegionBackendServiceBackendArgs
///             {
///                 Group = defaultNetworkEndpointGroup.Id,
///                 BalancingMode = "CUSTOM_METRICS",
///                 CustomMetrics = new[]
///                 {
///                     new Gcp.Compute.Inputs.RegionBackendServiceBackendCustomMetricArgs
///                     {
///                         Name = "orca.cpu_utilization",
///                         MaxUtilization = 0.9,
///                         DryRun = true,
///                     },
///                     new Gcp.Compute.Inputs.RegionBackendServiceBackendCustomMetricArgs
///                     {
///                         Name = "orca.named_metrics.foo",
///                         DryRun = false,
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Zonal NEG with GCE_VM_IP_PORT
/// 		defaultNetworkEndpointGroup, err := compute.NewNetworkEndpointGroup(ctx, "default", &compute.NetworkEndpointGroupArgs{
/// 			Name:                pulumi.String("network-endpoint"),
/// 			Network:             _default.ID(),
/// 			DefaultPort:         pulumi.Int(90),
/// 			Zone:                pulumi.String("us-central1-a"),
/// 			NetworkEndpointType: pulumi.String("GCE_VM_IP_PORT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		healthCheck, err := compute.NewHealthCheck(ctx, "health_check", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("rbs-health-check"),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("region-service"),
/// 			HealthChecks:        healthCheck.ID(),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			LocalityLbPolicy:    pulumi.String("WEIGHTED_ROUND_ROBIN"),
/// 			CustomMetrics: compute.RegionBackendServiceCustomMetricArray{
/// 				&compute.RegionBackendServiceCustomMetricArgs{
/// 					Name:   pulumi.String("orca.application_utilization"),
/// 					DryRun: pulumi.Bool(false),
/// 				},
/// 			},
/// 			Backends: compute.RegionBackendServiceBackendArray{
/// 				&compute.RegionBackendServiceBackendArgs{
/// 					Group:         defaultNetworkEndpointGroup.ID(),
/// 					BalancingMode: pulumi.String("CUSTOM_METRICS"),
/// 					CustomMetrics: compute.RegionBackendServiceBackendCustomMetricArray{
/// 						&compute.RegionBackendServiceBackendCustomMetricArgs{
/// 							Name:           pulumi.String("orca.cpu_utilization"),
/// 							MaxUtilization: pulumi.Float64(0.9),
/// 							DryRun:         pulumi.Bool(true),
/// 						},
/// 						&compute.RegionBackendServiceBackendCustomMetricArgs{
/// 							Name:   pulumi.String("orca.named_metrics.foo"),
/// 							DryRun: pulumi.Bool(false),
/// 						},
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.NetworkEndpointGroup;
/// import com.pulumi.gcp.compute.NetworkEndpointGroupArgs;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceCustomMetricArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceBackendArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("network")
///             .build());
///
///         // Zonal NEG with GCE_VM_IP_PORT
///         var defaultNetworkEndpointGroup = new NetworkEndpointGroup("defaultNetworkEndpointGroup", NetworkEndpointGroupArgs.builder()
///             .name("network-endpoint")
///             .network(default_.id())
///             .defaultPort(90)
///             .zone("us-central1-a")
///             .networkEndpointType("GCE_VM_IP_PORT")
///             .build());
///
///         var healthCheck = new HealthCheck("healthCheck", HealthCheckArgs.builder()
///             .name("rbs-health-check")
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var defaultRegionBackendService = new RegionBackendService("defaultRegionBackendService", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("region-service")
///             .healthChecks(healthCheck.id())
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .localityLbPolicy("WEIGHTED_ROUND_ROBIN")
///             .customMetrics(RegionBackendServiceCustomMetricArgs.builder()
///                 .name("orca.application_utilization")
///                 .dryRun(false)
///                 .build())
///             .backends(RegionBackendServiceBackendArgs.builder()
///                 .group(defaultNetworkEndpointGroup.id())
///                 .balancingMode("CUSTOM_METRICS")
///                 .customMetrics(
///                     RegionBackendServiceBackendCustomMetricArgs.builder()
///                         .name("orca.cpu_utilization")
///                         .maxUtilization(0.9)
///                         .dryRun(true)
///                         .build(),
///                     RegionBackendServiceBackendCustomMetricArgs.builder()
///                         .name("orca.named_metrics.foo")
///                         .dryRun(false)
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: network
///   # Zonal NEG with GCE_VM_IP_PORT
///   defaultNetworkEndpointGroup:
///     type: gcp:compute:NetworkEndpointGroup
///     name: default
///     properties:
///       name: network-endpoint
///       network: ${default.id}
///       defaultPort: '90'
///       zone: us-central1-a
///       networkEndpointType: GCE_VM_IP_PORT
///   defaultRegionBackendService:
///     type: gcp:compute:RegionBackendService
///     name: default
///     properties:
///       region: us-central1
///       name: region-service
///       healthChecks: ${healthCheck.id}
///       loadBalancingScheme: INTERNAL_MANAGED
///       localityLbPolicy: WEIGHTED_ROUND_ROBIN
///       customMetrics:
///         - name: orca.application_utilization
///           dryRun: false
///       backends:
///         - group: ${defaultNetworkEndpointGroup.id}
///           balancingMode: CUSTOM_METRICS
///           customMetrics:
///             - name: orca.cpu_utilization
///               maxUtilization: 0.9
///               dryRun: true
///             - name: orca.named_metrics.foo
///               dryRun: false
///   healthCheck:
///     type: gcp:compute:HealthCheck
///     name: health_check
///     properties:
///       name: rbs-health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Region Backend Service Dynamic Forwarding
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RegionBackendService("default", {
///     name: "region-service",
///     region: "us-central1",
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     dynamicForwarding: {
///         ipPortSelection: {
///             enabled: true,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.RegionBackendService("default",
///     name="region-service",
///     region="us-central1",
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     dynamic_forwarding={
///         "ip_port_selection": {
///             "enabled": True,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Name = "region-service",
///         Region = "us-central1",
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         DynamicForwarding = new Gcp.Compute.Inputs.RegionBackendServiceDynamicForwardingArgs
///         {
///             IpPortSelection = new Gcp.Compute.Inputs.RegionBackendServiceDynamicForwardingIpPortSelectionArgs
///             {
///                 Enabled = true,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Name:                pulumi.String("region-service"),
/// 			Region:              pulumi.String("us-central1"),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			DynamicForwarding: &compute.RegionBackendServiceDynamicForwardingArgs{
/// 				IpPortSelection: &compute.RegionBackendServiceDynamicForwardingIpPortSelectionArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
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
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceDynamicForwardingArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceDynamicForwardingIpPortSelectionArgs;
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
///         var default_ = new RegionBackendService("default", RegionBackendServiceArgs.builder()
///             .name("region-service")
///             .region("us-central1")
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .dynamicForwarding(RegionBackendServiceDynamicForwardingArgs.builder()
///                 .ipPortSelection(RegionBackendServiceDynamicForwardingIpPortSelectionArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:RegionBackendService
///     properties:
///       name: region-service
///       region: us-central1
///       loadBalancingScheme: EXTERNAL_MANAGED
///       dynamicForwarding:
///         ipPortSelection:
///           enabled: true
/// ```
///
/// ### Region Backend Service Ha Policy
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {name: "rbs-net"});
/// const defaultRegionBackendService = new gcp.compute.RegionBackendService("default", {
///     region: "us-central1",
///     name: "region-service",
///     protocol: "UDP",
///     loadBalancingScheme: "EXTERNAL",
///     network: _default.id,
///     haPolicy: {
///         fastIpMove: "GARP_RA",
///     },
///     connectionDrainingTimeoutSec: 0,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default", name="rbs-net")
/// default_region_backend_service = gcp.compute.RegionBackendService("default",
///     region="us-central1",
///     name="region-service",
///     protocol="UDP",
///     load_balancing_scheme="EXTERNAL",
///     network=default.id,
///     ha_policy={
///         "fast_ip_move": "GARP_RA",
///     },
///     connection_draining_timeout_sec=0)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "rbs-net",
///     });
///
///     var defaultRegionBackendService = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Region = "us-central1",
///         Name = "region-service",
///         Protocol = "UDP",
///         LoadBalancingScheme = "EXTERNAL",
///         Network = @default.Id,
///         HaPolicy = new Gcp.Compute.Inputs.RegionBackendServiceHaPolicyArgs
///         {
///             FastIpMove = "GARP_RA",
///         },
///         ConnectionDrainingTimeoutSec = 0,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("rbs-net"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("region-service"),
/// 			Protocol:            pulumi.String("UDP"),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL"),
/// 			Network:             _default.ID(),
/// 			HaPolicy: &compute.RegionBackendServiceHaPolicyArgs{
/// 				FastIpMove: pulumi.String("GARP_RA"),
/// 			},
/// 			ConnectionDrainingTimeoutSec: pulumi.Int(0),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceHaPolicyArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("rbs-net")
///             .build());
///
///         var defaultRegionBackendService = new RegionBackendService("defaultRegionBackendService", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("region-service")
///             .protocol("UDP")
///             .loadBalancingScheme("EXTERNAL")
///             .network(default_.id())
///             .haPolicy(RegionBackendServiceHaPolicyArgs.builder()
///                 .fastIpMove("GARP_RA")
///                 .build())
///             .connectionDrainingTimeoutSec(0)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: rbs-net
///   defaultRegionBackendService:
///     type: gcp:compute:RegionBackendService
///     name: default
///     properties:
///       region: us-central1
///       name: region-service
///       protocol: UDP
///       loadBalancingScheme: EXTERNAL
///       network: ${default.id}
///       haPolicy:
///         fastIpMove: GARP_RA
///       connectionDrainingTimeoutSec: 0
/// ```
///
/// ### Region Backend Service Ha Policy Manual Leader
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "rbs-net",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "rbs-subnet",
///     ipCidrRange: "10.1.2.0/24",
///     region: "us-central1",
///     network: _default.id,
/// });
/// const myImage = gcp.compute.getImage({
///     family: "debian-12",
///     project: "debian-cloud",
/// });
/// const endpoint_instance = new gcp.compute.Instance("endpoint-instance", {
///     networkInterfaces: [{
///         accessConfigs: [{}],
///         subnetwork: defaultSubnetwork.id,
///     }],
///     name: "rbs-instance",
///     machineType: "e2-medium",
///     bootDisk: {
///         initializeParams: {
///             image: myImage.then(myImage => myImage.selfLink),
///         },
///     },
/// });
/// const neg = new gcp.compute.NetworkEndpointGroup("neg", {
///     name: "rbs-neg",
///     networkEndpointType: "GCE_VM_IP",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     zone: "us-central1-a",
/// });
/// const endpoint = new gcp.compute.NetworkEndpoint("endpoint", {
///     networkEndpointGroup: neg.name,
///     instance: endpoint_instance.name,
///     ipAddress: endpoint_instance.networkInterfaces.apply(networkInterfaces => networkInterfaces[0].networkIp),
/// });
/// const defaultRegionBackendService = new gcp.compute.RegionBackendService("default", {
///     region: "us-central1",
///     name: "region-service",
///     protocol: "UDP",
///     loadBalancingScheme: "EXTERNAL",
///     network: _default.id,
///     backends: [{
///         group: neg.selfLink,
///         balancingMode: "CONNECTION",
///     }],
///     haPolicy: {
///         fastIpMove: "GARP_RA",
///         leader: {
///             backendGroup: neg.selfLink,
///             networkEndpoint: {
///                 instance: endpoint_instance.name,
///             },
///         },
///     },
///     connectionDrainingTimeoutSec: 0,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="rbs-net",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="rbs-subnet",
///     ip_cidr_range="10.1.2.0/24",
///     region="us-central1",
///     network=default.id)
/// my_image = gcp.compute.get_image(family="debian-12",
///     project="debian-cloud")
/// endpoint_instance = gcp.compute.Instance("endpoint-instance",
///     network_interfaces=[{
///         "access_configs": [{}],
///         "subnetwork": default_subnetwork.id,
///     }],
///     name="rbs-instance",
///     machine_type="e2-medium",
///     boot_disk={
///         "initialize_params": {
///             "image": my_image.self_link,
///         },
///     })
/// neg = gcp.compute.NetworkEndpointGroup("neg",
///     name="rbs-neg",
///     network_endpoint_type="GCE_VM_IP",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     zone="us-central1-a")
/// endpoint = gcp.compute.NetworkEndpoint("endpoint",
///     network_endpoint_group=neg.name,
///     instance=endpoint_instance.name,
///     ip_address=endpoint_instance.network_interfaces[0].network_ip)
/// default_region_backend_service = gcp.compute.RegionBackendService("default",
///     region="us-central1",
///     name="region-service",
///     protocol="UDP",
///     load_balancing_scheme="EXTERNAL",
///     network=default.id,
///     backends=[{
///         "group": neg.self_link,
///         "balancing_mode": "CONNECTION",
///     }],
///     ha_policy={
///         "fast_ip_move": "GARP_RA",
///         "leader": {
///             "backend_group": neg.self_link,
///             "network_endpoint": {
///                 "instance": endpoint_instance.name,
///             },
///         },
///     },
///     connection_draining_timeout_sec=0)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "rbs-net",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "rbs-subnet",
///         IpCidrRange = "10.1.2.0/24",
///         Region = "us-central1",
///         Network = @default.Id,
///     });
///
///     var myImage = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-12",
///         Project = "debian-cloud",
///     });
///
///     var endpoint_instance = new Gcp.Compute.Instance("endpoint-instance", new()
///     {
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 AccessConfigs = new[]
///                 {
///                     null,
///                 },
///                 Subnetwork = defaultSubnetwork.Id,
///             },
///         },
///         Name = "rbs-instance",
///         MachineType = "e2-medium",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = myImage.Apply(getImageResult => getImageResult.SelfLink),
///             },
///         },
///     });
///
///     var neg = new Gcp.Compute.NetworkEndpointGroup("neg", new()
///     {
///         Name = "rbs-neg",
///         NetworkEndpointType = "GCE_VM_IP",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Zone = "us-central1-a",
///     });
///
///     var endpoint = new Gcp.Compute.NetworkEndpoint("endpoint", new()
///     {
///         NetworkEndpointGroup = neg.Name,
///         Instance = endpoint_instance.Name,
///         IpAddress = endpoint_instance.NetworkInterfaces.Apply(networkInterfaces => networkInterfaces[0].NetworkIp),
///     });
///
///     var defaultRegionBackendService = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Region = "us-central1",
///         Name = "region-service",
///         Protocol = "UDP",
///         LoadBalancingScheme = "EXTERNAL",
///         Network = @default.Id,
///         Backends = new[]
///         {
///             new Gcp.Compute.Inputs.RegionBackendServiceBackendArgs
///             {
///                 Group = neg.SelfLink,
///                 BalancingMode = "CONNECTION",
///             },
///         },
///         HaPolicy = new Gcp.Compute.Inputs.RegionBackendServiceHaPolicyArgs
///         {
///             FastIpMove = "GARP_RA",
///             Leader = new Gcp.Compute.Inputs.RegionBackendServiceHaPolicyLeaderArgs
///             {
///                 BackendGroup = neg.SelfLink,
///                 NetworkEndpoint = new Gcp.Compute.Inputs.RegionBackendServiceHaPolicyLeaderNetworkEndpointArgs
///                 {
///                     Instance = endpoint_instance.Name,
///                 },
///             },
///         },
///         ConnectionDrainingTimeoutSec = 0,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("rbs-net"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("rbs-subnet"),
/// 			IpCidrRange: pulumi.String("10.1.2.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myImage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-12"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		endpoint_instance, err := compute.NewInstance(ctx, "endpoint-instance", &compute.InstanceArgs{
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// 					},
/// 					Subnetwork: defaultSubnetwork.ID(),
/// 				},
/// 			},
/// 			Name:        pulumi.String("rbs-instance"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String(myImage.SelfLink),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		neg, err := compute.NewNetworkEndpointGroup(ctx, "neg", &compute.NetworkEndpointGroupArgs{
/// 			Name:                pulumi.String("rbs-neg"),
/// 			NetworkEndpointType: pulumi.String("GCE_VM_IP"),
/// 			Network:             _default.ID(),
/// 			Subnetwork:          defaultSubnetwork.ID(),
/// 			Zone:                pulumi.String("us-central1-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkEndpoint(ctx, "endpoint", &compute.NetworkEndpointArgs{
/// 			NetworkEndpointGroup: neg.Name,
/// 			Instance:             endpoint_instance.Name,
/// 			IpAddress: pulumi.String(endpoint_instance.NetworkInterfaces.ApplyT(func(networkInterfaces []compute.InstanceNetworkInterface) (*string, error) {
/// 				return &networkInterfaces[0].NetworkIp, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("us-central1"),
/// 			Name:                pulumi.String("region-service"),
/// 			Protocol:            pulumi.String("UDP"),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL"),
/// 			Network:             _default.ID(),
/// 			Backends: compute.RegionBackendServiceBackendArray{
/// 				&compute.RegionBackendServiceBackendArgs{
/// 					Group:         neg.SelfLink,
/// 					BalancingMode: pulumi.String("CONNECTION"),
/// 				},
/// 			},
/// 			HaPolicy: &compute.RegionBackendServiceHaPolicyArgs{
/// 				FastIpMove: pulumi.String("GARP_RA"),
/// 				Leader: &compute.RegionBackendServiceHaPolicyLeaderArgs{
/// 					BackendGroup: neg.SelfLink,
/// 					NetworkEndpoint: &compute.RegionBackendServiceHaPolicyLeaderNetworkEndpointArgs{
/// 						Instance: endpoint_instance.Name,
/// 					},
/// 				},
/// 			},
/// 			ConnectionDrainingTimeoutSec: pulumi.Int(0),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.NetworkEndpointGroup;
/// import com.pulumi.gcp.compute.NetworkEndpointGroupArgs;
/// import com.pulumi.gcp.compute.NetworkEndpoint;
/// import com.pulumi.gcp.compute.NetworkEndpointArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceBackendArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceHaPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceHaPolicyLeaderArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceHaPolicyLeaderNetworkEndpointArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("rbs-net")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("rbs-subnet")
///             .ipCidrRange("10.1.2.0/24")
///             .region("us-central1")
///             .network(default_.id())
///             .build());
///
///         final var myImage = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-12")
///             .project("debian-cloud")
///             .build());
///
///         var endpoint_instance = new Instance("endpoint-instance", InstanceArgs.builder()
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
///                     .build())
///                 .subnetwork(defaultSubnetwork.id())
///                 .build())
///             .name("rbs-instance")
///             .machineType("e2-medium")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image(myImage.selfLink())
///                     .build())
///                 .build())
///             .build());
///
///         var neg = new NetworkEndpointGroup("neg", NetworkEndpointGroupArgs.builder()
///             .name("rbs-neg")
///             .networkEndpointType("GCE_VM_IP")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .zone("us-central1-a")
///             .build());
///
///         var endpoint = new NetworkEndpoint("endpoint", NetworkEndpointArgs.builder()
///             .networkEndpointGroup(neg.name())
///             .instance(endpoint_instance.name())
///             .ipAddress(endpoint_instance.networkInterfaces().applyValue(_networkInterfaces -> _networkInterfaces[0].networkIp()))
///             .build());
///
///         var defaultRegionBackendService = new RegionBackendService("defaultRegionBackendService", RegionBackendServiceArgs.builder()
///             .region("us-central1")
///             .name("region-service")
///             .protocol("UDP")
///             .loadBalancingScheme("EXTERNAL")
///             .network(default_.id())
///             .backends(RegionBackendServiceBackendArgs.builder()
///                 .group(neg.selfLink())
///                 .balancingMode("CONNECTION")
///                 .build())
///             .haPolicy(RegionBackendServiceHaPolicyArgs.builder()
///                 .fastIpMove("GARP_RA")
///                 .leader(RegionBackendServiceHaPolicyLeaderArgs.builder()
///                     .backendGroup(neg.selfLink())
///                     .networkEndpoint(RegionBackendServiceHaPolicyLeaderNetworkEndpointArgs.builder()
///                         .instance(endpoint_instance.name())
///                         .build())
///                     .build())
///                 .build())
///             .connectionDrainingTimeoutSec(0)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: rbs-net
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: rbs-subnet
///       ipCidrRange: 10.1.2.0/24
///       region: us-central1
///       network: ${default.id}
///   endpoint:
///     type: gcp:compute:NetworkEndpoint
///     properties:
///       networkEndpointGroup: ${neg.name}
///       instance: ${["endpoint-instance"].name}
///       ipAddress: ${["endpoint-instance"].networkInterfaces[0].networkIp}
///   endpoint-instance:
///     type: gcp:compute:Instance
///     properties:
///       networkInterfaces:
///         - accessConfigs:
///             - {}
///           subnetwork: ${defaultSubnetwork.id}
///       name: rbs-instance
///       machineType: e2-medium
///       bootDisk:
///         initializeParams:
///           image: ${myImage.selfLink}
///   neg:
///     type: gcp:compute:NetworkEndpointGroup
///     properties:
///       name: rbs-neg
///       networkEndpointType: GCE_VM_IP
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       zone: us-central1-a
///   defaultRegionBackendService:
///     type: gcp:compute:RegionBackendService
///     name: default
///     properties:
///       region: us-central1
///       name: region-service
///       protocol: UDP
///       loadBalancingScheme: EXTERNAL
///       network: ${default.id}
///       backends:
///         - group: ${neg.selfLink}
///           balancingMode: CONNECTION
///       haPolicy:
///         fastIpMove: GARP_RA
///         leader:
///           backendGroup: ${neg.selfLink}
///           networkEndpoint:
///             instance: ${["endpoint-instance"].name}
///       connectionDrainingTimeoutSec: 0
/// variables:
///   myImage:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-12
///         project: debian-cloud
/// ```
///
/// ### Region Backend Service Tls Settings
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultRegionHealthCheck = new gcp.compute.RegionHealthCheck("default", {
///     name: "health-check",
///     region: "europe-north1",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const defaultBackendAuthenticationConfig = new gcp.networksecurity.BackendAuthenticationConfig("default", {
///     name: "authentication",
///     location: "europe-north1",
///     wellKnownRoots: "PUBLIC_ROOTS",
/// });
/// const _default = new gcp.compute.RegionBackendService("default", {
///     region: "europe-north1",
///     name: "region-service",
///     healthChecks: defaultRegionHealthCheck.id,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     protocol: "HTTPS",
///     tlsSettings: {
///         sni: "example.com",
///         subjectAltNames: [
///             {
///                 dnsName: "example.com",
///             },
///             {
///                 uniformResourceIdentifier: "https://example.com",
///             },
///         ],
///         authenticationConfig: pulumi.interpolate`//networksecurity.googleapis.com/${defaultBackendAuthenticationConfig.id}`,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_region_health_check = gcp.compute.RegionHealthCheck("default",
///     name="health-check",
///     region="europe-north1",
///     http_health_check={
///         "port": 80,
///     })
/// default_backend_authentication_config = gcp.networksecurity.BackendAuthenticationConfig("default",
///     name="authentication",
///     location="europe-north1",
///     well_known_roots="PUBLIC_ROOTS")
/// default = gcp.compute.RegionBackendService("default",
///     region="europe-north1",
///     name="region-service",
///     health_checks=default_region_health_check.id,
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     protocol="HTTPS",
///     tls_settings={
///         "sni": "example.com",
///         "subject_alt_names": [
///             {
///                 "dns_name": "example.com",
///             },
///             {
///                 "uniform_resource_identifier": "https://example.com",
///             },
///         ],
///         "authentication_config": default_backend_authentication_config.id.apply(lambda id: f"//networksecurity.googleapis.com/{id}"),
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultRegionHealthCheck = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Name = "health-check",
///         Region = "europe-north1",
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var defaultBackendAuthenticationConfig = new Gcp.NetworkSecurity.BackendAuthenticationConfig("default", new()
///     {
///         Name = "authentication",
///         Location = "europe-north1",
///         WellKnownRoots = "PUBLIC_ROOTS",
///     });
///
///     var @default = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Region = "europe-north1",
///         Name = "region-service",
///         HealthChecks = defaultRegionHealthCheck.Id,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         Protocol = "HTTPS",
///         TlsSettings = new Gcp.Compute.Inputs.RegionBackendServiceTlsSettingsArgs
///         {
///             Sni = "example.com",
///             SubjectAltNames = new[]
///             {
///                 new Gcp.Compute.Inputs.RegionBackendServiceTlsSettingsSubjectAltNameArgs
///                 {
///                     DnsName = "example.com",
///                 },
///                 new Gcp.Compute.Inputs.RegionBackendServiceTlsSettingsSubjectAltNameArgs
///                 {
///                     UniformResourceIdentifier = "https://example.com",
///                 },
///             },
///             AuthenticationConfig = defaultBackendAuthenticationConfig.Id.Apply(id => $"//networksecurity.googleapis.com/{id}"),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultRegionHealthCheck, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Name:   pulumi.String("health-check"),
/// 			Region: pulumi.String("europe-north1"),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBackendAuthenticationConfig, err := networksecurity.NewBackendAuthenticationConfig(ctx, "default", &networksecurity.BackendAuthenticationConfigArgs{
/// 			Name:           pulumi.String("authentication"),
/// 			Location:       pulumi.String("europe-north1"),
/// 			WellKnownRoots: pulumi.String("PUBLIC_ROOTS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Region:              pulumi.String("europe-north1"),
/// 			Name:                pulumi.String("region-service"),
/// 			HealthChecks:        defaultRegionHealthCheck.ID(),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			Protocol:            pulumi.String("HTTPS"),
/// 			TlsSettings: &compute.RegionBackendServiceTlsSettingsArgs{
/// 				Sni: pulumi.String("example.com"),
/// 				SubjectAltNames: compute.RegionBackendServiceTlsSettingsSubjectAltNameArray{
/// 					&compute.RegionBackendServiceTlsSettingsSubjectAltNameArgs{
/// 						DnsName: pulumi.String("example.com"),
/// 					},
/// 					&compute.RegionBackendServiceTlsSettingsSubjectAltNameArgs{
/// 						UniformResourceIdentifier: pulumi.String("https://example.com"),
/// 					},
/// 				},
/// 				AuthenticationConfig: defaultBackendAuthenticationConfig.ID().ApplyT(func(id string) (string, error) {
/// 					return fmt.Sprintf("//networksecurity.googleapis.com/%v", id), nil
/// 				}).(pulumi.StringOutput),
/// 			},
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
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.networksecurity.BackendAuthenticationConfig;
/// import com.pulumi.gcp.networksecurity.BackendAuthenticationConfigArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceTlsSettingsArgs;
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
///         var defaultRegionHealthCheck = new RegionHealthCheck("defaultRegionHealthCheck", RegionHealthCheckArgs.builder()
///             .name("health-check")
///             .region("europe-north1")
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var defaultBackendAuthenticationConfig = new BackendAuthenticationConfig("defaultBackendAuthenticationConfig", BackendAuthenticationConfigArgs.builder()
///             .name("authentication")
///             .location("europe-north1")
///             .wellKnownRoots("PUBLIC_ROOTS")
///             .build());
///
///         var default_ = new RegionBackendService("default", RegionBackendServiceArgs.builder()
///             .region("europe-north1")
///             .name("region-service")
///             .healthChecks(defaultRegionHealthCheck.id())
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .protocol("HTTPS")
///             .tlsSettings(RegionBackendServiceTlsSettingsArgs.builder()
///                 .sni("example.com")
///                 .subjectAltNames(
///                     RegionBackendServiceTlsSettingsSubjectAltNameArgs.builder()
///                         .dnsName("example.com")
///                         .build(),
///                     RegionBackendServiceTlsSettingsSubjectAltNameArgs.builder()
///                         .uniformResourceIdentifier("https://example.com")
///                         .build())
///                 .authenticationConfig(defaultBackendAuthenticationConfig.id().applyValue(_id -> String.format("//networksecurity.googleapis.com/%s", _id)))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:RegionBackendService
///     properties:
///       region: europe-north1
///       name: region-service
///       healthChecks: ${defaultRegionHealthCheck.id}
///       loadBalancingScheme: EXTERNAL_MANAGED
///       protocol: HTTPS
///       tlsSettings:
///         sni: example.com
///         subjectAltNames:
///           - dnsName: example.com
///           - uniformResourceIdentifier: https://example.com
///         authenticationConfig: //networksecurity.googleapis.com/${defaultBackendAuthenticationConfig.id}
///   defaultRegionHealthCheck:
///     type: gcp:compute:RegionHealthCheck
///     name: default
///     properties:
///       name: health-check
///       region: europe-north1
///       httpHealthCheck:
///         port: 80
///   defaultBackendAuthenticationConfig:
///     type: gcp:networksecurity:BackendAuthenticationConfig
///     name: default
///     properties:
///       name: authentication
///       location: europe-north1
///       wellKnownRoots: PUBLIC_ROOTS
/// ```
///
///
/// ## Import
///
/// RegionBackendService can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/backendServices/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionBackendService can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionBackendService:RegionBackendService default projects/{{project}}/regions/{{region}}/backendServices/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionBackendService:RegionBackendService default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionBackendService:RegionBackendService default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionBackendService:RegionBackendService default {{name}}
/// ```
class RegionBackendService extends pulumi.CustomResource {
  /// Lifetime of cookies in seconds if session_affinity is
  /// GENERATED_COOKIE. If set to 0, the cookie is non-persistent and lasts
  /// only until the end of the browser session (or equivalent). The
  /// maximum allowed value for TTL is one day.
  /// When the load balancing scheme is INTERNAL, this field is not used.
  late final pulumi.Output<int?> affinityCookieTtlSec;
  /// The set of backends that serve this RegionBackendService.
  /// Structure is documented below.
  late final pulumi.Output<List<RegionBackendServiceBackend>?> backends;
  /// Cloud CDN configuration for this BackendService.
  /// Structure is documented below.
  late final pulumi.Output<RegionBackendServiceCdnPolicy> cdnPolicy;
  /// Settings controlling the volume of connections to a backend service. This field
  /// is applicable only when the `load_balancing_scheme` is set to INTERNAL_MANAGED
  /// and the `protocol` is set to HTTP, HTTPS, HTTP2 or H2C.
  /// Structure is documented below.
  late final pulumi.Output<RegionBackendServiceCircuitBreakers?> circuitBreakers;
  /// Time for which instance will be drained (not accept new
  /// connections, but still work to finish started).
  late final pulumi.Output<int?> connectionDrainingTimeoutSec;
  /// Connection Tracking configuration for this BackendService.
  /// This is available only for Layer 4 Internal Load Balancing and
  /// Network Load Balancing.
  /// Structure is documented below.
  late final pulumi.Output<RegionBackendServiceConnectionTrackingPolicy?> connectionTrackingPolicy;
  /// Consistent Hash-based load balancing can be used to provide soft session
  /// affinity based on HTTP headers, cookies or other properties. This load balancing
  /// policy is applicable only for HTTP connections. The affinity to a particular
  /// destination host will be lost when one or more hosts are added/removed from the
  /// destination service. This field specifies parameters that control consistent
  /// hashing.
  /// This field only applies when all of the following are true -
  late final pulumi.Output<RegionBackendServiceConsistentHash?> consistentHash;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// List of custom metrics that are used for the WEIGHTED_ROUND_ROBIN locality_lb_policy.
  /// Structure is documented below.
  late final pulumi.Output<List<RegionBackendServiceCustomMetric>?> customMetrics;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// Dynamic forwarding configuration. This field is used to configure the backend service with dynamic forwarding
  /// feature which together with Service Extension allows customized and complex routing logic.
  /// Structure is documented below.
  late final pulumi.Output<RegionBackendServiceDynamicForwarding?> dynamicForwarding;
  /// If true, enable Cloud CDN for this RegionBackendService.
  late final pulumi.Output<bool?> enableCdn;
  /// Policy for failovers.
  /// Structure is documented below.
  late final pulumi.Output<RegionBackendServiceFailoverPolicy?> failoverPolicy;
  /// Fingerprint of this resource. A hash of the contents stored in this
  /// object. This field is used in optimistic locking.
  late final pulumi.Output<String> fingerprint;
  /// The unique identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<int> generatedId;
  /// Configures self-managed High Availability (HA) for External and Internal Protocol Forwarding.
  /// The backends of this regional backend service must only specify zonal network endpoint groups
  /// (NEGs) of type GCE_VM_IP. Note that haPolicy is not for load balancing, and therefore cannot
  /// be specified with sessionAffinity, connectionTrackingPolicy, and failoverPolicy. haPolicy
  /// requires customers to be responsible for tracking backend endpoint health and electing a
  /// leader among the healthy endpoints. Therefore, haPolicy cannot be specified with healthChecks.
  /// haPolicy can only be specified for External Passthrough Network Load Balancers and Internal
  /// Passthrough Network Load Balancers.
  /// Structure is documented below.
  late final pulumi.Output<RegionBackendServiceHaPolicy?> haPolicy;
  /// The set of URLs to HealthCheck resources for health checking
  /// this RegionBackendService. Currently at most one health
  /// check can be specified.
  /// A health check must be specified unless the backend service uses an internet
  /// or serverless NEG as a backend.
  late final pulumi.Output<String?> healthChecks;
  /// Settings for enabling Cloud Identity Aware Proxy.
  /// If OAuth client is not set, Google-managed OAuth client is used.
  /// Structure is documented below.
  late final pulumi.Output<RegionBackendServiceIap> iap;
  /// Specifies preference of traffic to the backend (from the proxy and from the client for proxyless gRPC).
  /// Possible values are: `IPV4_ONLY`, `PREFER_IPV6`, `IPV6_ONLY`.
  late final pulumi.Output<String?> ipAddressSelectionPolicy;
  /// Indicates what kind of load balancing this regional backend service
  /// will be used for. A backend service created for one type of load
  /// balancing cannot be used with the other(s). For more information, refer to
  /// [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service).
  /// Default value is `INTERNAL`.
  /// Possible values are: `EXTERNAL`, `EXTERNAL_MANAGED`, `INTERNAL`, `INTERNAL_MANAGED`.
  late final pulumi.Output<String?> loadBalancingScheme;
  /// The load balancing algorithm used within the scope of the locality.
  /// The possible values are:
  /// * `ROUND_ROBIN`: This is a simple policy in which each healthy backend
  /// is selected in round robin order.
  /// * `LEAST_REQUEST`: An O(1) algorithm which selects two random healthy
  /// hosts and picks the host which has fewer active requests.
  /// * `RING_HASH`: The ring/modulo hash load balancer implements consistent
  /// hashing to backends. The algorithm has the property that the
  /// addition/removal of a host from a set of N hosts only affects
  /// 1/N of the requests.
  /// * `RANDOM`: The load balancer selects a random healthy host.
  /// * `ORIGINAL_DESTINATION`: Backend host is selected based on the client
  /// connection metadata, i.e., connections are opened
  /// to the same address as the destination address of
  /// the incoming connection before the connection
  /// was redirected to the load balancer.
  /// * `MAGLEV`: used as a drop in replacement for the ring hash load balancer.
  /// Maglev is not as stable as ring hash but has faster table lookup
  /// build times and host selection times. For more information about
  /// Maglev, refer to https://ai.google/research/pubs/pub44824
  /// * `WEIGHTED_MAGLEV`: Per-instance weighted Load Balancing via health check
  /// reported weights. Only applicable to loadBalancingScheme
  /// EXTERNAL. If set, the Backend Service must
  /// configure a non legacy HTTP-based Health Check, and
  /// health check replies are expected to contain
  /// non-standard HTTP response header field
  /// X-Load-Balancing-Endpoint-Weight to specify the
  /// per-instance weights. If set, Load Balancing is weight
  /// based on the per-instance weights reported in the last
  /// processed health check replies, as long as every
  /// instance either reported a valid weight or had
  /// UNAVAILABLE_WEIGHT. Otherwise, Load Balancing remains
  /// equal-weight.
  /// * `WEIGHTED_ROUND_ROBIN`: Per-endpoint weighted round-robin Load Balancing using weights computed
  /// from Backend reported Custom Metrics. If set, the Backend Service
  /// responses are expected to contain non-standard HTTP response header field
  /// X-Endpoint-Load-Metrics. The reported metrics
  /// to use for computing the weights are specified via the
  /// backends[].customMetrics fields.
  /// locality_lb_policy is applicable to either:
  /// * A regional backend service with the service_protocol set to HTTP, HTTPS, HTTP2 or H2C,
  /// and loadBalancingScheme set to INTERNAL_MANAGED.
  /// * A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  /// * A regional backend service with loadBalancingScheme set to EXTERNAL (External Network
  /// Load Balancing). Only MAGLEV and WEIGHTED_MAGLEV values are possible for External
  /// Network Load Balancing. The default is MAGLEV.
  /// If session_affinity is not NONE, and locality_lb_policy is not set to MAGLEV, WEIGHTED_MAGLEV,
  /// or RING_HASH, session affinity settings will not take effect.
  /// Only ROUND_ROBIN and RING_HASH are supported when the backend service is referenced
  /// by a URL map that is bound to target gRPC proxy that has validate_for_proxyless
  /// field set to true.
  /// Possible values are: `ROUND_ROBIN`, `LEAST_REQUEST`, `RING_HASH`, `RANDOM`, `ORIGINAL_DESTINATION`, `MAGLEV`, `WEIGHTED_MAGLEV`, `WEIGHTED_ROUND_ROBIN`.
  late final pulumi.Output<String?> localityLbPolicy;
  /// This field denotes the logging options for the load balancer traffic served by this backend service.
  /// If logging is enabled, logs will be exported to Stackdriver.
  /// Structure is documented below.
  late final pulumi.Output<RegionBackendServiceLogConfig> logConfig;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// The URL of the network to which this backend service belongs.
  /// This field must be set for Internal Passthrough Network Load Balancers when the haPolicy is enabled, and for External Passthrough Network Load Balancers when the haPolicy fastIpMove is enabled.
  /// This field can only be specified when the load balancing scheme is set to INTERNAL, or when the load balancing scheme is set to EXTERNAL and haPolicy fastIpMove is enabled.
  /// Changes to this field force recreation of the resource.
  late final pulumi.Output<String?> network;
  /// Configures traffic steering properties of internal passthrough Network Load Balancers.
  /// Structure is documented below.
  late final pulumi.Output<RegionBackendServiceNetworkPassThroughLbTrafficPolicy?> networkPassThroughLbTrafficPolicy;
  /// Settings controlling eviction of unhealthy hosts from the load balancing pool.
  /// This field is applicable only when the `load_balancing_scheme` is set
  /// to INTERNAL_MANAGED and the `protocol` is set to HTTP, HTTPS, HTTP2 or H2C.
  /// Structure is documented below.
  late final pulumi.Output<RegionBackendServiceOutlierDetection?> outlierDetection;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  late final pulumi.Output<RegionBackendServiceParams?> params;
  /// A named port on a backend instance group representing the port for
  /// communication to the backend VMs in that group. Required when the
  /// loadBalancingScheme is EXTERNAL, EXTERNAL_MANAGED, INTERNAL_MANAGED, or INTERNAL_SELF_MANAGED
  /// and the backends are instance groups. The named port must be defined on each
  /// backend instance group. This parameter has no meaning if the backends are NEGs. API sets a
  /// default of "http" if not given.
  /// Must be omitted when the loadBalancingScheme is INTERNAL (Internal TCP/UDP Load Balancing).
  late final pulumi.Output<String> portName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The protocol this BackendService uses to communicate with backends.
  /// The default is HTTP. Possible values are HTTP, HTTPS, HTTP2, H2C, TCP, SSL, UDP
  /// or GRPC. Refer to the documentation for the load balancers or for Traffic Director
  /// for more information.
  /// Possible values are: `HTTP`, `HTTPS`, `HTTP2`, `TCP`, `SSL`, `UDP`, `GRPC`, `UNSPECIFIED`, `H2C`.
  late final pulumi.Output<String> protocol;
  /// The Region in which the created backend service should reside.
  /// If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;
  /// The security policy associated with this backend service.
  late final pulumi.Output<String?> securityPolicy;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// Type of session affinity to use. The default is NONE. Session affinity is
  /// not applicable if the protocol is UDP.
  /// Possible values are: `NONE`, `CLIENT_IP`, `CLIENT_IP_PORT_PROTO`, `CLIENT_IP_PROTO`, `GENERATED_COOKIE`, `HEADER_FIELD`, `HTTP_COOKIE`, `CLIENT_IP_NO_DESTINATION`, `STRONG_COOKIE_AFFINITY`.
  late final pulumi.Output<String> sessionAffinity;
  /// Describes the HTTP cookie used for stateful session affinity. This field is applicable and required if the sessionAffinity is set to STRONG_COOKIE_AFFINITY.
  /// Structure is documented below.
  late final pulumi.Output<RegionBackendServiceStrongSessionAffinityCookie?> strongSessionAffinityCookie;
  /// Subsetting configuration for this BackendService. Currently this is applicable only for Internal TCP/UDP load balancing and Internal HTTP(S) load balancing.
  /// Structure is documented below.
  late final pulumi.Output<RegionBackendServiceSubsetting?> subsetting;
  /// The backend service timeout has a different meaning depending on the type of load balancer.
  /// For more information see, [Backend service settings](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices).
  /// The default is 30 seconds.
  /// The full range of timeout values allowed goes from 1 through 2,147,483,647 seconds.
  late final pulumi.Output<int> timeoutSec;
  /// Configuration for Backend Authenticated TLS and mTLS. May only be specified when the backend protocol is SSL, HTTPS or HTTP2.
  /// Structure is documented below.
  late final pulumi.Output<RegionBackendServiceTlsSettings?> tlsSettings;

  /// Creates a new [RegionBackendService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionBackendService]. {@macro pulumi_compute_region_backend_service_region_backend_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionBackendService(
    String name, {
    RegionBackendServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionBackendService:RegionBackendService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.affinityCookieTtlSec = registerOutput<int?>('affinityCookieTtlSec');
    this.backends = registerOutput<List<RegionBackendServiceBackend>?>('backends');
    this.cdnPolicy = registerOutput<RegionBackendServiceCdnPolicy>('cdnPolicy');
    this.circuitBreakers = registerOutput<RegionBackendServiceCircuitBreakers?>('circuitBreakers');
    this.connectionDrainingTimeoutSec = registerOutput<int?>('connectionDrainingTimeoutSec');
    this.connectionTrackingPolicy = registerOutput<RegionBackendServiceConnectionTrackingPolicy?>('connectionTrackingPolicy');
    this.consistentHash = registerOutput<RegionBackendServiceConsistentHash?>('consistentHash');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.customMetrics = registerOutput<List<RegionBackendServiceCustomMetric>?>('customMetrics');
    this.description = registerOutput<String?>('description');
    this.dynamicForwarding = registerOutput<RegionBackendServiceDynamicForwarding?>('dynamicForwarding');
    this.enableCdn = registerOutput<bool?>('enableCdn');
    this.failoverPolicy = registerOutput<RegionBackendServiceFailoverPolicy?>('failoverPolicy');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.generatedId = registerOutput<int>('generatedId');
    this.haPolicy = registerOutput<RegionBackendServiceHaPolicy?>('haPolicy');
    this.healthChecks = registerOutput<String?>('healthChecks');
    this.iap = registerOutput<RegionBackendServiceIap>('iap');
    this.ipAddressSelectionPolicy = registerOutput<String?>('ipAddressSelectionPolicy');
    this.loadBalancingScheme = registerOutput<String?>('loadBalancingScheme');
    this.localityLbPolicy = registerOutput<String?>('localityLbPolicy');
    this.logConfig = registerOutput<RegionBackendServiceLogConfig>('logConfig');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String?>('network');
    this.networkPassThroughLbTrafficPolicy = registerOutput<RegionBackendServiceNetworkPassThroughLbTrafficPolicy?>('networkPassThroughLbTrafficPolicy');
    this.outlierDetection = registerOutput<RegionBackendServiceOutlierDetection?>('outlierDetection');
    this.params = registerOutput<RegionBackendServiceParams?>('params');
    this.portName = registerOutput<String>('portName');
    this.project = registerOutput<String>('project');
    this.protocol = registerOutput<String>('protocol');
    this.region = registerOutput<String>('region');
    this.securityPolicy = registerOutput<String?>('securityPolicy');
    this.selfLink = registerOutput<String>('selfLink');
    this.sessionAffinity = registerOutput<String>('sessionAffinity');
    this.strongSessionAffinityCookie = registerOutput<RegionBackendServiceStrongSessionAffinityCookie?>('strongSessionAffinityCookie');
    this.subsetting = registerOutput<RegionBackendServiceSubsetting?>('subsetting');
    this.timeoutSec = registerOutput<int>('timeoutSec');
    this.tlsSettings = registerOutput<RegionBackendServiceTlsSettings?>('tlsSettings');
  }
}
