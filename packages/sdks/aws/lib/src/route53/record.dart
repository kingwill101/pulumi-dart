import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_alias.dart';
import 'record_args.dart';
import 'record_cidr_routing_policy.dart';
import 'record_failover_routing_policy.dart';
import 'record_geolocation_routing_policy.dart';
import 'record_geoproximity_routing_policy.dart';
import 'record_latency_routing_policy.dart';
import 'record_state.dart';
import 'record_weighted_routing_policy.dart';

/// Provides a Route53 record resource.
///
/// ## Example Usage
///
/// ### Simple routing policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const www = new aws.route53.Record("www", {
///     zoneId: primary.zoneId,
///     name: "www.example.com",
///     type: aws.route53.RecordType.A,
///     ttl: 300,
///     records: [lb.publicIp],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// www = aws.route53.Record("www",
///     zone_id=primary["zoneId"],
///     name="www.example.com",
///     type=aws.route53.RecordType.A,
///     ttl=300,
///     records=[lb["publicIp"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var www = new Aws.Route53.Record("www", new()
///     {
///         ZoneId = primary.ZoneId,
///         Name = "www.example.com",
///         Type = Aws.Route53.RecordType.A,
///         Ttl = 300,
///         Records = new[]
///         {
///             lb.PublicIp,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := route53.NewRecord(ctx, "www", &route53.RecordArgs{
/// 			ZoneId: pulumi.Any(primary.ZoneId),
/// 			Name:   pulumi.String("www.example.com"),
/// 			Type:   pulumi.String(route53.RecordTypeA),
/// 			Ttl:    pulumi.Int(300),
/// 			Records: pulumi.StringArray{
/// 				lb.PublicIp,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_route53_record" "www" {
///   zone_id = primary.zoneId
///   name    = "www.example.com"
///   type    = "A"
///   ttl     = 300
///   records = [lb.publicIp]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var www = new Record("www", RecordArgs.builder()
///             .zoneId(primary.zoneId())
///             .name("www.example.com")
///             .type("A")
///             .ttl(300)
///             .records(lb.publicIp())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   www:
///     type: aws:route53:Record
///     properties:
///       zoneId: ${primary.zoneId}
///       name: www.example.com
///       type: A
///       ttl: 300
///       records:
///         - ${lb.publicIp}
/// ```
///
///
/// ### Weighted routing policy
///
/// Other routing policies are configured similarly. See [Amazon Route 53 Developer Guide](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html) for details.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const www_dev = new aws.route53.Record("www-dev", {
///     weightedRoutingPolicies: [{
///         weight: 10,
///     }],
///     zoneId: primary.zoneId,
///     name: "www",
///     type: aws.route53.RecordType.CNAME,
///     ttl: 5,
///     setIdentifier: "dev",
///     records: ["dev.example.com"],
/// });
/// const www_live = new aws.route53.Record("www-live", {
///     weightedRoutingPolicies: [{
///         weight: 90,
///     }],
///     zoneId: primary.zoneId,
///     name: "www",
///     type: aws.route53.RecordType.CNAME,
///     ttl: 5,
///     setIdentifier: "live",
///     records: ["live.example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// www_dev = aws.route53.Record("www-dev",
///     weighted_routing_policies=[{
///         "weight": 10,
///     }],
///     zone_id=primary["zoneId"],
///     name="www",
///     type=aws.route53.RecordType.CNAME,
///     ttl=5,
///     set_identifier="dev",
///     records=["dev.example.com"])
/// www_live = aws.route53.Record("www-live",
///     weighted_routing_policies=[{
///         "weight": 90,
///     }],
///     zone_id=primary["zoneId"],
///     name="www",
///     type=aws.route53.RecordType.CNAME,
///     ttl=5,
///     set_identifier="live",
///     records=["live.example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var www_dev = new Aws.Route53.Record("www-dev", new()
///     {
///         WeightedRoutingPolicies = new[]
///         {
///             new Aws.Route53.Inputs.RecordWeightedRoutingPolicyArgs
///             {
///                 Weight = 10,
///             },
///         },
///         ZoneId = primary.ZoneId,
///         Name = "www",
///         Type = Aws.Route53.RecordType.CNAME,
///         Ttl = 5,
///         SetIdentifier = "dev",
///         Records = new[]
///         {
///             "dev.example.com",
///         },
///     });
///
///     var www_live = new Aws.Route53.Record("www-live", new()
///     {
///         WeightedRoutingPolicies = new[]
///         {
///             new Aws.Route53.Inputs.RecordWeightedRoutingPolicyArgs
///             {
///                 Weight = 90,
///             },
///         },
///         ZoneId = primary.ZoneId,
///         Name = "www",
///         Type = Aws.Route53.RecordType.CNAME,
///         Ttl = 5,
///         SetIdentifier = "live",
///         Records = new[]
///         {
///             "live.example.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := route53.NewRecord(ctx, "www-dev", &route53.RecordArgs{
/// 			WeightedRoutingPolicies: route53.RecordWeightedRoutingPolicyArray{
/// 				&route53.RecordWeightedRoutingPolicyArgs{
/// 					Weight: pulumi.Int(10),
/// 				},
/// 			},
/// 			ZoneId:        pulumi.Any(primary.ZoneId),
/// 			Name:          pulumi.String("www"),
/// 			Type:          pulumi.String(route53.RecordTypeCNAME),
/// 			Ttl:           pulumi.Int(5),
/// 			SetIdentifier: pulumi.String("dev"),
/// 			Records: pulumi.StringArray{
/// 				pulumi.String("dev.example.com"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewRecord(ctx, "www-live", &route53.RecordArgs{
/// 			WeightedRoutingPolicies: route53.RecordWeightedRoutingPolicyArray{
/// 				&route53.RecordWeightedRoutingPolicyArgs{
/// 					Weight: pulumi.Int(90),
/// 				},
/// 			},
/// 			ZoneId:        pulumi.Any(primary.ZoneId),
/// 			Name:          pulumi.String("www"),
/// 			Type:          pulumi.String(route53.RecordTypeCNAME),
/// 			Ttl:           pulumi.Int(5),
/// 			SetIdentifier: pulumi.String("live"),
/// 			Records: pulumi.StringArray{
/// 				pulumi.String("live.example.com"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_route53_record" "www-dev" {
///   weighted_routing_policies {
///     weight = 10
///   }
///   zone_id        = primary.zoneId
///   name           = "www"
///   type           = "CNAME"
///   ttl            = 5
///   set_identifier = "dev"
///   records        = ["dev.example.com"]
/// }
/// resource "aws_route53_record" "www-live" {
///   weighted_routing_policies {
///     weight = 90
///   }
///   zone_id        = primary.zoneId
///   name           = "www"
///   type           = "CNAME"
///   ttl            = 5
///   set_identifier = "live"
///   records        = ["live.example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
/// import com.pulumi.aws.route53.inputs.RecordWeightedRoutingPolicyArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var www_dev = new Record("www-dev", RecordArgs.builder()
///             .weightedRoutingPolicies(RecordWeightedRoutingPolicyArgs.builder()
///                 .weight(10)
///                 .build())
///             .zoneId(primary.zoneId())
///             .name("www")
///             .type("CNAME")
///             .ttl(5)
///             .setIdentifier("dev")
///             .records("dev.example.com")
///             .build());
///
///         var www_live = new Record("www-live", RecordArgs.builder()
///             .weightedRoutingPolicies(RecordWeightedRoutingPolicyArgs.builder()
///                 .weight(90)
///                 .build())
///             .zoneId(primary.zoneId())
///             .name("www")
///             .type("CNAME")
///             .ttl(5)
///             .setIdentifier("live")
///             .records("live.example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   www-dev:
///     type: aws:route53:Record
///     properties:
///       weightedRoutingPolicies:
///         - weight: 10
///       zoneId: ${primary.zoneId}
///       name: www
///       type: CNAME
///       ttl: 5
///       setIdentifier: dev
///       records:
///         - dev.example.com
///   www-live:
///     type: aws:route53:Record
///     properties:
///       weightedRoutingPolicies:
///         - weight: 90
///       zoneId: ${primary.zoneId}
///       name: www
///       type: CNAME
///       ttl: 5
///       setIdentifier: live
///       records:
///         - live.example.com
/// ```
///
///
/// ### Geoproximity routing policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const www = new aws.route53.Record("www", {
///     geoproximityRoutingPolicy: {
///         coordinates: [{
///             latitude: "49.22",
///             longitude: "-74.01",
///         }],
///     },
///     zoneId: primary.zoneId,
///     name: "www.example.com",
///     type: aws.route53.RecordType.CNAME,
///     ttl: 300,
///     setIdentifier: "dev",
///     records: ["dev.example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// www = aws.route53.Record("www",
///     geoproximity_routing_policy={
///         "coordinates": [{
///             "latitude": "49.22",
///             "longitude": "-74.01",
///         }],
///     },
///     zone_id=primary["zoneId"],
///     name="www.example.com",
///     type=aws.route53.RecordType.CNAME,
///     ttl=300,
///     set_identifier="dev",
///     records=["dev.example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var www = new Aws.Route53.Record("www", new()
///     {
///         GeoproximityRoutingPolicy = new Aws.Route53.Inputs.RecordGeoproximityRoutingPolicyArgs
///         {
///             Coordinates = new[]
///             {
///                 new Aws.Route53.Inputs.RecordGeoproximityRoutingPolicyCoordinateArgs
///                 {
///                     Latitude = "49.22",
///                     Longitude = "-74.01",
///                 },
///             },
///         },
///         ZoneId = primary.ZoneId,
///         Name = "www.example.com",
///         Type = Aws.Route53.RecordType.CNAME,
///         Ttl = 300,
///         SetIdentifier = "dev",
///         Records = new[]
///         {
///             "dev.example.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := route53.NewRecord(ctx, "www", &route53.RecordArgs{
/// 			GeoproximityRoutingPolicy: &route53.RecordGeoproximityRoutingPolicyArgs{
/// 				Coordinates: route53.RecordGeoproximityRoutingPolicyCoordinateArray{
/// 					&route53.RecordGeoproximityRoutingPolicyCoordinateArgs{
/// 						Latitude:  pulumi.String("49.22"),
/// 						Longitude: pulumi.String("-74.01"),
/// 					},
/// 				},
/// 			},
/// 			ZoneId:        pulumi.Any(primary.ZoneId),
/// 			Name:          pulumi.String("www.example.com"),
/// 			Type:          pulumi.String(route53.RecordTypeCNAME),
/// 			Ttl:           pulumi.Int(300),
/// 			SetIdentifier: pulumi.String("dev"),
/// 			Records: pulumi.StringArray{
/// 				pulumi.String("dev.example.com"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_route53_record" "www" {
///   geoproximity_routing_policy = {
///     coordinates = [{
///       "latitude"  = "49.22"
///       "longitude" = "-74.01"
///     }]
///   }
///   zone_id        = primary.zoneId
///   name           = "www.example.com"
///   type           = "CNAME"
///   ttl            = 300
///   set_identifier = "dev"
///   records        = ["dev.example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
/// import com.pulumi.aws.route53.inputs.RecordGeoproximityRoutingPolicyArgs;
/// import com.pulumi.aws.route53.inputs.RecordGeoproximityRoutingPolicyCoordinateArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var www = new Record("www", RecordArgs.builder()
///             .geoproximityRoutingPolicy(RecordGeoproximityRoutingPolicyArgs.builder()
///                 .coordinates(RecordGeoproximityRoutingPolicyCoordinateArgs.builder()
///                     .latitude("49.22")
///                     .longitude("-74.01")
///                     .build())
///                 .build())
///             .zoneId(primary.zoneId())
///             .name("www.example.com")
///             .type("CNAME")
///             .ttl(300)
///             .setIdentifier("dev")
///             .records("dev.example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   www:
///     type: aws:route53:Record
///     properties:
///       geoproximityRoutingPolicy:
///         coordinates:
///           - latitude: '49.22'
///             longitude: '-74.01'
///       zoneId: ${primary.zoneId}
///       name: www.example.com
///       type: CNAME
///       ttl: 300
///       setIdentifier: dev
///       records:
///         - dev.example.com
/// ```
///
///
/// ### Alias record
///
/// See [related part of Amazon Route 53 Developer Guide](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resource-record-sets-choosing-alias-non-alias.html)
/// to understand differences between alias and non-alias records.
///
/// TTL for all alias records is [60 seconds](https://aws.amazon.com/route53/faqs/#dns_failover_do_i_need_to_adjust),
/// you cannot change this, therefore `ttl` has to be omitted in alias records.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.elb.LoadBalancer("main", {
///     listeners: [{
///         instancePort: 80,
///         instanceProtocol: "http",
///         lbPort: 80,
///         lbProtocol: "http",
///     }],
///     name: "foobar-elb",
///     availabilityZones: ["us-east-1c"],
/// });
/// const www = new aws.route53.Record("www", {
///     aliases: [{
///         name: main.dnsName,
///         zoneId: main.zoneId,
///         evaluateTargetHealth: true,
///     }],
///     zoneId: primary.zoneId,
///     name: "example.com",
///     type: aws.route53.RecordType.A,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.elb.LoadBalancer("main",
///     listeners=[{
///         "instance_port": 80,
///         "instance_protocol": "http",
///         "lb_port": 80,
///         "lb_protocol": "http",
///     }],
///     name="foobar-elb",
///     availability_zones=["us-east-1c"])
/// www = aws.route53.Record("www",
///     aliases=[{
///         "name": main.dns_name,
///         "zone_id": main.zone_id,
///         "evaluate_target_health": True,
///     }],
///     zone_id=primary["zoneId"],
///     name="example.com",
///     type=aws.route53.RecordType.A)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Aws.Elb.LoadBalancer("main", new()
///     {
///         Listeners = new[]
///         {
///             new Aws.Elb.Inputs.LoadBalancerListenerArgs
///             {
///                 InstancePort = 80,
///                 InstanceProtocol = "http",
///                 LbPort = 80,
///                 LbProtocol = "http",
///             },
///         },
///         Name = "foobar-elb",
///         AvailabilityZones = new[]
///         {
///             "us-east-1c",
///         },
///     });
///
///     var www = new Aws.Route53.Record("www", new()
///     {
///         Aliases = new[]
///         {
///             new Aws.Route53.Inputs.RecordAliasArgs
///             {
///                 Name = main.DnsName,
///                 ZoneId = main.ZoneId,
///                 EvaluateTargetHealth = true,
///             },
///         },
///         ZoneId = primary.ZoneId,
///         Name = "example.com",
///         Type = Aws.Route53.RecordType.A,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elb"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := elb.NewLoadBalancer(ctx, "main", &elb.LoadBalancerArgs{
/// 			Listeners: elb.LoadBalancerListenerArray{
/// 				&elb.LoadBalancerListenerArgs{
/// 					InstancePort:     pulumi.Int(80),
/// 					InstanceProtocol: pulumi.String("http"),
/// 					LbPort:           pulumi.Int(80),
/// 					LbProtocol:       pulumi.String("http"),
/// 				},
/// 			},
/// 			Name: pulumi.String("foobar-elb"),
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String("us-east-1c"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewRecord(ctx, "www", &route53.RecordArgs{
/// 			Aliases: route53.RecordAliasArray{
/// 				&route53.RecordAliasArgs{
/// 					Name:                 main.DnsName,
/// 					ZoneId:               main.ZoneId,
/// 					EvaluateTargetHealth: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ZoneId: pulumi.Any(primary.ZoneId),
/// 			Name:   pulumi.String("example.com"),
/// 			Type:   pulumi.String(route53.RecordTypeA),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_elb_loadbalancer" "main" {
///   listeners {
///     instance_port     = 80
///     instance_protocol = "http"
///     lb_port           = 80
///     lb_protocol       = "http"
///   }
///   name               = "foobar-elb"
///   availability_zones = ["us-east-1c"]
/// }
/// resource "aws_route53_record" "www" {
///   aliases {
///     name                   = aws_elb_loadbalancer.main.dns_name
///     zone_id                = aws_elb_loadbalancer.main.zone_id
///     evaluate_target_health = true
///   }
///   zone_id = primary.zoneId
///   name    = "example.com"
///   type    = "A"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elb.LoadBalancer;
/// import com.pulumi.aws.elb.LoadBalancerArgs;
/// import com.pulumi.aws.elb.inputs.LoadBalancerListenerArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
/// import com.pulumi.aws.route53.inputs.RecordAliasArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var main = new LoadBalancer("main", LoadBalancerArgs.builder()
///             .listeners(LoadBalancerListenerArgs.builder()
///                 .instancePort(80)
///                 .instanceProtocol("http")
///                 .lbPort(80)
///                 .lbProtocol("http")
///                 .build())
///             .name("foobar-elb")
///             .availabilityZones("us-east-1c")
///             .build());
///
///         var www = new Record("www", RecordArgs.builder()
///             .aliases(RecordAliasArgs.builder()
///                 .name(main.dnsName())
///                 .zoneId(main.zoneId())
///                 .evaluateTargetHealth(true)
///                 .build())
///             .zoneId(primary.zoneId())
///             .name("example.com")
///             .type("A")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: aws:elb:LoadBalancer
///     properties:
///       listeners:
///         - instancePort: 80
///           instanceProtocol: http
///           lbPort: 80
///           lbProtocol: http
///       name: foobar-elb
///       availabilityZones:
///         - us-east-1c
///   www:
///     type: aws:route53:Record
///     properties:
///       aliases:
///         - name: ${main.dnsName}
///           zoneId: ${main.zoneId}
///           evaluateTargetHealth: true
///       zoneId: ${primary.zoneId}
///       name: example.com
///       type: A
/// ```
///
///
/// ### Alias record for AWS Global Accelerator
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.globalaccelerator.Accelerator("main", {
///     name: "foobar-pulumi-accelerator",
///     enabled: true,
///     ipAddressType: "IPV4",
/// });
/// const www = new aws.route53.Record("www", {
///     aliases: [{
///         name: main.dnsName,
///         zoneId: main.hostedZoneId,
///         evaluateTargetHealth: false,
///     }],
///     zoneId: primary.zoneId,
///     name: "example.com",
///     type: aws.route53.RecordType.A,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.globalaccelerator.Accelerator("main",
///     name="foobar-pulumi-accelerator",
///     enabled=True,
///     ip_address_type="IPV4")
/// www = aws.route53.Record("www",
///     aliases=[{
///         "name": main.dns_name,
///         "zone_id": main.hosted_zone_id,
///         "evaluate_target_health": False,
///     }],
///     zone_id=primary["zoneId"],
///     name="example.com",
///     type=aws.route53.RecordType.A)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Aws.GlobalAccelerator.Accelerator("main", new()
///     {
///         Name = "foobar-pulumi-accelerator",
///         Enabled = true,
///         IpAddressType = "IPV4",
///     });
///
///     var www = new Aws.Route53.Record("www", new()
///     {
///         Aliases = new[]
///         {
///             new Aws.Route53.Inputs.RecordAliasArgs
///             {
///                 Name = main.DnsName,
///                 ZoneId = main.HostedZoneId,
///                 EvaluateTargetHealth = false,
///             },
///         },
///         ZoneId = primary.ZoneId,
///         Name = "example.com",
///         Type = Aws.Route53.RecordType.A,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/globalaccelerator"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := globalaccelerator.NewAccelerator(ctx, "main", &globalaccelerator.AcceleratorArgs{
/// 			Name:          pulumi.String("foobar-pulumi-accelerator"),
/// 			Enabled:       pulumi.Bool(true),
/// 			IpAddressType: pulumi.String("IPV4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewRecord(ctx, "www", &route53.RecordArgs{
/// 			Aliases: route53.RecordAliasArray{
/// 				&route53.RecordAliasArgs{
/// 					Name:                 main.DnsName,
/// 					ZoneId:               main.HostedZoneId,
/// 					EvaluateTargetHealth: pulumi.Bool(false),
/// 				},
/// 			},
/// 			ZoneId: pulumi.Any(primary.ZoneId),
/// 			Name:   pulumi.String("example.com"),
/// 			Type:   pulumi.String(route53.RecordTypeA),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_globalaccelerator_accelerator" "main" {
///   name            = "foobar-pulumi-accelerator"
///   enabled         = true
///   ip_address_type = "IPV4"
/// }
/// resource "aws_route53_record" "www" {
///   aliases {
///     name                   = aws_globalaccelerator_accelerator.main.dns_name
///     zone_id                = aws_globalaccelerator_accelerator.main.hosted_zone_id
///     evaluate_target_health = false
///   }
///   zone_id = primary.zoneId
///   name    = "example.com"
///   type    = "A"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.globalaccelerator.Accelerator;
/// import com.pulumi.aws.globalaccelerator.AcceleratorArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
/// import com.pulumi.aws.route53.inputs.RecordAliasArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var main = new Accelerator("main", AcceleratorArgs.builder()
///             .name("foobar-pulumi-accelerator")
///             .enabled(true)
///             .ipAddressType("IPV4")
///             .build());
///
///         var www = new Record("www", RecordArgs.builder()
///             .aliases(RecordAliasArgs.builder()
///                 .name(main.dnsName())
///                 .zoneId(main.hostedZoneId())
///                 .evaluateTargetHealth(false)
///                 .build())
///             .zoneId(primary.zoneId())
///             .name("example.com")
///             .type("A")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: aws:globalaccelerator:Accelerator
///     properties:
///       name: foobar-pulumi-accelerator
///       enabled: true
///       ipAddressType: IPV4
///   www:
///     type: aws:route53:Record
///     properties:
///       aliases:
///         - name: ${main.dnsName}
///           zoneId: ${main.hostedZoneId}
///           evaluateTargetHealth: false
///       zoneId: ${primary.zoneId}
///       name: example.com
///       type: A
/// ```
///
///
/// ### NS and SOA Record Management
///
/// When creating Route 53 zones, the `NS` and `SOA` records for the zone are automatically created. Enabling the `allowOverwrite` argument will allow managing these records in a single deployment without the requirement for `import`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53.Zone("example", {name: "test.example.com"});
/// const exampleRecord = new aws.route53.Record("example", {
///     allowOverwrite: true,
///     name: "test.example.com",
///     ttl: 172800,
///     type: aws.route53.RecordType.NS,
///     zoneId: example.zoneId,
///     records: [
///         example.nameServers[0],
///         example.nameServers[1],
///         example.nameServers[2],
///         example.nameServers[3],
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.Zone("example", name="test.example.com")
/// example_record = aws.route53.Record("example",
///     allow_overwrite=True,
///     name="test.example.com",
///     ttl=172800,
///     type=aws.route53.RecordType.NS,
///     zone_id=example.zone_id,
///     records=[
///         example.name_servers[0],
///         example.name_servers[1],
///         example.name_servers[2],
///         example.name_servers[3],
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Route53.Zone("example", new()
///     {
///         Name = "test.example.com",
///     });
///
///     var exampleRecord = new Aws.Route53.Record("example", new()
///     {
///         AllowOverwrite = true,
///         Name = "test.example.com",
///         Ttl = 172800,
///         Type = Aws.Route53.RecordType.NS,
///         ZoneId = example.ZoneId,
///         Records = new[]
///         {
///             example.NameServers.Apply(nameServers => nameServers[0]),
///             example.NameServers.Apply(nameServers => nameServers[1]),
///             example.NameServers.Apply(nameServers => nameServers[2]),
///             example.NameServers.Apply(nameServers => nameServers[3]),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := route53.NewZone(ctx, "example", &route53.ZoneArgs{
/// 			Name: pulumi.String("test.example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewRecord(ctx, "example", &route53.RecordArgs{
/// 			AllowOverwrite: pulumi.Bool(true),
/// 			Name:           pulumi.String("test.example.com"),
/// 			Ttl:            pulumi.Int(172800),
/// 			Type:           pulumi.String(route53.RecordTypeNS),
/// 			ZoneId:         example.ZoneId,
/// 			Records: pulumi.StringArray{
/// 				example.NameServers.ApplyT(func(nameServers []string) (string, error) {
/// 					return nameServers[0], nil
/// 				}).(pulumi.StringOutput),
/// 				example.NameServers.ApplyT(func(nameServers []string) (string, error) {
/// 					return nameServers[1], nil
/// 				}).(pulumi.StringOutput),
/// 				example.NameServers.ApplyT(func(nameServers []string) (string, error) {
/// 					return nameServers[2], nil
/// 				}).(pulumi.StringOutput),
/// 				example.NameServers.ApplyT(func(nameServers []string) (string, error) {
/// 					return nameServers[3], nil
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_route53_zone" "example" {
///   name = "test.example.com"
/// }
/// resource "aws_route53_record" "example" {
///   allow_overwrite = true
///   name            = "test.example.com"
///   ttl             = 172800
///   type            = "NS"
///   zone_id         = aws_route53_zone.example.zone_id
///   records         = [aws_route53_zone.example.name_servers[0], aws_route53_zone.example.name_servers[1], aws_route53_zone.example.name_servers[2], aws_route53_zone.example.name_servers[3]]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.route53.Zone;
/// import com.pulumi.aws.route53.ZoneArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Zone("example", ZoneArgs.builder()
///             .name("test.example.com")
///             .build());
///
///         var exampleRecord = new Record("exampleRecord", RecordArgs.builder()
///             .allowOverwrite(true)
///             .name("test.example.com")
///             .ttl(172800)
///             .type("NS")
///             .zoneId(example.zoneId())
///             .records(
///                 example.nameServers().applyValue(_nameServers -> _nameServers[0]),
///                 example.nameServers().applyValue(_nameServers -> _nameServers[1]),
///                 example.nameServers().applyValue(_nameServers -> _nameServers[2]),
///                 example.nameServers().applyValue(_nameServers -> _nameServers[3]))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53:Zone
///     properties:
///       name: test.example.com
///   exampleRecord:
///     type: aws:route53:Record
///     name: example
///     properties:
///       allowOverwrite: true
///       name: test.example.com
///       ttl: 172800
///       type: NS
///       zoneId: ${example.zoneId}
///       records:
///         - ${example.nameServers[0]}
///         - ${example.nameServers[1]}
///         - ${example.nameServers[2]}
///         - ${example.nameServers[3]}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `zoneId` (String) Hosted zone ID for the record.
/// * `name` (String) Name of the record.
/// * `type` (String) Record type.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `setIdentifier` (String) Set identifier for the record.
///
///
/// If the record also contains a set identifier, append it:
///
///
/// If the record name is the empty string, it can be omitted:
///
///
/// **Using `pulumi import` to import** Route53 Records using the hosted zone ID, record name, record type, and set identifier. For example:
///
/// Using the hosted zone ID, record name, and record type, separated by underscores (`_`):
///
/// ```sh
/// $ pulumi import aws:route53/record:Record example Z4KAPRWWNC7JR_dev_NS
/// ```
///
/// If the record also contains a set identifier, append it:
///
/// ```sh
/// $ pulumi import aws:route53/record:Record example Z4KAPRWWNC7JR_dev_NS_dev
/// ```
class Record extends pulumi.CustomResource {
  /// An alias block. Conflicts with `ttl` & `records`.
  /// Documented below.
  late final pulumi.Output<List<RecordAlias>?> aliases;
  /// Allow creation of this record to overwrite an existing record, if any. This does not affect the ability to update the record using this provider and does not prevent other resources within this provider or manual Route 53 changes outside this provider from overwriting this record. `false` by default. This configuration is not recommended for most environments.
  ///
  /// Exactly one of `records` or `alias` must be specified: this determines whether it's an alias record.
  late final pulumi.Output<bool> allowOverwrite;
  /// A block indicating a routing policy based on the IP network ranges of requestors. Conflicts with any other routing policy. Documented below.
  late final pulumi.Output<RecordCidrRoutingPolicy?> cidrRoutingPolicy;
  /// A block indicating the routing behavior when associated health check fails. Conflicts with any other routing policy. Documented below.
  late final pulumi.Output<List<RecordFailoverRoutingPolicy>?> failoverRoutingPolicies;
  /// [FQDN](https://en.wikipedia.org/wiki/Fully_qualified_domain_name) built using the zone domain and `name`. Does not include trailing `.`.
  late final pulumi.Output<String> fqdn;
  /// A block indicating a routing policy based on the geolocation of the requestor. Conflicts with any other routing policy. Documented below.
  late final pulumi.Output<List<RecordGeolocationRoutingPolicy>?> geolocationRoutingPolicies;
  /// A block indicating a routing policy based on the geoproximity of the requestor. Conflicts with any other routing policy. Documented below.
  late final pulumi.Output<RecordGeoproximityRoutingPolicy?> geoproximityRoutingPolicy;
  /// The health check the record should be associated with.
  late final pulumi.Output<String?> healthCheckId;
  /// A block indicating a routing policy based on the latency between the requestor and an AWS region. Conflicts with any other routing policy. Documented below.
  late final pulumi.Output<List<RecordLatencyRoutingPolicy>?> latencyRoutingPolicies;
  /// Set to `true` to indicate a multivalue answer routing policy. Conflicts with any other routing policy.
  late final pulumi.Output<bool?> multivalueAnswerRoutingPolicy;
  /// The name of the record.
  late final pulumi.Output<String> name;
  /// A string list of records. To specify a single record value longer than 255 characters such as a TXT record for DKIM, add `\"\"` inside the provider configuration string (e.g., `"first255characters\"\"morecharacters"`).
  late final pulumi.Output<List<String>?> records;
  /// Unique identifier to differentiate records with routing policies from one another. Required if using `cidrRoutingPolicy`, `failoverRoutingPolicy`, `geolocationRoutingPolicy`,`geoproximityRoutingPolicy`, `latencyRoutingPolicy`, `multivalueAnswerRoutingPolicy`, or `weightedRoutingPolicy`.
  late final pulumi.Output<String?> setIdentifier;
  /// The TTL of the record.
  late final pulumi.Output<int?> ttl;
  /// The record type. Valid values are `A`, `AAAA`, `CAA`, `CNAME`, `DS`, `HTTPS`, `MX`, `NAPTR`, `NS`, `PTR`, `SOA`, `SPF`, `SRV`, `SSHFP`, `SVCB`, `TLSA`, and `TXT`.
  late final pulumi.Output<String> type;
  /// A block indicating a weighted routing policy. Conflicts with any other routing policy. Documented below.
  late final pulumi.Output<List<RecordWeightedRoutingPolicy>?> weightedRoutingPolicies;
  /// The ID of the hosted zone to contain this record.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Record].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Record]. {@macro pulumi_route53_record_record_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Record(
    String name, {
    RecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/record:Record',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    aliases = registerOutput<List<RecordAlias>?>('aliases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RecordAlias>(guardedValue, (value) => RecordAlias.fromMap((value as Map).cast<String, dynamic>())); });
    allowOverwrite = registerOutput<bool>('allowOverwrite');
    cidrRoutingPolicy = registerOutput<RecordCidrRoutingPolicy?>('cidrRoutingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RecordCidrRoutingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    failoverRoutingPolicies = registerOutput<List<RecordFailoverRoutingPolicy>?>('failoverRoutingPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RecordFailoverRoutingPolicy>(guardedValue, (value) => RecordFailoverRoutingPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    fqdn = registerOutput<String>('fqdn');
    geolocationRoutingPolicies = registerOutput<List<RecordGeolocationRoutingPolicy>?>('geolocationRoutingPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RecordGeolocationRoutingPolicy>(guardedValue, (value) => RecordGeolocationRoutingPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    geoproximityRoutingPolicy = registerOutput<RecordGeoproximityRoutingPolicy?>('geoproximityRoutingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RecordGeoproximityRoutingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    healthCheckId = registerOutput<String?>('healthCheckId');
    latencyRoutingPolicies = registerOutput<List<RecordLatencyRoutingPolicy>?>('latencyRoutingPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RecordLatencyRoutingPolicy>(guardedValue, (value) => RecordLatencyRoutingPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    multivalueAnswerRoutingPolicy = registerOutput<bool?>('multivalueAnswerRoutingPolicy');
    this.name = registerOutput<String>('name');
    records = registerOutput<List<String>?>('records', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    setIdentifier = registerOutput<String?>('setIdentifier');
    ttl = registerOutput<int?>('ttl');
    type = registerOutput<String>('type');
    weightedRoutingPolicies = registerOutput<List<RecordWeightedRoutingPolicy>?>('weightedRoutingPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RecordWeightedRoutingPolicy>(guardedValue, (value) => RecordWeightedRoutingPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [Record] resource's state with the given [name] and [id].
  static Record get(
    String name,
    pulumi.Input<String> id, {
    RecordState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Record._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Record._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/record:Record',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aliases = registerOutput<List<RecordAlias>?>('aliases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RecordAlias>(guardedValue, (value) => RecordAlias.fromMap((value as Map).cast<String, dynamic>())); });
    allowOverwrite = registerOutput<bool>('allowOverwrite');
    cidrRoutingPolicy = registerOutput<RecordCidrRoutingPolicy?>('cidrRoutingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RecordCidrRoutingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    failoverRoutingPolicies = registerOutput<List<RecordFailoverRoutingPolicy>?>('failoverRoutingPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RecordFailoverRoutingPolicy>(guardedValue, (value) => RecordFailoverRoutingPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    fqdn = registerOutput<String>('fqdn');
    geolocationRoutingPolicies = registerOutput<List<RecordGeolocationRoutingPolicy>?>('geolocationRoutingPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RecordGeolocationRoutingPolicy>(guardedValue, (value) => RecordGeolocationRoutingPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    geoproximityRoutingPolicy = registerOutput<RecordGeoproximityRoutingPolicy?>('geoproximityRoutingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RecordGeoproximityRoutingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    healthCheckId = registerOutput<String?>('healthCheckId');
    latencyRoutingPolicies = registerOutput<List<RecordLatencyRoutingPolicy>?>('latencyRoutingPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RecordLatencyRoutingPolicy>(guardedValue, (value) => RecordLatencyRoutingPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    multivalueAnswerRoutingPolicy = registerOutput<bool?>('multivalueAnswerRoutingPolicy');
    this.name = registerOutput<String>('name');
    records = registerOutput<List<String>?>('records', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    setIdentifier = registerOutput<String?>('setIdentifier');
    ttl = registerOutput<int?>('ttl');
    type = registerOutput<String>('type');
    weightedRoutingPolicies = registerOutput<List<RecordWeightedRoutingPolicy>?>('weightedRoutingPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RecordWeightedRoutingPolicy>(guardedValue, (value) => RecordWeightedRoutingPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [Record] resource.
  Record.reference(String urn)
    : super(
        'aws:route53/record:Record',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    aliases = registerOutput<List<RecordAlias>?>('aliases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RecordAlias>(guardedValue, (value) => RecordAlias.fromMap((value as Map).cast<String, dynamic>())); });
    allowOverwrite = registerOutput<bool>('allowOverwrite');
    cidrRoutingPolicy = registerOutput<RecordCidrRoutingPolicy?>('cidrRoutingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RecordCidrRoutingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    failoverRoutingPolicies = registerOutput<List<RecordFailoverRoutingPolicy>?>('failoverRoutingPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RecordFailoverRoutingPolicy>(guardedValue, (value) => RecordFailoverRoutingPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    fqdn = registerOutput<String>('fqdn');
    geolocationRoutingPolicies = registerOutput<List<RecordGeolocationRoutingPolicy>?>('geolocationRoutingPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RecordGeolocationRoutingPolicy>(guardedValue, (value) => RecordGeolocationRoutingPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    geoproximityRoutingPolicy = registerOutput<RecordGeoproximityRoutingPolicy?>('geoproximityRoutingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RecordGeoproximityRoutingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    healthCheckId = registerOutput<String?>('healthCheckId');
    latencyRoutingPolicies = registerOutput<List<RecordLatencyRoutingPolicy>?>('latencyRoutingPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RecordLatencyRoutingPolicy>(guardedValue, (value) => RecordLatencyRoutingPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    multivalueAnswerRoutingPolicy = registerOutput<bool?>('multivalueAnswerRoutingPolicy');
    this.name = registerOutput<String>('name');
    records = registerOutput<List<String>?>('records', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    setIdentifier = registerOutput<String?>('setIdentifier');
    ttl = registerOutput<int?>('ttl');
    type = registerOutput<String>('type');
    weightedRoutingPolicies = registerOutput<List<RecordWeightedRoutingPolicy>?>('weightedRoutingPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RecordWeightedRoutingPolicy>(guardedValue, (value) => RecordWeightedRoutingPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }
}
