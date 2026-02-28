import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_delegation_set_args.dart';
import 'get_delegation_set_result.dart';
import 'get_profiles_profiles_args.dart';
import 'get_profiles_profiles_result.dart';
import 'get_query_log_config_args.dart';
import 'get_query_log_config_result.dart';
import 'get_records_args.dart';
import 'get_records_result.dart';
import 'get_resolver_endpoint_args.dart';
import 'get_resolver_endpoint_result.dart';
import 'get_resolver_firewall_config_args.dart';
import 'get_resolver_firewall_config_result.dart';
import 'get_resolver_firewall_domain_list_args.dart';
import 'get_resolver_firewall_domain_list_result.dart';
import 'get_resolver_firewall_rule_group_args.dart';
import 'get_resolver_firewall_rule_group_association_args.dart';
import 'get_resolver_firewall_rule_group_association_result.dart';
import 'get_resolver_firewall_rule_group_result.dart';
import 'get_resolver_firewall_rules_args.dart';
import 'get_resolver_firewall_rules_result.dart';
import 'get_resolver_rule_args.dart';
import 'get_resolver_rule_result.dart';
import 'get_resolver_rules_args.dart';
import 'get_resolver_rules_result.dart';
import 'get_traffic_policy_document_args.dart';
import 'get_traffic_policy_document_result.dart';
import 'get_zone_args.dart';
import 'get_zone_result.dart';
import 'get_zones_result.dart';

/// `aws.route53.DelegationSet` provides details about a specific Route 53 Delegation Set.
///
/// This data source allows to find a list of name servers associated with a specific delegation set.
///
/// ## Example Usage
///
/// The following example shows how to get a delegation set from its id.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const dset = aws.route53.getDelegationSet({
///     id: "MQWGHCBFAKEID",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// dset = aws.route53.get_delegation_set(id="MQWGHCBFAKEID")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dset = Aws.Route53.GetDelegationSet.Invoke(new()
///     {
///         Id = "MQWGHCBFAKEID",
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
/// 		_, err := route53.LookupDelegationSet(ctx, &route53.LookupDelegationSetArgs{
/// 			Id: "MQWGHCBFAKEID",
/// 		}, nil)
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetDelegationSetArgs;
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
///         final var dset = Route53Functions.getDelegationSet(GetDelegationSetArgs.builder()
///             .id("MQWGHCBFAKEID")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   dset:
///     fn::invoke:
///       function: aws:route53:getDelegationSet
///       arguments:
///         id: MQWGHCBFAKEID
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_route53_get_delegation_set_get_delegation_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDelegationSetResult> getDelegationSet(
  GetDelegationSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getDelegationSet:getDelegationSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDelegationSetResult.fromMap(result);
}

/// Data source for managing an AWS Route 53 Profiles.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getProfilesProfiles({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_profiles_profiles()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Route53.GetProfilesProfiles.Invoke();
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
/// 		_, err := route53.GetProfilesProfiles(ctx, &route53.GetProfilesProfilesArgs{}, nil)
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetProfilesProfilesArgs;
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
///         final var example = Route53Functions.getProfilesProfiles(GetProfilesProfilesArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:route53:getProfilesProfiles
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_route53_get_profiles_profiles_get_profiles_profiles_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProfilesProfilesResult> getProfilesProfiles(
  GetProfilesProfilesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getProfilesProfiles:getProfilesProfiles',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProfilesProfilesResult.fromMap(result);
}

/// `aws.route53.ResolverQueryLogConfig` provides details about a specific Route53 Resolver Query Logging Configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getQueryLogConfig({
///     resolverQueryLogConfigId: "rqlc-1abc2345ef678g91h",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_query_log_config(resolver_query_log_config_id="rqlc-1abc2345ef678g91h")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Route53.GetQueryLogConfig.Invoke(new()
///     {
///         ResolverQueryLogConfigId = "rqlc-1abc2345ef678g91h",
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
/// 		_, err := route53.GetQueryLogConfig(ctx, &route53.GetQueryLogConfigArgs{
/// 			ResolverQueryLogConfigId: pulumi.StringRef("rqlc-1abc2345ef678g91h"),
/// 		}, nil)
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetQueryLogConfigArgs;
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
///         final var example = Route53Functions.getQueryLogConfig(GetQueryLogConfigArgs.builder()
///             .resolverQueryLogConfigId("rqlc-1abc2345ef678g91h")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:route53:getQueryLogConfig
///       arguments:
///         resolverQueryLogConfigId: rqlc-1abc2345ef678g91h
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getQueryLogConfig({
///     filters: [
///         {
///             name: "Name",
///             values: ["shared-query-log-config"],
///         },
///         {
///             name: "ShareStatus",
///             values: ["SHARED_WITH_ME"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_query_log_config(filters=[
///     {
///         "name": "Name",
///         "values": ["shared-query-log-config"],
///     },
///     {
///         "name": "ShareStatus",
///         "values": ["SHARED_WITH_ME"],
///     },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Route53.GetQueryLogConfig.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Route53.Inputs.GetQueryLogConfigFilterInputArgs
///             {
///                 Name = "Name",
///                 Values = new[]
///                 {
///                     "shared-query-log-config",
///                 },
///             },
///             new Aws.Route53.Inputs.GetQueryLogConfigFilterInputArgs
///             {
///                 Name = "ShareStatus",
///                 Values = new[]
///                 {
///                     "SHARED_WITH_ME",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := route53.GetQueryLogConfig(ctx, &route53.GetQueryLogConfigArgs{
/// 			Filters: []route53.GetQueryLogConfigFilter{
/// 				{
/// 					Name: "Name",
/// 					Values: []string{
/// 						"shared-query-log-config",
/// 					},
/// 				},
/// 				{
/// 					Name: "ShareStatus",
/// 					Values: []string{
/// 						"SHARED_WITH_ME",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetQueryLogConfigArgs;
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
///         final var example = Route53Functions.getQueryLogConfig(GetQueryLogConfigArgs.builder()
///             .filters(
///                 GetQueryLogConfigFilterArgs.builder()
///                     .name("Name")
///                     .values("shared-query-log-config")
///                     .build(),
///                 GetQueryLogConfigFilterArgs.builder()
///                     .name("ShareStatus")
///                     .values("SHARED_WITH_ME")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:route53:getQueryLogConfig
///       arguments:
///         filters:
///           - name: Name
///             values:
///               - shared-query-log-config
///           - name: ShareStatus
///             values:
///               - SHARED_WITH_ME
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_route53_get_query_log_config_get_query_log_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueryLogConfigResult> getQueryLogConfig(
  GetQueryLogConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getQueryLogConfig:getQueryLogConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueryLogConfigResult.fromMap(result);
}

/// Use this data source to get the details of resource records in a Route 53 hosted zone.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// Return all records in the zone.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const selected = aws.route53.getZone({
///     name: "test.com.",
///     privateZone: true,
/// });
/// const example = selected.then(selected => aws.route53.getRecords({
///     zoneId: selected.zoneId,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// selected = aws.route53.get_zone(name="test.com.",
///     private_zone=True)
/// example = aws.route53.get_records(zone_id=selected.zone_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var selected = Aws.Route53.GetZone.Invoke(new()
///     {
///         Name = "test.com.",
///         PrivateZone = true,
///     });
///
///     var example = Aws.Route53.GetRecords.Invoke(new()
///     {
///         ZoneId = selected.Apply(getZoneResult => getZoneResult.ZoneId),
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
/// 		selected, err := route53.LookupZone(ctx, &route53.LookupZoneArgs{
/// 			Name:        pulumi.StringRef("test.com."),
/// 			PrivateZone: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.GetRecords(ctx, &route53.GetRecordsArgs{
/// 			ZoneId: selected.ZoneId,
/// 		}, nil)
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetZoneArgs;
/// import com.pulumi.aws.route53.inputs.GetRecordsArgs;
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
///         final var selected = Route53Functions.getZone(GetZoneArgs.builder()
///             .name("test.com.")
///             .privateZone(true)
///             .build());
///
///         final var example = Route53Functions.getRecords(GetRecordsArgs.builder()
///             .zoneId(selected.zoneId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   selected:
///     fn::invoke:
///       function: aws:route53:getZone
///       arguments:
///         name: test.com.
///         privateZone: true
///   example:
///     fn::invoke:
///       function: aws:route53:getRecords
///       arguments:
///         zoneId: ${selected.zoneId}
/// ```
///
///
/// ### Basic Usage with filter
///
/// Return the records that starts with `www`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const selected = aws.route53.getZone({
///     name: "test.com.",
///     privateZone: true,
/// });
/// const example = selected.then(selected => aws.route53.getRecords({
///     zoneId: selected.zoneId,
///     nameRegex: "^www",
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// selected = aws.route53.get_zone(name="test.com.",
///     private_zone=True)
/// example = aws.route53.get_records(zone_id=selected.zone_id,
///     name_regex="^www")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var selected = Aws.Route53.GetZone.Invoke(new()
///     {
///         Name = "test.com.",
///         PrivateZone = true,
///     });
///
///     var example = Aws.Route53.GetRecords.Invoke(new()
///     {
///         ZoneId = selected.Apply(getZoneResult => getZoneResult.ZoneId),
///         NameRegex = "^www",
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
/// 		selected, err := route53.LookupZone(ctx, &route53.LookupZoneArgs{
/// 			Name:        pulumi.StringRef("test.com."),
/// 			PrivateZone: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.GetRecords(ctx, &route53.GetRecordsArgs{
/// 			ZoneId:    selected.ZoneId,
/// 			NameRegex: pulumi.StringRef("^www"),
/// 		}, nil)
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetZoneArgs;
/// import com.pulumi.aws.route53.inputs.GetRecordsArgs;
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
///         final var selected = Route53Functions.getZone(GetZoneArgs.builder()
///             .name("test.com.")
///             .privateZone(true)
///             .build());
///
///         final var example = Route53Functions.getRecords(GetRecordsArgs.builder()
///             .zoneId(selected.zoneId())
///             .nameRegex("^www")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   selected:
///     fn::invoke:
///       function: aws:route53:getZone
///       arguments:
///         name: test.com.
///         privateZone: true
///   example:
///     fn::invoke:
///       function: aws:route53:getRecords
///       arguments:
///         zoneId: ${selected.zoneId}
///         nameRegex: ^www
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_route53_get_records_get_records_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRecordsResult> getRecords(
  GetRecordsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getRecords:getRecords',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRecordsResult.fromMap(result);
}

/// `aws.route53.ResolverEndpoint` provides details about a specific Route53 Resolver Endpoint.
///
/// This data source allows to find a list of IPaddresses associated with a specific Route53 Resolver Endpoint.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getResolverEndpoint({
///     resolverEndpointId: "rslvr-in-1abc2345ef678g91h",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_resolver_endpoint(resolver_endpoint_id="rslvr-in-1abc2345ef678g91h")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Route53.GetResolverEndpoint.Invoke(new()
///     {
///         ResolverEndpointId = "rslvr-in-1abc2345ef678g91h",
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
/// 		_, err := route53.LookupResolverEndpoint(ctx, &route53.LookupResolverEndpointArgs{
/// 			ResolverEndpointId: pulumi.StringRef("rslvr-in-1abc2345ef678g91h"),
/// 		}, nil)
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetResolverEndpointArgs;
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
///         final var example = Route53Functions.getResolverEndpoint(GetResolverEndpointArgs.builder()
///             .resolverEndpointId("rslvr-in-1abc2345ef678g91h")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:route53:getResolverEndpoint
///       arguments:
///         resolverEndpointId: rslvr-in-1abc2345ef678g91h
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getResolverEndpoint({
///     filters: [{
///         name: "NAME",
///         values: ["MyResolverExampleName"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_resolver_endpoint(filters=[{
///     "name": "NAME",
///     "values": ["MyResolverExampleName"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Route53.GetResolverEndpoint.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Route53.Inputs.GetResolverEndpointFilterInputArgs
///             {
///                 Name = "NAME",
///                 Values = new[]
///                 {
///                     "MyResolverExampleName",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := route53.LookupResolverEndpoint(ctx, &route53.LookupResolverEndpointArgs{
/// 			Filters: []route53.GetResolverEndpointFilter{
/// 				{
/// 					Name: "NAME",
/// 					Values: []string{
/// 						"MyResolverExampleName",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetResolverEndpointArgs;
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
///         final var example = Route53Functions.getResolverEndpoint(GetResolverEndpointArgs.builder()
///             .filters(GetResolverEndpointFilterArgs.builder()
///                 .name("NAME")
///                 .values("MyResolverExampleName")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:route53:getResolverEndpoint
///       arguments:
///         filters:
///           - name: NAME
///             values:
///               - MyResolverExampleName
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_route53_get_resolver_endpoint_get_resolver_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResolverEndpointResult> getResolverEndpoint(
  GetResolverEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getResolverEndpoint:getResolverEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResolverEndpointResult.fromMap(result);
}

/// `aws.route53.ResolverFirewallConfig` provides details about a specific a Route 53 Resolver DNS Firewall config.
///
/// This data source allows to find a details about a specific a Route 53 Resolver DNS Firewall config.
///
/// ## Example Usage
///
/// The following example shows how to get a firewall config using the VPC ID.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getResolverFirewallConfig({
///     resourceId: "vpc-exampleid",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_resolver_firewall_config(resource_id="vpc-exampleid")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Route53.GetResolverFirewallConfig.Invoke(new()
///     {
///         ResourceId = "vpc-exampleid",
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
/// 		_, err := route53.LookupResolverFirewallConfig(ctx, &route53.LookupResolverFirewallConfigArgs{
/// 			ResourceId: "vpc-exampleid",
/// 		}, nil)
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetResolverFirewallConfigArgs;
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
///         final var example = Route53Functions.getResolverFirewallConfig(GetResolverFirewallConfigArgs.builder()
///             .resourceId("vpc-exampleid")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:route53:getResolverFirewallConfig
///       arguments:
///         resourceId: vpc-exampleid
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_route53_get_resolver_firewall_config_get_resolver_firewall_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResolverFirewallConfigResult> getResolverFirewallConfig(
  GetResolverFirewallConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getResolverFirewallConfig:getResolverFirewallConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResolverFirewallConfigResult.fromMap(result);
}

/// `aws.route53.ResolverFirewallDomainList` Retrieves the specified firewall domain list.
///
/// This data source allows to retrieve details about a specific a Route 53 Resolver DNS Firewall domain list.
///
/// ## Example Usage
///
/// The following example shows how to get a firewall domain list from its ID.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getResolverFirewallDomainList({
///     firewallDomainListId: "rslvr-fdl-example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_resolver_firewall_domain_list(firewall_domain_list_id="rslvr-fdl-example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Route53.GetResolverFirewallDomainList.Invoke(new()
///     {
///         FirewallDomainListId = "rslvr-fdl-example",
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
/// 		_, err := route53.LookupResolverFirewallDomainList(ctx, &route53.LookupResolverFirewallDomainListArgs{
/// 			FirewallDomainListId: "rslvr-fdl-example",
/// 		}, nil)
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetResolverFirewallDomainListArgs;
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
///         final var example = Route53Functions.getResolverFirewallDomainList(GetResolverFirewallDomainListArgs.builder()
///             .firewallDomainListId("rslvr-fdl-example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:route53:getResolverFirewallDomainList
///       arguments:
///         firewallDomainListId: rslvr-fdl-example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_route53_get_resolver_firewall_domain_list_get_resolver_firewall_domain_list_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResolverFirewallDomainListResult> getResolverFirewallDomainList(
  GetResolverFirewallDomainListArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getResolverFirewallDomainList:getResolverFirewallDomainList',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResolverFirewallDomainListResult.fromMap(result);
}

/// `aws.route53.ResolverFirewallRuleGroup` Retrieves the specified firewall rule group.
///
/// This data source allows to retrieve details about a specific a Route 53 Resolver DNS Firewall rule group.
///
/// ## Example Usage
///
/// The following example shows how to get a firewall rule group from its ID.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getResolverFirewallRuleGroup({
///     firewallRuleGroupId: "rslvr-frg-example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_resolver_firewall_rule_group(firewall_rule_group_id="rslvr-frg-example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Route53.GetResolverFirewallRuleGroup.Invoke(new()
///     {
///         FirewallRuleGroupId = "rslvr-frg-example",
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
/// 		_, err := route53.LookupResolverFirewallRuleGroup(ctx, &route53.LookupResolverFirewallRuleGroupArgs{
/// 			FirewallRuleGroupId: "rslvr-frg-example",
/// 		}, nil)
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetResolverFirewallRuleGroupArgs;
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
///         final var example = Route53Functions.getResolverFirewallRuleGroup(GetResolverFirewallRuleGroupArgs.builder()
///             .firewallRuleGroupId("rslvr-frg-example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:route53:getResolverFirewallRuleGroup
///       arguments:
///         firewallRuleGroupId: rslvr-frg-example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_route53_get_resolver_firewall_rule_group_get_resolver_firewall_rule_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResolverFirewallRuleGroupResult> getResolverFirewallRuleGroup(
  GetResolverFirewallRuleGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getResolverFirewallRuleGroup:getResolverFirewallRuleGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResolverFirewallRuleGroupResult.fromMap(result);
}

/// `aws.route53.ResolverFirewallRuleGroupAssociation` Retrieves the specified firewall rule group association.
///
/// This data source allows to retrieve details about a specific a Route 53 Resolver DNS Firewall rule group association.
///
/// ## Example Usage
///
/// The following example shows how to get a firewall rule group association from its id.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getResolverFirewallRuleGroupAssociation({
///     firewallRuleGroupAssociationId: "rslvr-frgassoc-example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_resolver_firewall_rule_group_association(firewall_rule_group_association_id="rslvr-frgassoc-example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Route53.GetResolverFirewallRuleGroupAssociation.Invoke(new()
///     {
///         FirewallRuleGroupAssociationId = "rslvr-frgassoc-example",
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
/// 		_, err := route53.LookupResolverFirewallRuleGroupAssociation(ctx, &route53.LookupResolverFirewallRuleGroupAssociationArgs{
/// 			FirewallRuleGroupAssociationId: "rslvr-frgassoc-example",
/// 		}, nil)
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetResolverFirewallRuleGroupAssociationArgs;
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
///         final var example = Route53Functions.getResolverFirewallRuleGroupAssociation(GetResolverFirewallRuleGroupAssociationArgs.builder()
///             .firewallRuleGroupAssociationId("rslvr-frgassoc-example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:route53:getResolverFirewallRuleGroupAssociation
///       arguments:
///         firewallRuleGroupAssociationId: rslvr-frgassoc-example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_route53_get_resolver_firewall_rule_group_association_get_resolver_firewall_rule_group_association_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResolverFirewallRuleGroupAssociationResult>
    getResolverFirewallRuleGroupAssociation(
  GetResolverFirewallRuleGroupAssociationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getResolverFirewallRuleGroupAssociation:getResolverFirewallRuleGroupAssociation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResolverFirewallRuleGroupAssociationResult.fromMap(result);
}

/// `aws.route53.getResolverFirewallRules` Provides details about rules in a specific Route53 Resolver Firewall rule group.
///
/// ## Example Usage
///
/// The following example shows how to get Route53 Resolver Firewall rules based on its associated firewall group id.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getResolverFirewallRules({
///     firewallRuleGroupId: exampleAwsRoute53ResolverFirewallRuleGroup.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_resolver_firewall_rules(firewall_rule_group_id=example_aws_route53_resolver_firewall_rule_group["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Route53.GetResolverFirewallRules.Invoke(new()
///     {
///         FirewallRuleGroupId = exampleAwsRoute53ResolverFirewallRuleGroup.Id,
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
/// 		_, err := route53.GetResolverFirewallRules(ctx, &route53.GetResolverFirewallRulesArgs{
/// 			FirewallRuleGroupId: exampleAwsRoute53ResolverFirewallRuleGroup.Id,
/// 		}, nil)
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetResolverFirewallRulesArgs;
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
///         final var example = Route53Functions.getResolverFirewallRules(GetResolverFirewallRulesArgs.builder()
///             .firewallRuleGroupId(exampleAwsRoute53ResolverFirewallRuleGroup.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:route53:getResolverFirewallRules
///       arguments:
///         firewallRuleGroupId: ${exampleAwsRoute53ResolverFirewallRuleGroup.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_route53_get_resolver_firewall_rules_get_resolver_firewall_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResolverFirewallRulesResult> getResolverFirewallRules(
  GetResolverFirewallRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getResolverFirewallRules:getResolverFirewallRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResolverFirewallRulesResult.fromMap(result);
}

/// `aws.route53.ResolverRule` provides details about a specific Route53 Resolver rule.
///
/// ## Example Usage
///
/// The following example shows how to get a Route53 Resolver rule based on its associated domain name and rule type.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getResolverRule({
///     domainName: "subdomain.example.com",
///     ruleType: "SYSTEM",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_resolver_rule(domain_name="subdomain.example.com",
///     rule_type="SYSTEM")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Route53.GetResolverRule.Invoke(new()
///     {
///         DomainName = "subdomain.example.com",
///         RuleType = "SYSTEM",
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
/// 		_, err := route53.LookupResolverRule(ctx, &route53.LookupResolverRuleArgs{
/// 			DomainName: pulumi.StringRef("subdomain.example.com"),
/// 			RuleType:   pulumi.StringRef("SYSTEM"),
/// 		}, nil)
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetResolverRuleArgs;
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
///         final var example = Route53Functions.getResolverRule(GetResolverRuleArgs.builder()
///             .domainName("subdomain.example.com")
///             .ruleType("SYSTEM")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:route53:getResolverRule
///       arguments:
///         domainName: subdomain.example.com
///         ruleType: SYSTEM
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_route53_get_resolver_rule_get_resolver_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResolverRuleResult> getResolverRule(
  GetResolverRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getResolverRule:getResolverRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResolverRuleResult.fromMap(result);
}

/// `aws.route53.getResolverRules` provides details about a set of Route53 Resolver rules.
///
/// ## Example Usage
///
/// ### Retrieving the default resolver rule
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getResolverRules({
///     ownerId: "Route 53 Resolver",
///     ruleType: "RECURSIVE",
///     shareStatus: "NOT_SHARED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_resolver_rules(owner_id="Route 53 Resolver",
///     rule_type="RECURSIVE",
///     share_status="NOT_SHARED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Route53.GetResolverRules.Invoke(new()
///     {
///         OwnerId = "Route 53 Resolver",
///         RuleType = "RECURSIVE",
///         ShareStatus = "NOT_SHARED",
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
/// 		_, err := route53.GetResolverRules(ctx, &route53.GetResolverRulesArgs{
/// 			OwnerId:     pulumi.StringRef("Route 53 Resolver"),
/// 			RuleType:    pulumi.StringRef("RECURSIVE"),
/// 			ShareStatus: pulumi.StringRef("NOT_SHARED"),
/// 		}, nil)
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetResolverRulesArgs;
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
///         final var example = Route53Functions.getResolverRules(GetResolverRulesArgs.builder()
///             .ownerId("Route 53 Resolver")
///             .ruleType("RECURSIVE")
///             .shareStatus("NOT_SHARED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:route53:getResolverRules
///       arguments:
///         ownerId: Route 53 Resolver
///         ruleType: RECURSIVE
///         shareStatus: NOT_SHARED
/// ```
///
///
/// ### Retrieving forward rules shared with me
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getResolverRules({
///     ruleType: "FORWARD",
///     shareStatus: "SHARED_WITH_ME",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_resolver_rules(rule_type="FORWARD",
///     share_status="SHARED_WITH_ME")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Route53.GetResolverRules.Invoke(new()
///     {
///         RuleType = "FORWARD",
///         ShareStatus = "SHARED_WITH_ME",
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
/// 		_, err := route53.GetResolverRules(ctx, &route53.GetResolverRulesArgs{
/// 			RuleType:    pulumi.StringRef("FORWARD"),
/// 			ShareStatus: pulumi.StringRef("SHARED_WITH_ME"),
/// 		}, nil)
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetResolverRulesArgs;
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
///         final var example = Route53Functions.getResolverRules(GetResolverRulesArgs.builder()
///             .ruleType("FORWARD")
///             .shareStatus("SHARED_WITH_ME")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:route53:getResolverRules
///       arguments:
///         ruleType: FORWARD
///         shareStatus: SHARED_WITH_ME
/// ```
///
///
/// ### Retrieving rules by name regex
///
/// Resolver rules whose name contains `abc`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getResolverRules({
///     nameRegex: ".*abc.*",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_resolver_rules(name_regex=".*abc.*")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Route53.GetResolverRules.Invoke(new()
///     {
///         NameRegex = ".*abc.*",
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
/// 		_, err := route53.GetResolverRules(ctx, &route53.GetResolverRulesArgs{
/// 			NameRegex: pulumi.StringRef(".*abc.*"),
/// 		}, nil)
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetResolverRulesArgs;
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
///         final var example = Route53Functions.getResolverRules(GetResolverRulesArgs.builder()
///             .nameRegex(".*abc.*")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:route53:getResolverRules
///       arguments:
///         nameRegex: .*abc.*
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_route53_get_resolver_rules_get_resolver_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResolverRulesResult> getResolverRules(
  GetResolverRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getResolverRules:getResolverRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResolverRulesResult.fromMap(result);
}

/// Generates an Route53 traffic policy document in JSON format for use with resources that expect policy documents such as `aws.route53.TrafficPolicy`.
///
/// ## Example Usage
///
/// ### Basic Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const example = Promise.all([current, current]).then(([current, current1]) => aws.route53.getTrafficPolicyDocument({
///     recordType: "A",
///     startRule: "site_switch",
///     endpoints: [
///         {
///             id: "my_elb",
///             type: "elastic-load-balancer",
///             value: `elb-111111.${current.region}.elb.amazonaws.com`,
///         },
///         {
///             id: "site_down_banner",
///             type: "s3-website",
///             region: current1.region,
///             value: "www.example.com",
///         },
///     ],
///     rules: [{
///         id: "site_switch",
///         type: "failover",
///         primary: {
///             endpointReference: "my_elb",
///         },
///         secondary: {
///             endpointReference: "site_down_banner",
///         },
///     }],
/// }));
/// const exampleTrafficPolicy = new aws.route53.TrafficPolicy("example", {
///     name: "example",
///     comment: "example comment",
///     document: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// example = aws.route53.get_traffic_policy_document(record_type="A",
///     start_rule="site_switch",
///     endpoints=[
///         {
///             "id": "my_elb",
///             "type": "elastic-load-balancer",
///             "value": f"elb-111111.{current.region}.elb.amazonaws.com",
///         },
///         {
///             "id": "site_down_banner",
///             "type": "s3-website",
///             "region": current.region,
///             "value": "www.example.com",
///         },
///     ],
///     rules=[{
///         "id": "site_switch",
///         "type": "failover",
///         "primary": {
///             "endpoint_reference": "my_elb",
///         },
///         "secondary": {
///             "endpoint_reference": "site_down_banner",
///         },
///     }])
/// example_traffic_policy = aws.route53.TrafficPolicy("example",
///     name="example",
///     comment="example comment",
///     document=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetRegion.Invoke();
///
///     var example = Aws.Route53.GetTrafficPolicyDocument.Invoke(new()
///     {
///         RecordType = "A",
///         StartRule = "site_switch",
///         Endpoints = new[]
///         {
///             new Aws.Route53.Inputs.GetTrafficPolicyDocumentEndpointInputArgs
///             {
///                 Id = "my_elb",
///                 Type = "elastic-load-balancer",
///                 Value = $"elb-111111.{current.Apply(getRegionResult => getRegionResult.Region)}.elb.amazonaws.com",
///             },
///             new Aws.Route53.Inputs.GetTrafficPolicyDocumentEndpointInputArgs
///             {
///                 Id = "site_down_banner",
///                 Type = "s3-website",
///                 Region = current.Apply(getRegionResult => getRegionResult.Region),
///                 Value = "www.example.com",
///             },
///         },
///         Rules = new[]
///         {
///             new Aws.Route53.Inputs.GetTrafficPolicyDocumentRuleInputArgs
///             {
///                 Id = "site_switch",
///                 Type = "failover",
///                 Primary = new Aws.Route53.Inputs.GetTrafficPolicyDocumentRulePrimaryInputArgs
///                 {
///                     EndpointReference = "my_elb",
///                 },
///                 Secondary = new Aws.Route53.Inputs.GetTrafficPolicyDocumentRuleSecondaryInputArgs
///                 {
///                     EndpointReference = "site_down_banner",
///                 },
///             },
///         },
///     });
///
///     var exampleTrafficPolicy = new Aws.Route53.TrafficPolicy("example", new()
///     {
///         Name = "example",
///         Comment = "example comment",
///         Document = example.Apply(getTrafficPolicyDocumentResult => getTrafficPolicyDocumentResult.Json),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := route53.GetTrafficPolicyDocument(ctx, &route53.GetTrafficPolicyDocumentArgs{
/// 			RecordType: pulumi.StringRef("A"),
/// 			StartRule:  pulumi.StringRef("site_switch"),
/// 			Endpoints: []route53.GetTrafficPolicyDocumentEndpoint{
/// 				{
/// 					Id:    "my_elb",
/// 					Type:  pulumi.StringRef("elastic-load-balancer"),
/// 					Value: pulumi.StringRef(fmt.Sprintf("elb-111111.%v.elb.amazonaws.com", current.Region)),
/// 				},
/// 				{
/// 					Id:     "site_down_banner",
/// 					Type:   pulumi.StringRef("s3-website"),
/// 					Region: pulumi.StringRef(current.Region),
/// 					Value:  pulumi.StringRef("www.example.com"),
/// 				},
/// 			},
/// 			Rules: []route53.GetTrafficPolicyDocumentRule{
/// 				{
/// 					Id:   "site_switch",
/// 					Type: pulumi.StringRef("failover"),
/// 					Primary: {
/// 						EndpointReference: pulumi.StringRef("my_elb"),
/// 					},
/// 					Secondary: {
/// 						EndpointReference: pulumi.StringRef("site_down_banner"),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewTrafficPolicy(ctx, "example", &route53.TrafficPolicyArgs{
/// 			Name:     pulumi.String("example"),
/// 			Comment:  pulumi.String("example comment"),
/// 			Document: pulumi.String(example.Json),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetTrafficPolicyDocumentArgs;
/// import com.pulumi.aws.route53.TrafficPolicy;
/// import com.pulumi.aws.route53.TrafficPolicyArgs;
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
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var example = Route53Functions.getTrafficPolicyDocument(GetTrafficPolicyDocumentArgs.builder()
///             .recordType("A")
///             .startRule("site_switch")
///             .endpoints(
///                 GetTrafficPolicyDocumentEndpointArgs.builder()
///                     .id("my_elb")
///                     .type("elastic-load-balancer")
///                     .value(String.format("elb-111111.%s.elb.amazonaws.com", current.region()))
///                     .build(),
///                 GetTrafficPolicyDocumentEndpointArgs.builder()
///                     .id("site_down_banner")
///                     .type("s3-website")
///                     .region(current.region())
///                     .value("www.example.com")
///                     .build())
///             .rules(GetTrafficPolicyDocumentRuleArgs.builder()
///                 .id("site_switch")
///                 .type("failover")
///                 .primary(GetTrafficPolicyDocumentRulePrimaryArgs.builder()
///                     .endpointReference("my_elb")
///                     .build())
///                 .secondary(GetTrafficPolicyDocumentRuleSecondaryArgs.builder()
///                     .endpointReference("site_down_banner")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleTrafficPolicy = new TrafficPolicy("exampleTrafficPolicy", TrafficPolicyArgs.builder()
///             .name("example")
///             .comment("example comment")
///             .document(example.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleTrafficPolicy:
///     type: aws:route53:TrafficPolicy
///     name: example
///     properties:
///       name: example
///       comment: example comment
///       document: ${example.json}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
///   example:
///     fn::invoke:
///       function: aws:route53:getTrafficPolicyDocument
///       arguments:
///         recordType: A
///         startRule: site_switch
///         endpoints:
///           - id: my_elb
///             type: elastic-load-balancer
///             value: elb-111111.${current.region}.elb.amazonaws.com
///           - id: site_down_banner
///             type: s3-website
///             region: ${current.region}
///             value: www.example.com
///         rules:
///           - id: site_switch
///             type: failover
///             primary:
///               endpointReference: my_elb
///             secondary:
///               endpointReference: site_down_banner
/// ```
///
///
/// ### Complex Example
///
/// The following example showcases the use of nested rules within the traffic policy document and introduces the `geoproximity` rule type.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getTrafficPolicyDocument({
///     recordType: "A",
///     startRule: "geoproximity_rule",
///     endpoints: [
///         {
///             id: "na_endpoint_a",
///             type: "elastic-load-balancer",
///             value: "elb-111111.us-west-1.elb.amazonaws.com",
///         },
///         {
///             id: "na_endpoint_b",
///             type: "elastic-load-balancer",
///             value: "elb-222222.us-west-1.elb.amazonaws.com",
///         },
///         {
///             id: "eu_endpoint",
///             type: "elastic-load-balancer",
///             value: "elb-333333.eu-west-1.elb.amazonaws.com",
///         },
///         {
///             id: "ap_endpoint",
///             type: "elastic-load-balancer",
///             value: "elb-444444.ap-northeast-2.elb.amazonaws.com",
///         },
///     ],
///     rules: [
///         {
///             id: "na_rule",
///             type: "failover",
///             primary: {
///                 endpointReference: "na_endpoint_a",
///             },
///             secondary: {
///                 endpointReference: "na_endpoint_b",
///             },
///         },
///         {
///             id: "geoproximity_rule",
///             type: "geoproximity",
///             geoProximityLocations: [
///                 {
///                     region: "aws:route53:us-west-1",
///                     bias: "10",
///                     evaluateTargetHealth: true,
///                     ruleReference: "na_rule",
///                 },
///                 {
///                     region: "aws:route53:eu-west-1",
///                     bias: "10",
///                     evaluateTargetHealth: true,
///                     endpointReference: "eu_endpoint",
///                 },
///                 {
///                     region: "aws:route53:ap-northeast-2",
///                     bias: "0",
///                     evaluateTargetHealth: true,
///                     endpointReference: "ap_endpoint",
///                 },
///             ],
///         },
///     ],
/// });
/// const exampleTrafficPolicy = new aws.route53.TrafficPolicy("example", {
///     name: "example",
///     comment: "example comment",
///     document: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_traffic_policy_document(record_type="A",
///     start_rule="geoproximity_rule",
///     endpoints=[
///         {
///             "id": "na_endpoint_a",
///             "type": "elastic-load-balancer",
///             "value": "elb-111111.us-west-1.elb.amazonaws.com",
///         },
///         {
///             "id": "na_endpoint_b",
///             "type": "elastic-load-balancer",
///             "value": "elb-222222.us-west-1.elb.amazonaws.com",
///         },
///         {
///             "id": "eu_endpoint",
///             "type": "elastic-load-balancer",
///             "value": "elb-333333.eu-west-1.elb.amazonaws.com",
///         },
///         {
///             "id": "ap_endpoint",
///             "type": "elastic-load-balancer",
///             "value": "elb-444444.ap-northeast-2.elb.amazonaws.com",
///         },
///     ],
///     rules=[
///         {
///             "id": "na_rule",
///             "type": "failover",
///             "primary": {
///                 "endpoint_reference": "na_endpoint_a",
///             },
///             "secondary": {
///                 "endpoint_reference": "na_endpoint_b",
///             },
///         },
///         {
///             "id": "geoproximity_rule",
///             "type": "geoproximity",
///             "geo_proximity_locations": [
///                 {
///                     "region": "aws:route53:us-west-1",
///                     "bias": "10",
///                     "evaluate_target_health": True,
///                     "rule_reference": "na_rule",
///                 },
///                 {
///                     "region": "aws:route53:eu-west-1",
///                     "bias": "10",
///                     "evaluate_target_health": True,
///                     "endpoint_reference": "eu_endpoint",
///                 },
///                 {
///                     "region": "aws:route53:ap-northeast-2",
///                     "bias": "0",
///                     "evaluate_target_health": True,
///                     "endpoint_reference": "ap_endpoint",
///                 },
///             ],
///         },
///     ])
/// example_traffic_policy = aws.route53.TrafficPolicy("example",
///     name="example",
///     comment="example comment",
///     document=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Route53.GetTrafficPolicyDocument.Invoke(new()
///     {
///         RecordType = "A",
///         StartRule = "geoproximity_rule",
///         Endpoints = new[]
///         {
///             new Aws.Route53.Inputs.GetTrafficPolicyDocumentEndpointInputArgs
///             {
///                 Id = "na_endpoint_a",
///                 Type = "elastic-load-balancer",
///                 Value = "elb-111111.us-west-1.elb.amazonaws.com",
///             },
///             new Aws.Route53.Inputs.GetTrafficPolicyDocumentEndpointInputArgs
///             {
///                 Id = "na_endpoint_b",
///                 Type = "elastic-load-balancer",
///                 Value = "elb-222222.us-west-1.elb.amazonaws.com",
///             },
///             new Aws.Route53.Inputs.GetTrafficPolicyDocumentEndpointInputArgs
///             {
///                 Id = "eu_endpoint",
///                 Type = "elastic-load-balancer",
///                 Value = "elb-333333.eu-west-1.elb.amazonaws.com",
///             },
///             new Aws.Route53.Inputs.GetTrafficPolicyDocumentEndpointInputArgs
///             {
///                 Id = "ap_endpoint",
///                 Type = "elastic-load-balancer",
///                 Value = "elb-444444.ap-northeast-2.elb.amazonaws.com",
///             },
///         },
///         Rules = new[]
///         {
///             new Aws.Route53.Inputs.GetTrafficPolicyDocumentRuleInputArgs
///             {
///                 Id = "na_rule",
///                 Type = "failover",
///                 Primary = new Aws.Route53.Inputs.GetTrafficPolicyDocumentRulePrimaryInputArgs
///                 {
///                     EndpointReference = "na_endpoint_a",
///                 },
///                 Secondary = new Aws.Route53.Inputs.GetTrafficPolicyDocumentRuleSecondaryInputArgs
///                 {
///                     EndpointReference = "na_endpoint_b",
///                 },
///             },
///             new Aws.Route53.Inputs.GetTrafficPolicyDocumentRuleInputArgs
///             {
///                 Id = "geoproximity_rule",
///                 Type = "geoproximity",
///                 GeoProximityLocations = new[]
///                 {
///                     new Aws.Route53.Inputs.GetTrafficPolicyDocumentRuleGeoProximityLocationInputArgs
///                     {
///                         Region = "aws:route53:us-west-1",
///                         Bias = "10",
///                         EvaluateTargetHealth = true,
///                         RuleReference = "na_rule",
///                     },
///                     new Aws.Route53.Inputs.GetTrafficPolicyDocumentRuleGeoProximityLocationInputArgs
///                     {
///                         Region = "aws:route53:eu-west-1",
///                         Bias = "10",
///                         EvaluateTargetHealth = true,
///                         EndpointReference = "eu_endpoint",
///                     },
///                     new Aws.Route53.Inputs.GetTrafficPolicyDocumentRuleGeoProximityLocationInputArgs
///                     {
///                         Region = "aws:route53:ap-northeast-2",
///                         Bias = "0",
///                         EvaluateTargetHealth = true,
///                         EndpointReference = "ap_endpoint",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleTrafficPolicy = new Aws.Route53.TrafficPolicy("example", new()
///     {
///         Name = "example",
///         Comment = "example comment",
///         Document = example.Apply(getTrafficPolicyDocumentResult => getTrafficPolicyDocumentResult.Json),
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
/// 		example, err := route53.GetTrafficPolicyDocument(ctx, &route53.GetTrafficPolicyDocumentArgs{
/// 			RecordType: pulumi.StringRef("A"),
/// 			StartRule:  pulumi.StringRef("geoproximity_rule"),
/// 			Endpoints: []route53.GetTrafficPolicyDocumentEndpoint{
/// 				{
/// 					Id:    "na_endpoint_a",
/// 					Type:  pulumi.StringRef("elastic-load-balancer"),
/// 					Value: pulumi.StringRef("elb-111111.us-west-1.elb.amazonaws.com"),
/// 				},
/// 				{
/// 					Id:    "na_endpoint_b",
/// 					Type:  pulumi.StringRef("elastic-load-balancer"),
/// 					Value: pulumi.StringRef("elb-222222.us-west-1.elb.amazonaws.com"),
/// 				},
/// 				{
/// 					Id:    "eu_endpoint",
/// 					Type:  pulumi.StringRef("elastic-load-balancer"),
/// 					Value: pulumi.StringRef("elb-333333.eu-west-1.elb.amazonaws.com"),
/// 				},
/// 				{
/// 					Id:    "ap_endpoint",
/// 					Type:  pulumi.StringRef("elastic-load-balancer"),
/// 					Value: pulumi.StringRef("elb-444444.ap-northeast-2.elb.amazonaws.com"),
/// 				},
/// 			},
/// 			Rules: []route53.GetTrafficPolicyDocumentRule{
/// 				{
/// 					Id:   "na_rule",
/// 					Type: pulumi.StringRef("failover"),
/// 					Primary: {
/// 						EndpointReference: pulumi.StringRef("na_endpoint_a"),
/// 					},
/// 					Secondary: {
/// 						EndpointReference: pulumi.StringRef("na_endpoint_b"),
/// 					},
/// 				},
/// 				{
/// 					Id:   "geoproximity_rule",
/// 					Type: pulumi.StringRef("geoproximity"),
/// 					GeoProximityLocations: []route53.GetTrafficPolicyDocumentRuleGeoProximityLocation{
/// 						{
/// 							Region:               pulumi.StringRef("aws:route53:us-west-1"),
/// 							Bias:                 pulumi.StringRef("10"),
/// 							EvaluateTargetHealth: pulumi.BoolRef(true),
/// 							RuleReference:        pulumi.StringRef("na_rule"),
/// 						},
/// 						{
/// 							Region:               pulumi.StringRef("aws:route53:eu-west-1"),
/// 							Bias:                 pulumi.StringRef("10"),
/// 							EvaluateTargetHealth: pulumi.BoolRef(true),
/// 							EndpointReference:    pulumi.StringRef("eu_endpoint"),
/// 						},
/// 						{
/// 							Region:               pulumi.StringRef("aws:route53:ap-northeast-2"),
/// 							Bias:                 pulumi.StringRef("0"),
/// 							EvaluateTargetHealth: pulumi.BoolRef(true),
/// 							EndpointReference:    pulumi.StringRef("ap_endpoint"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewTrafficPolicy(ctx, "example", &route53.TrafficPolicyArgs{
/// 			Name:     pulumi.String("example"),
/// 			Comment:  pulumi.String("example comment"),
/// 			Document: pulumi.String(example.Json),
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetTrafficPolicyDocumentArgs;
/// import com.pulumi.aws.route53.TrafficPolicy;
/// import com.pulumi.aws.route53.TrafficPolicyArgs;
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
///         final var example = Route53Functions.getTrafficPolicyDocument(GetTrafficPolicyDocumentArgs.builder()
///             .recordType("A")
///             .startRule("geoproximity_rule")
///             .endpoints(
///                 GetTrafficPolicyDocumentEndpointArgs.builder()
///                     .id("na_endpoint_a")
///                     .type("elastic-load-balancer")
///                     .value("elb-111111.us-west-1.elb.amazonaws.com")
///                     .build(),
///                 GetTrafficPolicyDocumentEndpointArgs.builder()
///                     .id("na_endpoint_b")
///                     .type("elastic-load-balancer")
///                     .value("elb-222222.us-west-1.elb.amazonaws.com")
///                     .build(),
///                 GetTrafficPolicyDocumentEndpointArgs.builder()
///                     .id("eu_endpoint")
///                     .type("elastic-load-balancer")
///                     .value("elb-333333.eu-west-1.elb.amazonaws.com")
///                     .build(),
///                 GetTrafficPolicyDocumentEndpointArgs.builder()
///                     .id("ap_endpoint")
///                     .type("elastic-load-balancer")
///                     .value("elb-444444.ap-northeast-2.elb.amazonaws.com")
///                     .build())
///             .rules(
///                 GetTrafficPolicyDocumentRuleArgs.builder()
///                     .id("na_rule")
///                     .type("failover")
///                     .primary(GetTrafficPolicyDocumentRulePrimaryArgs.builder()
///                         .endpointReference("na_endpoint_a")
///                         .build())
///                     .secondary(GetTrafficPolicyDocumentRuleSecondaryArgs.builder()
///                         .endpointReference("na_endpoint_b")
///                         .build())
///                     .build(),
///                 GetTrafficPolicyDocumentRuleArgs.builder()
///                     .id("geoproximity_rule")
///                     .type("geoproximity")
///                     .geoProximityLocations(
///                         GetTrafficPolicyDocumentRuleGeoProximityLocationArgs.builder()
///                             .region("aws:route53:us-west-1")
///                             .bias("10")
///                             .evaluateTargetHealth(true)
///                             .ruleReference("na_rule")
///                             .build(),
///                         GetTrafficPolicyDocumentRuleGeoProximityLocationArgs.builder()
///                             .region("aws:route53:eu-west-1")
///                             .bias("10")
///                             .evaluateTargetHealth(true)
///                             .endpointReference("eu_endpoint")
///                             .build(),
///                         GetTrafficPolicyDocumentRuleGeoProximityLocationArgs.builder()
///                             .region("aws:route53:ap-northeast-2")
///                             .bias("0")
///                             .evaluateTargetHealth(true)
///                             .endpointReference("ap_endpoint")
///                             .build())
///                     .build())
///             .build());
///
///         var exampleTrafficPolicy = new TrafficPolicy("exampleTrafficPolicy", TrafficPolicyArgs.builder()
///             .name("example")
///             .comment("example comment")
///             .document(example.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleTrafficPolicy:
///     type: aws:route53:TrafficPolicy
///     name: example
///     properties:
///       name: example
///       comment: example comment
///       document: ${example.json}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:route53:getTrafficPolicyDocument
///       arguments:
///         recordType: A
///         startRule: geoproximity_rule
///         endpoints:
///           - id: na_endpoint_a
///             type: elastic-load-balancer
///             value: elb-111111.us-west-1.elb.amazonaws.com
///           - id: na_endpoint_b
///             type: elastic-load-balancer
///             value: elb-222222.us-west-1.elb.amazonaws.com
///           - id: eu_endpoint
///             type: elastic-load-balancer
///             value: elb-333333.eu-west-1.elb.amazonaws.com
///           - id: ap_endpoint
///             type: elastic-load-balancer
///             value: elb-444444.ap-northeast-2.elb.amazonaws.com
///         rules:
///           - id: na_rule
///             type: failover
///             primary:
///               endpointReference: na_endpoint_a
///             secondary:
///               endpointReference: na_endpoint_b
///           - id: geoproximity_rule
///             type: geoproximity
///             geoProximityLocations:
///               - region: aws:route53:us-west-1
///                 bias: 10
///                 evaluateTargetHealth: true
///                 ruleReference: na_rule
///               - region: aws:route53:eu-west-1
///                 bias: 10
///                 evaluateTargetHealth: true
///                 endpointReference: eu_endpoint
///               - region: aws:route53:ap-northeast-2
///                 bias: 0
///                 evaluateTargetHealth: true
///                 endpointReference: ap_endpoint
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_route53_get_traffic_policy_document_get_traffic_policy_document_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrafficPolicyDocumentResult> getTrafficPolicyDocument(
  GetTrafficPolicyDocumentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getTrafficPolicyDocument:getTrafficPolicyDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrafficPolicyDocumentResult.fromMap(result);
}

/// `aws.route53.Zone` provides details about a specific Route 53 Hosted Zone.
///
/// This data source allows to find a Hosted Zone ID given Hosted Zone name and certain search criteria.
///
/// ## Example Usage
///
/// The following example shows how to get a Hosted Zone from its name and from this data how to create a Record Set.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const selected = aws.route53.getZone({
///     name: "test.com.",
///     privateZone: true,
/// });
/// const www = new aws.route53.Record("www", {
///     zoneId: selected.then(selected => selected.zoneId),
///     name: selected.then(selected => `www.${selected.name}`),
///     type: aws.route53.RecordType.A,
///     ttl: 300,
///     records: ["10.0.0.1"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// selected = aws.route53.get_zone(name="test.com.",
///     private_zone=True)
/// www = aws.route53.Record("www",
///     zone_id=selected.zone_id,
///     name=f"www.{selected.name}",
///     type=aws.route53.RecordType.A,
///     ttl=300,
///     records=["10.0.0.1"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var selected = Aws.Route53.GetZone.Invoke(new()
///     {
///         Name = "test.com.",
///         PrivateZone = true,
///     });
///
///     var www = new Aws.Route53.Record("www", new()
///     {
///         ZoneId = selected.Apply(getZoneResult => getZoneResult.ZoneId),
///         Name = $"www.{selected.Apply(getZoneResult => getZoneResult.Name)}",
///         Type = Aws.Route53.RecordType.A,
///         Ttl = 300,
///         Records = new[]
///         {
///             "10.0.0.1",
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
/// 		selected, err := route53.LookupZone(ctx, &route53.LookupZoneArgs{
/// 			Name:        pulumi.StringRef("test.com."),
/// 			PrivateZone: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewRecord(ctx, "www", &route53.RecordArgs{
/// 			ZoneId: pulumi.String(selected.ZoneId),
/// 			Name:   pulumi.Sprintf("www.%v", selected.Name),
/// 			Type:   pulumi.String(route53.RecordTypeA),
/// 			Ttl:    pulumi.Int(300),
/// 			Records: pulumi.StringArray{
/// 				pulumi.String("10.0.0.1"),
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetZoneArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
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
///         final var selected = Route53Functions.getZone(GetZoneArgs.builder()
///             .name("test.com.")
///             .privateZone(true)
///             .build());
///
///         var www = new Record("www", RecordArgs.builder()
///             .zoneId(selected.zoneId())
///             .name(String.format("www.%s", selected.name()))
///             .type("A")
///             .ttl(300)
///             .records("10.0.0.1")
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
///       zoneId: ${selected.zoneId}
///       name: www.${selected.name}
///       type: A
///       ttl: '300'
///       records:
///         - 10.0.0.1
/// variables:
///   selected:
///     fn::invoke:
///       function: aws:route53:getZone
///       arguments:
///         name: test.com.
///         privateZone: true
/// ```
///
///
/// The following example shows how to get a Hosted Zone from a unique combination of its tags:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const selected = aws.route53.getZone({
///     tags: {
///         scope: "local",
///         category: "api",
///     },
/// });
/// export const localApiZone = selected.then(selected => selected.zoneId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// selected = aws.route53.get_zone(tags={
///     "scope": "local",
///     "category": "api",
/// })
/// pulumi.export("localApiZone", selected.zone_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var selected = Aws.Route53.GetZone.Invoke(new()
///     {
///         Tags =
///         {
///             { "scope", "local" },
///             { "category", "api" },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["localApiZone"] = selected.Apply(getZoneResult => getZoneResult.ZoneId),
///     };
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
/// 		selected, err := route53.LookupZone(ctx, &route53.LookupZoneArgs{
/// 			Tags: map[string]interface{}{
/// 				"scope":    "local",
/// 				"category": "api",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("localApiZone", selected.ZoneId)
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetZoneArgs;
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
///         final var selected = Route53Functions.getZone(GetZoneArgs.builder()
///             .tags(Map.ofEntries(
///                 Map.entry("scope", "local"),
///                 Map.entry("category", "api")
///             ))
///             .build());
///
///         ctx.export("localApiZone", selected.zoneId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   selected:
///     fn::invoke:
///       function: aws:route53:getZone
///       arguments:
///         tags:
///           scope: local
///           category: api
/// outputs:
///   localApiZone: ${selected.zoneId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_route53_get_zone_get_zone_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZoneResult> getZone(
  GetZoneArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getZone:getZone',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZoneResult.fromMap(result);
}

/// This resource can be useful for getting back a list of Route53 Hosted Zone IDs for a Region.
///
/// ## Example Usage
///
/// The following example retrieves a list of all Hosted Zone IDs.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const all = aws.route53.getZones({});
/// export const example = all.then(all => all.ids);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// all = aws.route53.get_zones()
/// pulumi.export("example", all.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Aws.Route53.GetZones.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["example"] = all.Apply(getZonesResult => getZonesResult.Ids),
///     };
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
/// 		all, err := route53.GetZones(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("example", all.Ids)
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
/// import com.pulumi.aws.route53.Route53Functions;
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
///         final var all = Route53Functions.getZones(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         ctx.export("example", all.ids());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: aws:route53:getZones
///       arguments: {}
/// outputs:
///   example: ${all.ids}
/// ```
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones({
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getZones:getZones',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
